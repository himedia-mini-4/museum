package com.team4.museum.controller.action.qna;

import static com.team4.museum.controller.action.member.LoginAjaxAction.isAdmin;

import com.team4.museum.controller.action.AjaxAction;
import com.team4.museum.dao.QnaDao;
import com.team4.museum.util.ajax.AjaxException;
import com.team4.museum.util.ajax.AjaxResult;
import com.team4.museum.vo.QnaVO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class QnaReplyAjaxAction extends AjaxAction {

	protected AjaxResult handleAjaxRequest(HttpServletRequest request, HttpServletResponse response)
			throws AjaxException {
		// 로그인에 필요한 정보를 받아옴 (qseq)
		// mustGetInt() 호출 시 요청한 파라미터가 없거나 정수로 변환할 수 없으면 AjaxException을 던짐
		int qseq = mustGetInt("qseq");

		// 사용자가 관리자가 아닌 경우
		if (!isAdmin(request)) {
			return forbidden("접근 권한이 없습니다");
		}

		// 입력된 'qseq'에 해당하는 문의글이 없는 경우
		QnaDao qdao = QnaDao.getInstance();
		QnaVO qnaVO = qdao.getQna(qseq);
		if (qnaVO == null) {
			return noContent("해당 문의가 존재하지 않습니다");
		}

		try {
			// 답변을 업데이트
			qdao.updateQnaReply(qseq, request.getParameter("reply"));
		} catch (Exception e) {
			// 업데이트에 실패한 경우
			e.printStackTrace();
			return internalServerError("답변 업데이트에 실패했습니다");
		}

		return created("답변이 업데이트되었습니다", "museum.do?command=qnaView&qseq=" + qseq);
	}

}
