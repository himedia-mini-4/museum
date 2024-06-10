package com.team4.museum.controller.action.qna;

import static com.team4.museum.controller.action.qna.QnaAccessValidator.RESTRICT;
import static com.team4.museum.controller.action.qna.QnaAccessValidator.getValidatedQna;

import java.io.IOException;

import com.team4.museum.controller.action.Action;
import com.team4.museum.vo.QnaVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class QnaViewAction implements Action {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 'RESTRICT' 접근 조건을 만족하는 문의글 정보를 가져옴
		QnaVO qnaVO = getValidatedQna(request, RESTRICT);

		// 'qnaVO'가 null 이면 잘못된 요청임을 표시하고 뒤로 가기 실행
		if (qnaVO == null) {
			response.setContentType("text/html; charset=UTF-8");
			response.getWriter().write("<script>alert('잘못된 요청입니다.'); history.back();</script>");
			return;
		}

		// 'qnaVO'를 'qnaView.jsp'로 전달
		request.setAttribute("qnaVO", qnaVO);
		request.getRequestDispatcher("/WEB-INF/views/qna/qnaView.jsp").forward(request, response);
	}

}
