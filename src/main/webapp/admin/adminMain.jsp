<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/header.jsp" %>
<ul class="admin-main-menu">
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

<%@ include file="/footer.jsp" %>