<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="pagination">
	<a class="page-navi prev" href="${pagination.getUrl(pagination.prevPage)}">이전</a>
	<div class="page-links">
		<c:if test="${pagination.needFirstLink()}">
			<a class="page-link" href="${pagination.getUrl(1)}">1</a>
		</c:if>
		<c:if test="${pagination.needPrevSkip()}">
			<span class="page-link skip"></span>
		</c:if>
		<c:forEach begin="${pagination.begin}" end="${pagination.end}" var="page">
			<c:choose>
				<c:when test="${page == pagination.currentPage}">
					<span class="page-link active">${page}</span>
				</c:when>
				<c:when test="${pagination.isHidable(page)}">
					<a class="page-link hidable" href="${pagination.getUrl(page)}">${page}</a>
				</c:when>
				<c:otherwise>
					<a class="page-link" href="${pagination.getUrl(page)}">${page}</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${pagination.needNextSkip()}">
			<span class="page-link skip"></span>
		</c:if>
		<c:if test="${pagination.needLastLink()}">
			<a class="page-link" href="${pagination.getUrl(pagination.maxPage)}">${pagination.maxPage}</a>
		</c:if>
	</div>
	<a class="page-navi next" href="${pagination.getUrl(pagination.nextPage)}">다음</a>
</div>