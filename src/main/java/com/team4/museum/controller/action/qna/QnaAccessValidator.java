package com.team4.museum.controller.action.qna;

import static com.team4.museum.controller.action.member.LoginAjaxAction.isAdmin;
import static com.team4.museum.controller.action.qna.QnaPwdCheckAjaxAction.isAlreadyPwdChecked;

import com.team4.museum.dao.QnaDao;
import com.team4.museum.vo.QnaVO;

import jakarta.annotation.Nonnull;
import jakarta.servlet.http.HttpServletRequest;

@FunctionalInterface
interface QnaAccessValidator {
	public boolean validate(@Nonnull QnaVO qnaVO, HttpServletRequest request);

	// 기본 접근 권한 검사자

	/** 개인 : 작성자만 접근 가능 (글 수정 등) */
	public static final QnaAccessValidator PERSONAL = (v, r) -> isAlreadyPwdChecked(r, v.getQseq());

	/** 허가 : 작성자 및 관리자만 접근 가능 (글 삭제 등) */
	public static final QnaAccessValidator PRIVILEGE = (v, r) -> PERSONAL.validate(v, r) || isAdmin(r);

	/** 제한 : 공개글이거나 {허가}된 접근 가능 (글 조회 등) */
	public static final QnaAccessValidator RESTRICT = (v, r) -> PRIVILEGE.validate(v, r) || v.isPublic();

	/** 공개 : 누구나 접근 가능 (글 목록 조회 등) */
	public static final QnaAccessValidator PUBLIC = (v, r) -> true;

	/**
	 * 주어진 접근 조건을 만족하는 문의글 정보를 가져옴
	 * 
	 * @param request   요청 객체
	 * @param validator 접근 조건 검사자
	 * @return 접근 조건을 만족하는 문의글 정보
	 */
	public static QnaVO getValidatedQna(HttpServletRequest request, QnaAccessValidator validator) {
		// 'qseq' 파라미터가 없는 경우
		String qseqParam = request.getParameter("qseq");
		if (qseqParam == null || qseqParam.equals("") || !qseqParam.matches("^[0-9]*$")) {
			return null;
		}

		// 'qseq'에 해당하는 문의글 정보가 없는 경우
		QnaVO qnaVO = QnaDao.getInstance().getQna(Integer.parseInt(qseqParam));
		if (qnaVO == null) {
			return null;
		}

		// 'qnaVO'가 필터링 조건을 만족하지 않는 경우
		if (!validator.validate(qnaVO, request)) {
			return null;
		}

		return qnaVO;
	}
}