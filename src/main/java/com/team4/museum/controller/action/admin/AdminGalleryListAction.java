package com.team4.museum.controller.action.admin;

import java.io.IOException;
import java.util.List;

import com.team4.museum.dao.MemberGalleryDao;
import com.team4.museum.util.Pagination;
import com.team4.museum.vo.MemberGalleryVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminGalleryListAction implements AdminAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (!checkAdmin(request, response)) {
			return;
		}
		MemberGalleryDao mgdao = MemberGalleryDao.getInstance();
		Pagination pagination = Pagination.with(request, mgdao.getAllCount(), "command=adminGalleryList");
		String searchWord = request.getParameter("searchWord");

		List<MemberGalleryVO> galleryList = null;
		if (searchWord != null) {
			pagination.setItemCount(mgdao.getSearchCount(searchWord));
			pagination.setUrlTemplate("museum.do?command=adminGalleryList&page=%d&searchWord=" + searchWord);
			galleryList = mgdao.searchGallery(pagination, searchWord);
			request.setAttribute("searchWord", searchWord);
		} else {
			galleryList = mgdao.getAllGallery(pagination);
		}

		request.setAttribute("galleryList", galleryList);
		request.getRequestDispatcher("/WEB-INF/views/admin/adminGalleryList.jsp").forward(request, response);
	}

}
