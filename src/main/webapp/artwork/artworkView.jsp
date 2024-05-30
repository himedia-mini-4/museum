<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/header.jsp"%>

<section class="artwork-view">
	<div class="artwork-view-header">
		<div class="artwork-view-title">
			<span>${artwork.artist} |&nbsp;</span> <span>${artwork.name} |&nbsp;</span> <span>${artwork.year}</span>
		</div>
		<div class="artwork-view-title-side">
			<input type="button" value="나의 갤러리 +" onclick="" />
			<input type="button" value="수정" class="hidden" />
			<input type="button" value="목록으로" onclick="location.href='museum.do?command=artwork'" />
		</div>
	</div>
	<div class="artwork-view-img">
		<img alt="artwork-image" src="images/artwork/${artwork.savefilename}">
		<span> ※ 예술품 이미지는 저작권법에 따라 복제뿐만 아니라 전송, 배포 등 어떠한 방식으로든 무단 이용할 수 없으며, 영리적인 목적으로 사용할 경우 원작자에게 별도의 동의를 받아야함을
			알려드립니다. </span>
	</div>
	<div class="artwork-view-info">
		<ul>
			<li><span>작가명</span> <span>${artwork.artist}</span></li>
			<li><span>작품명</span> <span>${artwork.name}</span></li>
			<li><span>제작연도</span> <span>${artwork.year}</span></li>
			<li><span>재료</span> <span>${artwork.material}</span></li>
			<li><span>규격</span> <span>${artwork.size}</span></li>
			<li><span>부문</span> <span>${artwork.category}</span></li>
			<li><span>전시상태</span> <span>${artwork.displayyn}</span></li>
		</ul>
	</div>
	<div class="artwork-view-content">
		<p>${artwork.content}</p>
	</div>
</section>

<%@ include file="/footer.jsp"%>