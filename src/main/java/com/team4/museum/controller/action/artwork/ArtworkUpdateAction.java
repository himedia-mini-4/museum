package com.team4.museum.controller.action.artwork;

import java.io.IOException;

import com.team4.museum.controller.action.Action;
import com.team4.museum.dao.ArtworkDao;
import com.team4.museum.util.ArtworkCategory;
import com.team4.museum.vo.ArtworkVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ArtworkUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArtworkVO avo = ArtworkDao.getInstance().get(Integer.parseInt(request.getParameter("aseq")));

		request.setAttribute("artwork", avo);
		request.setAttribute("ArtworkCategoryValues", ArtworkCategory.values());
		request.getRequestDispatcher("/WEB-INF/views/artwork/artworkUpdateForm.jsp").forward(request, response);
	}

}
