package com.team4.museum.controller.action.admin;

import java.io.IOException;
import java.util.List;

import com.team4.museum.controller.action.Action;
import com.team4.museum.dao.QnaDao;
import com.team4.museum.util.Pagination;
import com.team4.museum.vo.QnaVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminQnaListAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnaDao qdao = QnaDao.getInstance();

		Pagination pagination = Pagination
				.fromRequest(request)
				.setUrlTemplate("museum.do?command=adminQnaList&page=%d")
				.setItemCount(qdao.getAllCount())
				.setItemsPerPage(10);

		request.setAttribute("pagination", pagination);
		request.setAttribute("qnaList", qdao.selectQna(pagination));
		request.getRequestDispatcher("admin/adminQnaList.jsp").forward(request, response);
	}

}