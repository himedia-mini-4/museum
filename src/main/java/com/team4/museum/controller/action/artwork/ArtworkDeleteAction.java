package com.team4.museum.controller.action.artwork;

import java.io.IOException;

import com.team4.museum.controller.action.Action;
import com.team4.museum.dao.ArtworkDao;
import com.team4.museum.util.Security;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ArtworkDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 관리자 권한이 없으면 404 페이지로 포워딩
		if (!Security.adminOr404Forward(request, response)) {
			return;
		}

		ArtworkDao.getInstance().deleteArtwork(Integer.parseInt(request.getParameter("aseq")));
		request.getRequestDispatcher("museum.do?command=artworkList").forward(request, response);
	}

}
