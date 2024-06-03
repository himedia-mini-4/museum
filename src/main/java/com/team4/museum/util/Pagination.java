package com.team4.museum.util;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class Pagination {

	private int itemCount;
	private int itemsPerPage = 5;
	private int pageRange = 5;
	private int currentPage;

	public int getItemCount() {
		return itemCount;
	}

	public Pagination setItemCount(int itemCount) {
		this.itemCount = itemCount;
		return this;
	}

	public int getItemsPerPage() {
		return itemsPerPage;
	}

	public Pagination setItemsPerPage(int itemsPerPage) {
		this.itemsPerPage = itemsPerPage;
		return this;
	}

	public int getPageRange() {
		return pageRange;
	}

	public Pagination setPageRange(int pageRange) {
		this.pageRange = pageRange;
		return this;
	}

	public int getCurrentPage() {
		return fitPage(currentPage);
	}

	public Pagination setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
		return this;
	}

	private int fitPage(int page) {
		return Math.min(getMaxPage(), Math.max(1, page));
	}

	public int getMaxPage() {
		return (int) Math.ceil((double) itemCount / itemsPerPage);
	}

	public int getLimit() {
		return itemsPerPage;
	}

	public int getOffset() {
		return (getCurrentPage() - 1) * 5;
	}

	public int getBegin() {
		return fitPage(Math.min(currentPage - pageRange / 2, getMaxPage() - pageRange - 1));
	}

	public int getEnd() {
		return fitPage(Math.max(currentPage + pageRange / 2, pageRange + 2));
	}

	public int getPrevPage() {
		return fitPage(getBegin() - 1);
	}

	public int getNextPage() {
		return fitPage(getEnd() + 1);
	}

	public boolean needFirstLink() {
		return getBegin() > 1;
	}

	public boolean needLastLink() {
		return getEnd() < getMaxPage();
	}

	public boolean needPrevSkip() {
		return getBegin() > 2;
	}

	public boolean needNextSkip() {
		return getEnd() < getMaxPage() - 1;
	}

	public static Pagination fromRequest(HttpServletRequest request) {
		int page = 1;
		HttpSession session = request.getSession();

		String pageStr = request.getParameter("page");
		if (pageStr != null) {
			page = Integer.parseInt(pageStr);
		} else if (session.getAttribute("page") != null) {
			page = (int) session.getAttribute("page");
		}
		session.setAttribute("page", page);

		return new Pagination().setCurrentPage(page);
	}
}
