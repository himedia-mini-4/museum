<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<nav class="admin-sub-menu">
	<ul>
		<li>
			<a href="museum.do?command=adminMemberList">회원 목록</a>
		</li>
		<li>
			<a href="museum.do?command=adminArtworkList">예술품 목록</a>
		</li>
		<li>
			<a href="museum.do?command=">소식지 목록</a>
		</li>
		<li>
			<a href="museum.do?command=adminUserGalleryList">이용자 갤러리 목록</a>
		</li>
		<li>
			<a href="museum.do?command=adminQnaList">문의사항 목록</a>
		</li>
	</ul>
</nav>