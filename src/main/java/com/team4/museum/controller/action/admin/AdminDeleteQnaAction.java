package com.team4.museum.controller.action.admin;

import java.io.IOException;

import com.team4.museum.controller.action.Action;
import com.team4.museum.dao.QnaDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminDeleteQnaAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] qseqList = request.getParameter("memberIds").split(",");

		for (String qseq : qseqList) {
			QnaDao.getInstance().deleteQna(Integer.parseInt(qseq));
		}

		request.getRequestDispatcher("museum.do?command=adminQnaList").forward(request, response);
	}

}