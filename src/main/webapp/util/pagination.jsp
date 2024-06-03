<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="paginationPrefix" value="${param.paginationPrefix}" />
<div class="pagination">
	<a class="page-navi prev" href="${paginationPrefix}${pagination.prevPage}">이전</a>
	<div class="page-links">
		<c:if test="${pagination.needFirstLink()}">
			<a class="page-link" href="${paginationPrefix}1">1</a>
		</c:if>
		<c:if test="${pagination.needPrevSkip()}">
			<span class="page-link skip"></span>
		</c:if>
		<c:forEach begin="${pagination.begin}" end="${pagination.end}" var="page">
			<c:choose>
				<c:when test="${page == pagination.currentPage}">
					<span class="page-link active">${page}</span>
				</c:when>
				<c:otherwise>
					<a class="page-link" href="${paginationPrefix}${page}">${page}</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${pagination.needNextSkip()}">
			<span class="page-link skip"></span>
		</c:if>
		<c:if test="${pagination.needLastLink()}">
			<a class="page-link" href="${paginationPrefix}${pagination.maxPage}">${pagination.maxPage}</a>
		</c:if>
	</div>
	<a class="page-navi next" href="${paginationPrefix}${pagination.nextPage}">다음</a>
</div>