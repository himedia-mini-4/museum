package com.team4.museum.controller.action.admin;

import java.io.IOException;
import java.util.List;

import com.team4.museum.controller.action.Action;
import com.team4.museum.dao.NoticeDao;
import com.team4.museum.util.Pagination;
import com.team4.museum.vo.NoticeVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminNoticeListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NoticeDao ndao = NoticeDao.getInstance();
		String searchWord = request.getParameter("searchWord");
		String noticeCategory = request.getParameter("noticeCategory");

		Pagination pagination = Pagination.with(request, ndao.getAllCount(), "command=adminNoticeList");

		List<NoticeVO> noticeList = null;
		if (searchWord != null) {
			pagination.setItemCount(ndao.getSearchCount(searchWord));
			pagination.setUrlTemplate("museum.do?command=adminNoticeList&page=%d&searchWord=" + searchWord);
			noticeList = ndao.searchNoticeList(pagination, searchWord);
		} else if (noticeCategory != null) {
			pagination.setItemCount(ndao.getCategoryCount(noticeCategory));
			pagination.setUrlTemplate("museum.do?command=adminNoticeList&page=%d&noticeCategory=" + noticeCategory);
			noticeList = ndao.selectCategoryNotice(noticeCategory, pagination);
			request.setAttribute("selectedCategory", noticeCategory);
		} else {
			noticeList = ndao.selectNoticeList(pagination);
		}

		request.setAttribute("noticeList", noticeList);

		request.getRequestDispatcher("/WEB-INF/views/admin/adminNoticeList.jsp").forward(request, response);
	}

}
