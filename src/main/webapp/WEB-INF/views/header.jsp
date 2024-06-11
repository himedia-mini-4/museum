<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.team4.museum.util.NoticeCategory"%>
<%@ page import="com.team4.museum.util.ArtworkCategory"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Museum</title>
<!-- CSS -->
<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/variable/pretendardvariable-gov-dynamic-subset.min.css" />
<link rel="stylesheet" href="static/stylesheet/reset.css">
<link rel="stylesheet" href="static/stylesheet/header.css">
<link rel="stylesheet" href="static/stylesheet/footer.css">
<link rel="stylesheet" href="static/stylesheet/pagination.css">
<c:forEach items="${paramValues.stylesheet}" var="path">
	<link rel="stylesheet" href="${path}">
</c:forEach>
<!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.drawsvg/1/jquery.drawsvg.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
<script src="https://unpkg.com/aos@2.2/dist/aos.js"></script>
<script src="http://cdn.jsdelivr.net/vivus/0.2.1/vivus.min.js"></script>
<script src="static/script/header.js"></script>
<script src="static/script/ajax.js"></script>
<!-- Load other scripts -->
<c:forEach items="${paramValues.script}" var="path">
	<script src="${path}"></script>
</c:forEach>
</head>
<body>
	<header>
		<div class="header_util">
			<ul class="util-link">
				<li><a href="https://www.museum.go.kr/site/child/home" target="_blank">어린이박물관</a></li>
				<li><a href="https://www.museum.go.kr/curator" target="_blank">학예사자격증</a></li>
				<li><a href="http://webzine.museum.go.kr" target="_blank">박물관신문</a></li>
				<li><a class="lang-select" href="javascript:;"> Language </a></li>
				<li><a href="https://blog.naver.com/100museum" target="_blank" title="국립중앙박물관 네이버 블로그 새 창으로 열림" class="naver">
						<img src="static/image/header/ico_header_item1.png" alt="블로그">
					</a></li>
				<li><a href="https://twitter.com/The_NMK" target="_blank" title="국립중앙박물관 X 새 창으로 열림" class="twitter">
						<img src="static/image/header/ico_header_item2.png" alt="X">
					</a></li>
				<li><a href="https://www.facebook.com/NationalMuseumofKorea/" target="_blank" title="국립중앙박물관 페이스북 새 창으로 열림" class="facebook">
						<img src="static/image/header/ico_header_item3.png" alt="페이스북">
					</a></li>
				<li><a href="https://www.instagram.com/nationalmuseumofkorea/" target="_blank" title="국립중앙박물관 인스타그램 새 창으로 열림" class="instagram">
						<img src="static/image/header/ico_header_item4.png" alt="인스타그램">
					</a></li>
				<li><a href="https://www.youtube.com/user/koreanmuseum" target="_blank" title="국립중앙박물관 유튜브 새 창으로 열림" class="youtube">
						<img src="static/image/header/ico_header_item5.png" alt="유튜브">
					</a></li>
				<li><a href="https://audioclip.naver.com/channels/2320" target="_blank" title="국립중앙박물관 네이버 오디오클립 새 창으로 열림" class="audioclip">
						<img src="static/image/header/ico_header_item6.png" alt="오디오클립">
					</a></li>
			</ul>
		</div>
		<nav>
			<h1 data-aos="fade-in" data-aos-offset="200" data-aos-easing="ease-in">
				<svg id="header_logo_v" width="300" height="50" viewBox="0 0 300 50" xmlns="http://www.w3.org/2000/svg" onclick="location.href='museum.do?command=index'">


					<g stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#737373" stroke-width="0.2mm" fill="#000" style="stroke:#000;stroke-width:0.2mm;fill:#000">
					 
  					<!-- 태극기 배경 -->
  <circle cx="20" cy="20" r="20" fill="#023859" />
  <circle cx="20" cy="20" r="14" fill="#FFFFFF" />
  
  <!-- 태극기 모양 -->
  <path d="M20 10 A 10 10 0 0 0 30 20 L 30 30 A 10 10 0 0 1 20 30 Z" fill="#D9043D" />
  <path d="M20 10 A 10 10 0 0 1 30 20 L 20 20 Z" fill="#023859" />
  <path d="M20 30 A 10 10 0 0 1 10 20 L 20 20 Z" fill="#FFFFFF" />
		

	
					<path class="logo03" id="logo_outline03" data-duration="100" stroke="#737373" fill="#737373" fill-opacity="0"
						d="M 20.303 0 L 20.303 26.045 L 18.018 26.045 L 18.018 0 L 20.303 0 Z M 9.781 8.49 A 7.65 7.65 0 0 0 7.881 8.262 Q 6.035 8.262 4.585 9.023 Q 3.135 9.785 2.314 11.147 A 5.565 5.565 0 0 0 1.791 12.291 A 6.225 6.225 0 0 0 1.494 14.238 A 7.01 7.01 0 0 0 1.507 14.665 A 5.764 5.764 0 0 0 2.314 17.329 A 5.671 5.671 0 0 0 4.585 19.453 A 6.396 6.396 0 0 0 5.98 19.987 A 7.65 7.65 0 0 0 7.881 20.215 Q 9.727 20.215 11.177 19.453 Q 12.627 18.691 13.447 17.329 A 5.565 5.565 0 0 0 13.971 16.185 A 6.225 6.225 0 0 0 14.268 14.238 A 7.01 7.01 0 0 0 14.255 13.812 A 5.764 5.764 0 0 0 13.447 11.147 A 5.671 5.671 0 0 0 11.177 9.023 A 6.396 6.396 0 0 0 9.781 8.49 Z M 15.498 4.189 L 15.498 6.094 L 0 6.094 L 0 4.189 L 15.498 4.189 Z M 7.881 10.195 A 4.834 4.834 0 0 0 6.608 10.358 A 4.143 4.143 0 0 0 5.728 10.708 Q 4.775 11.221 4.233 12.144 A 3.959 3.959 0 0 0 3.705 13.878 A 4.83 4.83 0 0 0 3.691 14.238 Q 3.691 15.41 4.233 16.318 Q 4.775 17.227 5.728 17.739 A 4.305 4.305 0 0 0 7.367 18.227 A 5.275 5.275 0 0 0 7.881 18.252 A 4.834 4.834 0 0 0 9.153 18.09 A 4.143 4.143 0 0 0 10.034 17.739 Q 10.986 17.227 11.528 16.318 Q 12.07 15.41 12.07 14.238 A 4.333 4.333 0 0 0 11.884 12.95 A 3.816 3.816 0 0 0 11.528 12.144 A 3.774 3.774 0 0 0 10.034 10.708 A 4.305 4.305 0 0 0 8.394 10.22 A 5.275 5.275 0 0 0 7.881 10.195 Z M 8.994 0.322 L 8.994 5.068 L 6.709 5.068 L 6.709 0.322 L 8.994 0.322 Z M 24.668 10.752 L 24.668 12.656 L 19.775 12.656 L 19.775 10.752 L 24.668 10.752 Z"
						vector-effect="non-scaling-stroke" />	
						
						
					<path class="logo04" id="logo_outline04" data-duration="100" stroke="#737373" fill="#737373" fill-opacity="0"
						d="M 20.508 0 L 20.508 26.104 L 18.193 26.104 L 18.193 0 L 20.508 0 Z M 10.093 3.149 A 5.599 5.599 0 0 0 6.651 2.021 A 5.599 5.599 0 0 0 3.208 3.149 A 6.61 6.61 0 0 0 1.782 4.621 A 8.598 8.598 0 0 0 0.85 6.328 A 10.778 10.778 0 0 0 0.181 8.735 A 14.795 14.795 0 0 0 0 11.104 A 14.835 14.835 0 0 0 0.175 13.434 A 10.801 10.801 0 0 0 0.85 15.879 A 8.879 8.879 0 0 0 1.52 17.192 A 6.649 6.649 0 0 0 3.208 19.043 A 5.648 5.648 0 0 0 6.651 20.156 A 5.648 5.648 0 0 0 10.093 19.043 A 6.508 6.508 0 0 0 11.546 17.545 A 8.546 8.546 0 0 0 12.451 15.879 A 10.778 10.778 0 0 0 13.12 13.472 A 14.795 14.795 0 0 0 13.301 11.104 A 14.835 14.835 0 0 0 13.126 8.773 A 10.801 10.801 0 0 0 12.451 6.328 A 8.972 8.972 0 0 0 11.789 5.027 A 6.769 6.769 0 0 0 10.093 3.149 Z M 6.651 4.072 Q 5.361 4.072 4.351 4.951 A 4.883 4.883 0 0 0 3.369 6.143 Q 3.031 6.708 2.783 7.412 Q 2.227 8.994 2.227 11.104 A 13.235 13.235 0 0 0 2.349 12.947 A 9.642 9.642 0 0 0 2.783 14.78 A 7.073 7.073 0 0 0 3.305 15.947 Q 3.678 16.603 4.166 17.073 A 4.217 4.217 0 0 0 4.351 17.241 Q 5.361 18.105 6.651 18.105 Q 7.94 18.105 8.95 17.241 A 4.699 4.699 0 0 0 9.896 16.116 Q 10.257 15.529 10.518 14.78 A 9.642 9.642 0 0 0 10.952 12.947 A 13.235 13.235 0 0 0 11.074 11.104 A 13.585 13.585 0 0 0 10.968 9.359 Q 10.848 8.434 10.593 7.637 A 8.197 8.197 0 0 0 10.518 7.412 Q 10.004 5.951 9.115 5.09 A 4.37 4.37 0 0 0 8.965 4.951 A 3.391 3.391 0 0 0 6.651 4.072 Z"
						vector-effect="non-scaling-stroke" />	
					<path class="logo05" id="logo_outline05" data-duration="100" stroke="#737373" fill="#737373" fill-opacity="0" d="M 12.041 2.578 L 12.041 19.512 L 0 19.512 L 0 2.578 L 12.041 2.578 Z M 19.951 0 L 19.951 26.104 L 17.637 26.104 L 17.637 0 L 19.951 0 Z M 2.256 4.424 L 2.256 17.637 L 9.785 17.637 L 9.785 4.424 L 2.256 4.424 Z" vector-effect="non-scaling-stroke"/>
					<path class="logo06" id="logo_outline06" data-duration="100" stroke="#737373" fill="#737373" fill-opacity="0" d="M 20.684 15.234 L 20.684 21.152 L 5.215 21.152 L 5.215 24.316 L 2.93 24.316 L 2.93 19.424 L 18.428 19.424 L 18.428 17.051 L 2.871 17.051 L 2.871 15.234 L 20.684 15.234 Z M 23.73 10.752 L 23.73 12.627 L 0 12.627 L 0 10.752 L 23.73 10.752 Z M 21.475 23.789 L 21.475 25.605 L 2.93 25.605 L 2.93 23.789 L 21.475 23.789 Z M 22.441 7.295 L 21.621 9.053 Q 18.867 8.672 16.45 7.588 A 12.645 12.645 0 0 1 14.268 6.35 A 9.851 9.851 0 0 1 12.554 4.805 A 6.089 6.089 0 0 1 11.421 2.943 A 5.499 5.499 0 0 1 11.074 0.996 L 11.074 0 L 13.066 0 L 13.066 0.996 A 3.652 3.652 0 0 0 13.695 3.025 A 5.369 5.369 0 0 0 14.399 3.882 A 9.143 9.143 0 0 0 16.047 5.174 Q 16.85 5.673 17.823 6.082 A 15 15 0 0 0 17.886 6.108 Q 20.039 7.002 22.441 7.295 Z M 2.109 9.053 L 1.318 7.295 Q 3.721 7.002 5.874 6.108 A 12.759 12.759 0 0 0 7.657 5.208 Q 8.631 4.611 9.36 3.882 A 5.235 5.235 0 0 0 10.146 2.895 A 3.615 3.615 0 0 0 10.693 0.996 L 10.693 0 L 12.656 0 L 12.656 0.996 A 5.604 5.604 0 0 1 11.334 4.618 A 7.158 7.158 0 0 1 11.177 4.805 A 10.109 10.109 0 0 1 8.961 6.688 A 13.135 13.135 0 0 1 7.28 7.588 Q 4.863 8.672 2.109 9.053 Z M 12.979 12.1 L 12.979 16.113 L 10.693 16.113 L 10.693 12.1 L 12.979 12.1 Z" vector-effect="non-scaling-stroke"/>
					<path class="logo07" id="logo_outline07" data-duration="100" stroke="#737373" fill="#737373" fill-opacity="0"
						d="M 20.566 0 L 20.566 19.6 L 18.223 19.6 L 18.223 0 L 20.566 0 Z M 21.416 23.555 L 21.416 25.488 L 4.014 25.488 L 4.014 23.555 L 21.416 23.555 Z M 16.465 12.686 L 16.611 14.385 A 63.966 63.966 0 0 1 11.876 14.999 A 76.11 76.11 0 0 1 8.848 15.22 A 157.51 157.51 0 0 1 2.454 15.426 A 177.566 177.566 0 0 1 0.234 15.439 L 0 13.535 A 309.416 309.416 0 0 0 4.588 13.476 Q 6.903 13.428 8.95 13.345 A 80.152 80.152 0 0 0 14.208 12.964 A 68.533 68.533 0 0 0 16.465 12.686 Z M 13.242 2.021 L 13.242 3.955 L 1.611 3.955 L 1.611 2.021 L 13.242 2.021 Z M 13.916 11.104 L 11.602 10.928 Q 11.956 9.2 12.109 7.858 A 20.185 20.185 0 0 0 12.187 7.031 A 52.991 52.991 0 0 0 12.28 5.374 Q 12.319 4.441 12.334 3.398 L 12.334 2.021 L 14.59 2.021 L 14.59 3.398 Q 14.565 5.236 14.485 6.728 A 58.246 58.246 0 0 1 14.458 7.207 Q 14.355 8.877 13.916 11.104 Z M 7.881 7.793 L 7.881 14.326 L 5.596 14.326 L 5.596 7.793 L 7.881 7.793 Z M 6.328 17.842 L 6.328 24.17 L 4.014 24.17 L 4.014 17.842 L 6.328 17.842 Z M 24.375 8.496 L 24.375 10.459 L 19.512 10.459 L 19.512 8.496 L 24.375 8.496 Z"
						vector-effect="non-scaling-stroke" />
						
						
						<path class="logo08" id="logo_outline08" data-duration="100" stroke="#737373" fill="#737373" fill-opacity="0"
						d="M 51.2 0.432 L 52.571 0.432 L 55.669 7.998 L 55.783 7.998 L 58.881 0.432 L 60.252 0.432 L 60.252 9.623 L 59.173 9.623 L 59.173 2.679 L 59.084 2.679 L 56.228 9.623 L 55.212 9.623 L 52.355 2.679 L 52.279 2.679 L 52.279 9.623 L 51.2 9.623 L 51.2 0.432 Z M 90.149 9.623 L 90.149 2.73 L 91.203 2.73 L 91.203 3.809 L 91.292 3.809 A 1.897 1.897 0 0 1 91.657 3.228 A 1.751 1.751 0 0 1 91.997 2.945 Q 92.473 2.641 93.146 2.641 A 2.546 2.546 0 0 1 93.591 2.678 A 2.006 2.006 0 0 1 93.945 2.774 Q 94.301 2.907 94.561 3.168 A 1.94 1.94 0 0 1 94.886 3.604 A 2.372 2.372 0 0 1 94.986 3.809 L 95.063 3.809 A 1.947 1.947 0 0 1 95.539 3.18 A 2.051 2.051 0 0 1 96.119 2.827 A 2.394 2.394 0 0 1 96.243 2.78 Q 96.649 2.641 97.132 2.641 A 2.61 2.61 0 0 1 97.691 2.698 A 2.002 2.002 0 0 1 98.236 2.901 A 1.75 1.75 0 0 1 98.884 3.53 A 2.187 2.187 0 0 1 98.973 3.688 A 2.29 2.29 0 0 1 99.162 4.232 Q 99.217 4.485 99.233 4.778 A 4.441 4.441 0 0 1 99.239 5.015 L 99.239 9.623 L 98.147 9.623 L 98.147 5.027 A 2.11 2.11 0 0 0 98.113 4.631 Q 98.07 4.407 97.973 4.233 A 1.007 1.007 0 0 0 97.754 3.961 A 1.374 1.374 0 0 0 97.059 3.642 A 1.895 1.895 0 0 0 96.751 3.618 Q 96.281 3.618 95.938 3.815 A 1.304 1.304 0 0 0 95.418 4.355 A 1.575 1.575 0 0 0 95.258 4.874 A 2.006 2.006 0 0 0 95.24 5.142 L 95.24 9.623 L 94.136 9.623 L 94.136 4.913 A 1.447 1.447 0 0 0 94.082 4.511 A 1.247 1.247 0 0 0 93.964 4.234 Q 93.793 3.936 93.488 3.777 Q 93.184 3.618 92.79 3.618 A 1.443 1.443 0 0 0 92.028 3.834 A 1.588 1.588 0 0 0 91.485 4.389 A 1.882 1.882 0 0 0 91.457 4.437 A 1.712 1.712 0 0 0 91.252 5.108 A 2.122 2.122 0 0 0 91.241 5.319 L 91.241 9.623 L 90.149 9.623 Z M 7.3 0.432 L 7.3 9.623 L 6.208 9.623 L 1.231 2.463 L 1.143 2.463 L 1.143 9.623 L 0 9.623 L 0 0.432 L 1.104 0.432 L 6.081 7.605 L 6.17 7.605 L 6.17 0.432 L 7.3 0.432 Z M 119.412 9.623 L 119.412 0.432 L 120.555 0.432 L 120.555 4.977 L 120.669 4.977 L 124.757 0.432 L 126.255 0.432 L 122.408 4.583 L 126.255 9.623 L 124.858 9.623 L 121.697 5.37 L 120.555 6.665 L 120.555 9.623 L 119.412 9.623 Z M 81.542 6.081 L 81.542 6.538 L 76.21 6.538 L 76.21 5.611 L 80.438 5.611 A 2.549 2.549 0 0 0 80.38 5.061 A 2.037 2.037 0 0 0 80.209 4.577 Q 79.98 4.126 79.555 3.866 A 1.773 1.773 0 0 0 78.809 3.618 A 2.225 2.225 0 0 0 78.571 3.605 A 2.103 2.103 0 0 0 77.983 3.685 A 1.773 1.773 0 0 0 77.505 3.904 A 2.032 2.032 0 0 0 76.794 4.704 Q 76.54 5.205 76.54 5.776 L 76.54 6.398 Q 76.54 7.16 76.807 7.7 A 1.993 1.993 0 0 0 77.193 8.243 A 1.799 1.799 0 0 0 77.556 8.519 A 2.067 2.067 0 0 0 78.328 8.776 A 2.621 2.621 0 0 0 78.673 8.798 A 2.475 2.475 0 0 0 79.07 8.767 A 1.941 1.941 0 0 0 79.384 8.69 A 2.128 2.128 0 0 0 79.677 8.566 A 1.623 1.623 0 0 0 79.923 8.411 A 1.338 1.338 0 0 0 80.203 8.121 A 1.231 1.231 0 0 0 80.272 8.011 L 81.44 8.011 Q 81.275 8.531 80.895 8.925 A 2.514 2.514 0 0 1 80.216 9.419 A 3.071 3.071 0 0 1 79.942 9.541 A 3.267 3.267 0 0 1 79.097 9.741 A 4.043 4.043 0 0 1 78.673 9.763 A 3.684 3.684 0 0 1 77.771 9.657 A 2.962 2.962 0 0 1 76.965 9.325 Q 76.235 8.887 75.842 8.087 A 3.774 3.774 0 0 1 75.504 6.988 A 4.956 4.956 0 0 1 75.448 6.233 A 4.831 4.831 0 0 1 75.547 5.238 A 3.841 3.841 0 0 1 75.842 4.361 A 3.202 3.202 0 0 1 76.419 3.518 A 2.863 2.863 0 0 1 76.94 3.091 A 2.865 2.865 0 0 1 78.232 2.656 A 3.573 3.573 0 0 1 78.571 2.641 Q 79.358 2.641 80.031 2.983 A 2.401 2.401 0 0 1 80.852 3.679 A 3.194 3.194 0 0 1 81.123 4.101 A 3.199 3.199 0 0 1 81.417 4.891 Q 81.503 5.256 81.53 5.681 A 6.335 6.335 0 0 1 81.542 6.081 Z M 145.031 6.081 L 145.031 6.538 L 139.699 6.538 L 139.699 5.611 L 143.927 5.611 A 2.549 2.549 0 0 0 143.87 5.061 A 2.037 2.037 0 0 0 143.698 4.577 Q 143.47 4.126 143.044 3.866 A 1.773 1.773 0 0 0 142.299 3.618 A 2.225 2.225 0 0 0 142.061 3.605 A 2.103 2.103 0 0 0 141.473 3.685 A 1.773 1.773 0 0 0 140.994 3.904 A 2.032 2.032 0 0 0 140.283 4.704 Q 140.029 5.205 140.029 5.776 L 140.029 6.398 Q 140.029 7.16 140.296 7.7 A 1.993 1.993 0 0 0 140.682 8.243 A 1.799 1.799 0 0 0 141.045 8.519 A 2.067 2.067 0 0 0 141.817 8.776 A 2.621 2.621 0 0 0 142.162 8.798 A 2.475 2.475 0 0 0 142.559 8.767 A 1.941 1.941 0 0 0 142.873 8.69 A 2.128 2.128 0 0 0 143.167 8.566 A 1.623 1.623 0 0 0 143.413 8.411 A 1.338 1.338 0 0 0 143.692 8.121 A 1.231 1.231 0 0 0 143.762 8.011 L 144.93 8.011 Q 144.765 8.531 144.384 8.925 A 2.514 2.514 0 0 1 143.705 9.419 A 3.071 3.071 0 0 1 143.432 9.541 A 3.267 3.267 0 0 1 142.586 9.741 A 4.043 4.043 0 0 1 142.162 9.763 A 3.684 3.684 0 0 1 141.26 9.657 A 2.962 2.962 0 0 1 140.455 9.325 Q 139.725 8.887 139.331 8.087 A 3.774 3.774 0 0 1 138.993 6.988 A 4.956 4.956 0 0 1 138.937 6.233 A 4.831 4.831 0 0 1 139.036 5.238 A 3.841 3.841 0 0 1 139.331 4.361 A 3.202 3.202 0 0 1 139.908 3.518 A 2.863 2.863 0 0 1 140.429 3.091 A 2.865 2.865 0 0 1 141.721 2.656 A 3.573 3.573 0 0 1 142.061 2.641 Q 142.848 2.641 143.521 2.983 A 2.401 2.401 0 0 1 144.341 3.679 A 3.194 3.194 0 0 1 144.612 4.101 A 3.199 3.199 0 0 1 144.906 4.891 Q 144.992 5.256 145.019 5.681 A 6.335 6.335 0 0 1 145.031 6.081 Z M 12.302 6.5 L 11.578 6.551 A 3.82 3.82 0 0 0 11.128 6.605 Q 10.671 6.691 10.378 6.887 Q 9.953 7.173 9.953 7.719 A 1.135 1.135 0 0 0 9.987 8.003 A 0.865 0.865 0 0 0 10.137 8.315 A 1.062 1.062 0 0 0 10.459 8.593 A 1.395 1.395 0 0 0 10.651 8.684 A 1.871 1.871 0 0 0 11.075 8.79 A 2.44 2.44 0 0 0 11.4 8.811 A 2.55 2.55 0 0 0 11.891 8.766 A 1.87 1.87 0 0 0 12.429 8.576 A 1.786 1.786 0 0 0 12.865 8.248 A 1.579 1.579 0 0 0 13.089 7.954 A 1.608 1.608 0 0 0 13.317 7.122 L 13.317 4.977 A 1.93 1.93 0 0 0 13.289 4.638 Q 13.252 4.431 13.168 4.262 A 1.188 1.188 0 0 0 13.146 4.221 A 1.071 1.071 0 0 0 12.689 3.783 A 1.338 1.338 0 0 0 12.625 3.751 A 1.635 1.635 0 0 0 12.274 3.64 Q 12.041 3.593 11.756 3.593 A 2.503 2.503 0 0 0 11.321 3.629 Q 11.079 3.671 10.881 3.765 A 1.394 1.394 0 0 0 10.734 3.847 A 1.304 1.304 0 0 0 10.404 4.139 A 1.146 1.146 0 0 0 10.207 4.52 L 9.064 4.52 A 1.879 1.879 0 0 1 9.502 3.536 Q 9.864 3.11 10.461 2.876 A 3.343 3.343 0 0 1 11.266 2.674 A 4.278 4.278 0 0 1 11.807 2.641 Q 12.403 2.641 12.975 2.818 A 1.917 1.917 0 0 1 13.735 3.275 A 2.506 2.506 0 0 1 13.971 3.536 Q 14.396 4.075 14.396 5.078 L 14.396 9.623 L 13.317 9.623 L 13.317 8.684 L 13.267 8.684 A 1.553 1.553 0 0 1 13.082 8.977 A 2.103 2.103 0 0 1 12.879 9.198 Q 12.619 9.445 12.194 9.617 A 2.301 2.301 0 0 1 11.673 9.755 A 3.126 3.126 0 0 1 11.21 9.788 A 2.962 2.962 0 0 1 10.489 9.703 A 2.516 2.516 0 0 1 10.017 9.534 A 2.011 2.011 0 0 1 9.172 8.798 A 1.947 1.947 0 0 1 8.878 7.962 A 2.475 2.475 0 0 1 8.861 7.668 A 2.463 2.463 0 0 1 8.923 7.098 Q 9.015 6.71 9.245 6.444 A 1.42 1.42 0 0 1 9.598 6.151 Q 10.261 5.756 11.233 5.655 A 6.183 6.183 0 0 1 11.451 5.637 A 2.229 2.229 0 0 1 11.498 5.633 Q 11.715 5.616 12.67 5.561 L 13.394 5.535 L 13.406 6.424 Q 13.298 6.424 12.41 6.492 A 209.453 209.453 0 0 0 12.302 6.5 Z M 41.12 6.5 L 40.396 6.551 A 3.82 3.82 0 0 0 39.947 6.605 Q 39.489 6.691 39.197 6.887 Q 38.771 7.173 38.771 7.719 A 1.135 1.135 0 0 0 38.805 8.003 A 0.865 0.865 0 0 0 38.956 8.315 A 1.062 1.062 0 0 0 39.278 8.593 A 1.395 1.395 0 0 0 39.47 8.684 A 1.871 1.871 0 0 0 39.893 8.79 A 2.44 2.44 0 0 0 40.219 8.811 A 2.55 2.55 0 0 0 40.709 8.766 A 1.87 1.87 0 0 0 41.247 8.576 A 1.786 1.786 0 0 0 41.683 8.248 A 1.579 1.579 0 0 0 41.907 7.954 A 1.608 1.608 0 0 0 42.136 7.122 L 42.136 4.977 A 1.93 1.93 0 0 0 42.107 4.638 Q 42.071 4.431 41.986 4.262 A 1.188 1.188 0 0 0 41.964 4.221 A 1.071 1.071 0 0 0 41.508 3.783 A 1.338 1.338 0 0 0 41.444 3.751 A 1.635 1.635 0 0 0 41.092 3.64 Q 40.859 3.593 40.574 3.593 A 2.503 2.503 0 0 0 40.139 3.629 Q 39.897 3.671 39.7 3.765 A 1.394 1.394 0 0 0 39.552 3.847 A 1.304 1.304 0 0 0 39.223 4.139 A 1.146 1.146 0 0 0 39.025 4.52 L 37.883 4.52 A 1.879 1.879 0 0 1 38.321 3.536 Q 38.683 3.11 39.279 2.876 A 3.343 3.343 0 0 1 40.085 2.674 A 4.278 4.278 0 0 1 40.625 2.641 Q 41.222 2.641 41.793 2.818 A 1.917 1.917 0 0 1 42.553 3.275 A 2.506 2.506 0 0 1 42.79 3.536 Q 43.215 4.075 43.215 5.078 L 43.215 9.623 L 42.136 9.623 L 42.136 8.684 L 42.085 8.684 A 1.553 1.553 0 0 1 41.901 8.977 A 2.103 2.103 0 0 1 41.698 9.198 Q 41.438 9.445 41.012 9.617 A 2.301 2.301 0 0 1 40.492 9.755 A 3.126 3.126 0 0 1 40.028 9.788 A 2.962 2.962 0 0 1 39.307 9.703 A 2.516 2.516 0 0 1 38.835 9.534 A 2.011 2.011 0 0 1 37.991 8.798 A 1.947 1.947 0 0 1 37.697 7.962 A 2.475 2.475 0 0 1 37.68 7.668 A 2.463 2.463 0 0 1 37.741 7.098 Q 37.833 6.71 38.064 6.444 A 1.42 1.42 0 0 1 38.416 6.151 Q 39.079 5.756 40.052 5.655 A 6.183 6.183 0 0 1 40.27 5.637 A 2.229 2.229 0 0 1 40.316 5.633 Q 40.533 5.616 41.488 5.561 L 42.212 5.535 L 42.225 6.424 Q 42.117 6.424 41.229 6.492 A 209.453 209.453 0 0 0 41.12 6.5 Z M 149.563 6.5 L 148.84 6.551 A 3.82 3.82 0 0 0 148.39 6.605 Q 147.933 6.691 147.64 6.887 Q 147.215 7.173 147.215 7.719 A 1.135 1.135 0 0 0 147.249 8.003 A 0.865 0.865 0 0 0 147.399 8.315 A 1.062 1.062 0 0 0 147.721 8.593 A 1.395 1.395 0 0 0 147.913 8.684 A 1.871 1.871 0 0 0 148.336 8.79 A 2.44 2.44 0 0 0 148.662 8.811 A 2.55 2.55 0 0 0 149.153 8.766 A 1.87 1.87 0 0 0 149.69 8.576 A 1.786 1.786 0 0 0 150.127 8.248 A 1.579 1.579 0 0 0 150.351 7.954 A 1.608 1.608 0 0 0 150.579 7.122 L 150.579 4.977 A 1.93 1.93 0 0 0 150.551 4.638 Q 150.514 4.431 150.429 4.262 A 1.188 1.188 0 0 0 150.408 4.221 A 1.071 1.071 0 0 0 149.951 3.783 A 1.338 1.338 0 0 0 149.887 3.751 A 1.635 1.635 0 0 0 149.536 3.64 Q 149.302 3.593 149.018 3.593 A 2.503 2.503 0 0 0 148.582 3.629 Q 148.34 3.671 148.143 3.765 A 1.394 1.394 0 0 0 147.996 3.847 A 1.304 1.304 0 0 0 147.666 4.139 A 1.146 1.146 0 0 0 147.469 4.52 L 146.326 4.52 A 1.879 1.879 0 0 1 146.764 3.536 Q 147.126 3.11 147.723 2.876 A 3.343 3.343 0 0 1 148.528 2.674 A 4.278 4.278 0 0 1 149.068 2.641 Q 149.665 2.641 150.236 2.818 A 1.917 1.917 0 0 1 150.997 3.275 A 2.506 2.506 0 0 1 151.233 3.536 Q 151.658 4.075 151.658 5.078 L 151.658 9.623 L 150.579 9.623 L 150.579 8.684 L 150.528 8.684 A 1.553 1.553 0 0 1 150.344 8.977 A 2.103 2.103 0 0 1 150.141 9.198 Q 149.881 9.445 149.456 9.617 A 2.301 2.301 0 0 1 148.935 9.755 A 3.126 3.126 0 0 1 148.472 9.788 A 2.962 2.962 0 0 1 147.751 9.703 A 2.516 2.516 0 0 1 147.278 9.534 A 2.011 2.011 0 0 1 146.434 8.798 A 1.947 1.947 0 0 1 146.14 7.962 A 2.475 2.475 0 0 1 146.123 7.668 A 2.463 2.463 0 0 1 146.185 7.098 Q 146.277 6.71 146.507 6.444 A 1.42 1.42 0 0 1 146.859 6.151 Q 147.523 5.756 148.495 5.655 A 6.183 6.183 0 0 1 148.713 5.637 A 2.229 2.229 0 0 1 148.76 5.633 Q 148.976 5.616 149.932 5.561 L 150.655 5.535 L 150.668 6.424 Q 150.56 6.424 149.672 6.492 A 209.453 209.453 0 0 0 149.563 6.5 Z M 31.865 5.484 L 31.865 9.623 L 30.773 9.623 L 30.773 2.73 L 31.827 2.73 L 31.827 3.809 L 31.916 3.809 Q 32.183 3.25 32.678 2.945 Q 33.173 2.641 33.935 2.641 A 2.98 2.98 0 0 1 34.54 2.699 A 2.237 2.237 0 0 1 35.166 2.926 Q 35.687 3.212 35.972 3.796 A 2.618 2.618 0 0 1 36.177 4.405 Q 36.238 4.69 36.253 5.019 A 4.893 4.893 0 0 1 36.258 5.243 L 36.258 9.623 L 35.166 9.623 L 35.166 5.319 A 2.589 2.589 0 0 0 35.133 4.897 Q 35.094 4.659 35.008 4.461 A 1.566 1.566 0 0 0 34.982 4.405 A 1.324 1.324 0 0 0 34.449 3.821 A 1.455 1.455 0 0 0 33.989 3.653 A 2.026 2.026 0 0 0 33.604 3.618 A 2.036 2.036 0 0 0 33.097 3.679 A 1.688 1.688 0 0 0 32.703 3.834 A 1.49 1.49 0 0 0 32.116 4.423 A 1.813 1.813 0 0 0 32.087 4.475 A 1.905 1.905 0 0 0 31.903 5.028 A 2.611 2.611 0 0 0 31.865 5.484 Z M 66.498 6.792 L 66.498 2.73 L 67.577 2.73 L 67.577 9.623 L 66.498 9.623 L 66.498 8.455 L 66.422 8.455 A 2.251 2.251 0 0 1 65.641 9.363 Q 65.127 9.712 64.378 9.712 A 2.538 2.538 0 0 1 63.757 9.639 A 2.074 2.074 0 0 1 63.216 9.42 A 1.915 1.915 0 0 1 62.557 8.773 A 2.431 2.431 0 0 1 62.429 8.544 A 2.639 2.639 0 0 1 62.219 7.916 Q 62.144 7.548 62.144 7.109 L 62.144 2.73 L 63.235 2.73 L 63.235 7.033 A 2.074 2.074 0 0 0 63.283 7.487 A 1.639 1.639 0 0 0 63.426 7.884 Q 63.616 8.252 63.959 8.455 Q 64.302 8.658 64.733 8.658 A 1.742 1.742 0 0 0 65.431 8.509 A 2.087 2.087 0 0 0 65.559 8.449 A 1.679 1.679 0 0 0 66.142 7.945 A 2.058 2.058 0 0 0 66.231 7.814 A 1.718 1.718 0 0 0 66.465 7.19 A 2.313 2.313 0 0 0 66.498 6.792 Z M 87.318 6.792 L 87.318 2.73 L 88.397 2.73 L 88.397 9.623 L 87.318 9.623 L 87.318 8.455 L 87.242 8.455 A 2.251 2.251 0 0 1 86.461 9.363 Q 85.947 9.712 85.198 9.712 A 2.538 2.538 0 0 1 84.578 9.639 A 2.074 2.074 0 0 1 84.037 9.42 A 1.915 1.915 0 0 1 83.377 8.773 A 2.431 2.431 0 0 1 83.25 8.544 A 2.639 2.639 0 0 1 83.04 7.916 Q 82.964 7.548 82.964 7.109 L 82.964 2.73 L 84.056 2.73 L 84.056 7.033 A 2.074 2.074 0 0 0 84.103 7.487 A 1.639 1.639 0 0 0 84.246 7.884 Q 84.437 8.252 84.779 8.455 Q 85.122 8.658 85.554 8.658 A 1.742 1.742 0 0 0 86.252 8.509 A 2.087 2.087 0 0 0 86.379 8.449 A 1.679 1.679 0 0 0 86.963 7.945 A 2.058 2.058 0 0 0 87.052 7.814 A 1.718 1.718 0 0 0 87.285 7.19 A 2.313 2.313 0 0 0 87.318 6.792 Z M 71.487 5.573 L 72.516 5.827 A 4.227 4.227 0 0 1 73.073 5.995 Q 73.349 6.101 73.565 6.239 A 1.904 1.904 0 0 1 73.899 6.506 A 1.57 1.57 0 0 1 74.347 7.49 A 2.125 2.125 0 0 1 74.356 7.693 A 1.911 1.911 0 0 1 74.206 8.454 A 1.839 1.839 0 0 1 74.039 8.76 A 1.932 1.932 0 0 1 73.481 9.299 A 2.562 2.562 0 0 1 73.112 9.496 Q 72.546 9.744 71.771 9.761 A 5.268 5.268 0 0 1 71.652 9.763 A 4.531 4.531 0 0 1 71.037 9.723 Q 70.716 9.679 70.443 9.586 A 2.61 2.61 0 0 1 70.319 9.541 A 2.189 2.189 0 0 1 69.734 9.201 A 1.95 1.95 0 0 1 69.424 8.88 A 2.098 2.098 0 0 1 69.069 8.156 A 2.652 2.652 0 0 1 68.999 7.82 L 70.142 7.82 A 1.338 1.338 0 0 0 70.268 8.182 A 1.042 1.042 0 0 0 70.611 8.563 Q 70.979 8.811 71.627 8.811 A 3.115 3.115 0 0 0 72.026 8.786 Q 72.237 8.759 72.42 8.701 A 1.878 1.878 0 0 0 72.471 8.684 A 1.513 1.513 0 0 0 72.738 8.562 Q 72.907 8.462 73.022 8.324 A 0.968 0.968 0 0 0 73.03 8.315 Q 73.227 8.074 73.227 7.757 A 0.794 0.794 0 0 0 72.983 7.169 A 0.97 0.97 0 0 0 72.954 7.141 Q 72.686 6.899 72.12 6.772 A 3.825 3.825 0 0 0 72.097 6.767 L 71.056 6.525 A 3.982 3.982 0 0 1 70.487 6.346 Q 70.186 6.224 69.954 6.06 A 1.98 1.98 0 0 1 69.685 5.834 A 1.59 1.59 0 0 1 69.215 4.683 A 1.985 1.985 0 0 1 69.215 4.672 Q 69.215 4.088 69.539 3.625 A 2.056 2.056 0 0 1 70.197 3.026 A 2.576 2.576 0 0 1 70.44 2.901 A 2.908 2.908 0 0 1 71.224 2.678 A 3.805 3.805 0 0 1 71.767 2.641 A 3.54 3.54 0 0 1 72.385 2.692 A 2.673 2.673 0 0 1 72.998 2.876 A 2.226 2.226 0 0 1 73.552 3.219 A 1.952 1.952 0 0 1 73.849 3.536 A 1.981 1.981 0 0 1 74.225 4.485 A 2.344 2.344 0 0 1 74.229 4.52 L 73.163 4.52 A 1.32 1.32 0 0 0 73.004 4.137 A 1.118 1.118 0 0 0 72.7 3.815 A 1.246 1.246 0 0 0 72.306 3.633 Q 72.142 3.588 71.949 3.574 A 2.501 2.501 0 0 0 71.767 3.567 A 2.263 2.263 0 0 0 71.37 3.601 A 1.763 1.763 0 0 0 71.018 3.701 Q 70.688 3.834 70.497 4.075 A 0.878 0.878 0 0 0 70.338 4.38 A 0.831 0.831 0 0 0 70.307 4.608 A 0.713 0.713 0 0 0 70.534 5.134 A 1.01 1.01 0 0 0 70.599 5.192 Q 70.885 5.429 71.463 5.567 A 4.392 4.392 0 0 0 71.487 5.573 Z M 114.867 0.076 L 114.867 1.054 A 3.84 3.84 0 0 0 114.536 1.013 A 3.078 3.078 0 0 0 114.296 1.003 A 2.1 2.1 0 0 0 113.999 1.023 Q 113.846 1.044 113.723 1.091 A 0.801 0.801 0 0 0 113.458 1.251 A 0.756 0.756 0 0 0 113.263 1.556 Q 113.219 1.679 113.202 1.831 A 1.818 1.818 0 0 0 113.191 2.031 L 113.191 9.623 L 112.087 9.623 L 112.087 1.79 A 2.171 2.171 0 0 1 112.133 1.332 A 1.623 1.623 0 0 1 112.328 0.832 A 1.584 1.584 0 0 1 112.986 0.23 A 1.902 1.902 0 0 1 113.014 0.216 A 2.1 2.1 0 0 1 113.593 0.036 A 2.839 2.839 0 0 1 114.055 0 A 4.31 4.31 0 0 1 114.303 0.007 A 5.227 5.227 0 0 1 114.461 0.019 A 3.956 3.956 0 0 1 114.746 0.054 A 3.357 3.357 0 0 1 114.867 0.076 Z M 134.723 9.623 L 134.723 2.73 L 135.776 2.73 L 135.776 3.783 L 135.853 3.783 A 1.657 1.657 0 0 1 136.532 2.933 A 1.973 1.973 0 0 1 137.63 2.615 A 6.82 6.82 0 0 1 137.927 2.621 Q 138.068 2.628 138.193 2.64 A 4.143 4.143 0 0 1 138.201 2.641 L 138.201 3.745 Q 138.138 3.72 137.935 3.694 A 3.227 3.227 0 0 0 137.601 3.67 A 2.901 2.901 0 0 0 137.541 3.669 A 1.918 1.918 0 0 0 136.947 3.759 A 1.737 1.737 0 0 0 136.665 3.878 A 1.605 1.605 0 0 0 136.043 4.456 Q 135.814 4.824 135.814 5.281 L 135.814 9.623 L 134.723 9.623 Z M 16.605 1.079 L 17.71 1.079 L 17.71 7.643 A 2.349 2.349 0 0 0 17.721 7.874 Q 17.744 8.11 17.819 8.261 A 0.662 0.662 0 0 0 17.831 8.284 A 0.789 0.789 0 0 0 17.941 8.441 A 0.586 0.586 0 0 0 18.148 8.588 Q 18.339 8.668 18.596 8.671 A 1.701 1.701 0 0 0 18.611 8.671 Q 18.929 8.671 19.259 8.646 L 19.259 9.661 A 4.064 4.064 0 0 1 18.951 9.696 Q 18.793 9.708 18.616 9.711 A 6.979 6.979 0 0 1 18.497 9.712 A 2.121 2.121 0 0 1 17.583 9.509 Q 17.151 9.306 16.878 8.899 A 1.59 1.59 0 0 1 16.631 8.255 A 2.11 2.11 0 0 1 16.605 7.922 L 16.605 1.079 Z M 25.239 9.622 A 3.291 3.291 0 0 0 26.216 9.763 A 3.631 3.631 0 0 0 26.556 9.747 A 2.929 2.929 0 0 0 27.854 9.318 A 2.84 2.84 0 0 0 28.309 8.966 A 3.048 3.048 0 0 0 28.952 8.068 A 3.778 3.778 0 0 0 29.245 7.185 A 4.872 4.872 0 0 0 29.339 6.208 A 5.121 5.121 0 0 0 29.28 5.415 A 3.858 3.858 0 0 0 28.952 4.335 A 3.5 3.5 0 0 0 28.902 4.236 A 2.908 2.908 0 0 0 27.854 3.085 Q 27.143 2.641 26.216 2.641 A 3.674 3.674 0 0 0 25.931 2.651 A 2.979 2.979 0 0 0 24.572 3.085 A 2.878 2.878 0 0 0 24.135 3.416 A 3.061 3.061 0 0 0 23.461 4.335 A 3.747 3.747 0 0 0 23.154 5.265 A 4.913 4.913 0 0 0 23.067 6.208 A 4.999 4.999 0 0 0 23.118 6.933 A 3.838 3.838 0 0 0 23.461 8.068 A 3.53 3.53 0 0 0 23.499 8.143 A 2.942 2.942 0 0 0 24.572 9.318 A 2.874 2.874 0 0 0 25.239 9.622 Z M 106.096 9.622 A 3.291 3.291 0 0 0 107.072 9.763 A 3.631 3.631 0 0 0 107.412 9.747 A 2.929 2.929 0 0 0 108.71 9.318 A 2.84 2.84 0 0 0 109.165 8.966 A 3.048 3.048 0 0 0 109.808 8.068 A 3.778 3.778 0 0 0 110.102 7.185 A 4.872 4.872 0 0 0 110.195 6.208 A 5.121 5.121 0 0 0 110.136 5.415 A 3.858 3.858 0 0 0 109.808 4.335 A 3.5 3.5 0 0 0 109.758 4.236 A 2.908 2.908 0 0 0 108.71 3.085 Q 107.999 2.641 107.072 2.641 A 3.674 3.674 0 0 0 106.788 2.651 A 2.979 2.979 0 0 0 105.428 3.085 A 2.878 2.878 0 0 0 104.992 3.416 A 3.061 3.061 0 0 0 104.317 4.335 A 3.747 3.747 0 0 0 104.01 5.265 A 4.913 4.913 0 0 0 103.924 6.208 A 4.999 4.999 0 0 0 103.975 6.933 A 3.838 3.838 0 0 0 104.317 8.068 A 3.53 3.53 0 0 0 104.355 8.143 A 2.942 2.942 0 0 0 105.428 9.318 A 2.874 2.874 0 0 0 106.096 9.622 Z M 129.189 9.622 A 3.291 3.291 0 0 0 130.165 9.763 A 3.631 3.631 0 0 0 130.505 9.747 A 2.929 2.929 0 0 0 131.803 9.318 A 2.84 2.84 0 0 0 132.258 8.966 A 3.048 3.048 0 0 0 132.901 8.068 A 3.778 3.778 0 0 0 133.194 7.185 A 4.872 4.872 0 0 0 133.288 6.208 A 5.121 5.121 0 0 0 133.229 5.415 A 3.858 3.858 0 0 0 132.901 4.335 A 3.5 3.5 0 0 0 132.851 4.236 A 2.908 2.908 0 0 0 131.803 3.085 Q 131.092 2.641 130.165 2.641 A 3.674 3.674 0 0 0 129.881 2.651 A 2.979 2.979 0 0 0 128.521 3.085 A 2.878 2.878 0 0 0 128.085 3.416 A 3.061 3.061 0 0 0 127.41 4.335 A 3.747 3.747 0 0 0 127.103 5.265 A 4.913 4.913 0 0 0 127.017 6.208 A 4.999 4.999 0 0 0 127.067 6.933 A 3.838 3.838 0 0 0 127.41 8.068 A 3.53 3.53 0 0 0 127.448 8.143 A 2.942 2.942 0 0 0 128.521 9.318 A 2.874 2.874 0 0 0 129.189 9.622 Z M 46.059 0.432 L 46.059 9.623 L 44.967 9.623 L 44.967 0.432 L 46.059 0.432 Z M 20.566 9.623 L 20.566 2.73 L 21.658 2.73 L 21.658 9.623 L 20.566 9.623 Z M 26.216 8.798 Q 26.889 8.798 27.346 8.442 A 2.082 2.082 0 0 0 27.977 7.619 A 2.517 2.517 0 0 0 28.025 7.503 A 3.401 3.401 0 0 0 28.225 6.64 A 4.198 4.198 0 0 0 28.247 6.208 A 3.961 3.961 0 0 0 28.169 5.406 A 3.321 3.321 0 0 0 28.025 4.907 A 2.243 2.243 0 0 0 27.681 4.292 A 1.995 1.995 0 0 0 27.346 3.961 A 1.669 1.669 0 0 0 26.568 3.632 A 2.248 2.248 0 0 0 26.216 3.605 A 2.117 2.117 0 0 0 25.667 3.674 A 1.66 1.66 0 0 0 25.08 3.961 Q 24.616 4.316 24.388 4.907 A 3.402 3.402 0 0 0 24.177 5.818 A 4.13 4.13 0 0 0 24.159 6.208 A 3.836 3.836 0 0 0 24.236 6.988 A 3.185 3.185 0 0 0 24.388 7.503 Q 24.616 8.087 25.08 8.442 A 1.706 1.706 0 0 0 25.883 8.774 A 2.272 2.272 0 0 0 26.216 8.798 Z M 107.072 8.798 Q 107.745 8.798 108.202 8.442 A 2.082 2.082 0 0 0 108.834 7.619 A 2.517 2.517 0 0 0 108.881 7.503 A 3.401 3.401 0 0 0 109.082 6.64 A 4.198 4.198 0 0 0 109.104 6.208 A 3.961 3.961 0 0 0 109.025 5.406 A 3.321 3.321 0 0 0 108.881 4.907 A 2.243 2.243 0 0 0 108.538 4.292 A 1.995 1.995 0 0 0 108.202 3.961 A 1.669 1.669 0 0 0 107.424 3.632 A 2.248 2.248 0 0 0 107.072 3.605 A 2.117 2.117 0 0 0 106.524 3.674 A 1.66 1.66 0 0 0 105.936 3.961 Q 105.473 4.316 105.244 4.907 A 3.402 3.402 0 0 0 105.034 5.818 A 4.13 4.13 0 0 0 105.016 6.208 A 3.836 3.836 0 0 0 105.092 6.988 A 3.185 3.185 0 0 0 105.244 7.503 Q 105.473 8.087 105.936 8.442 A 1.706 1.706 0 0 0 106.739 8.774 A 2.272 2.272 0 0 0 107.072 8.798 Z M 130.165 8.798 Q 130.838 8.798 131.295 8.442 A 2.082 2.082 0 0 0 131.927 7.619 A 2.517 2.517 0 0 0 131.974 7.503 A 3.401 3.401 0 0 0 132.175 6.64 A 4.198 4.198 0 0 0 132.196 6.208 A 3.961 3.961 0 0 0 132.118 5.406 A 3.321 3.321 0 0 0 131.974 4.907 A 2.243 2.243 0 0 0 131.63 4.292 A 1.995 1.995 0 0 0 131.295 3.961 A 1.669 1.669 0 0 0 130.517 3.632 A 2.248 2.248 0 0 0 130.165 3.605 A 2.117 2.117 0 0 0 129.616 3.674 A 1.66 1.66 0 0 0 129.029 3.961 Q 128.565 4.316 128.337 4.907 A 3.402 3.402 0 0 0 128.126 5.818 A 4.13 4.13 0 0 0 128.108 6.208 A 3.836 3.836 0 0 0 128.185 6.988 A 3.185 3.185 0 0 0 128.337 7.503 Q 128.565 8.087 129.029 8.442 A 1.706 1.706 0 0 0 129.832 8.774 A 2.272 2.272 0 0 0 130.165 8.798 Z M 114.715 2.73 L 114.715 3.644 L 110.982 3.644 L 110.982 2.73 L 114.715 2.73 Z M 19.157 2.73 L 19.157 3.644 L 15.564 3.644 L 15.564 2.73 L 19.157 2.73 Z M 20.731 1.492 A 0.794 0.794 0 0 0 21.112 1.587 A 0.959 0.959 0 0 0 21.146 1.586 A 0.812 0.812 0 0 0 21.506 1.492 A 0.706 0.706 0 0 0 21.785 1.225 A 0.699 0.699 0 0 0 21.887 0.863 A 0.688 0.688 0 0 0 21.785 0.495 A 0.72 0.72 0 0 0 21.506 0.235 A 0.786 0.786 0 0 0 21.397 0.187 A 0.847 0.847 0 0 0 21.112 0.14 A 0.794 0.794 0 0 0 20.731 0.235 Q 20.554 0.33 20.452 0.495 A 0.688 0.688 0 0 0 20.351 0.863 A 0.699 0.699 0 0 0 20.452 1.225 A 0.706 0.706 0 0 0 20.731 1.492 Z"
						vector-effect="non-scaling-stroke" />
						
							</g>
						</svg>
			</h1>
			<div class="header_gnb">
				<div>
					<a href="museum.do?command=artworkList">예술품</a>
					<a href="museum.do?command=noticeList">소식지</a>
					<a href="museum.do?command=galleryList">이용자 갤러리</a>
					<a href="museum.do?command=qnaList">고객센터</a>
				</div>
				<!-- <div class="header_search">
					<div>
						<input type="text" placeholder="검색어를 입력하세요">
					</div>
					<div>
						<a class="btn_icon" href="#" title="검색">
							<img src="static/image/header/btn_search_open.png" alt="검색">
						</a>
					</div>
				</div> -->
			</div>
			<div class="login_join_box">
				<c:choose>
					<c:when test="${empty loginUser}">
						<c:if test="${not empty returnUrl}">
							<c:set var="urlPath" value="${returnUrl}" />
						</c:if>
						<a href="museum.do?command=loginForm&returnUrl=${urlPath}" class="login-join-box_btn">로그인</a>
						<a href="museum.do?command=contract&returnUrl=${urlPath}">회원가입</a>
					</c:when>
					<c:otherwise>
						<a href="museum.do?command=mypage" class="login-join-box_btn">${loginUser.name}(${loginUser.id})</a>
						<span onclick="ajax({command:'logout',returnUrl:'${urlPath}'})">로그아웃</span>
					</c:otherwise>
				</c:choose>
			</div>
			<%-- 			<div class="artwork sub-menu">
				<!-- request.setAttribute("kindList", ArtworkKind.values()); -->
				<c:forEach items="${ArtworkCategory.values()}" var="category">
					<a href="museum.do?command=artwork&category=${category.name()}">${category.name()}</a>
				</c:forEach>
			</div>
			<div class="notice sub-menu">
				<c:forEach items="${NoticeCategory.values()}" var="category">
					<a href="museum.do?command=notice&category=${category.name()}">${category.name()}</a>
				</c:forEach>
			</div>  --%>
		</nav>
	</header>
	<div class="header_gnb_list_containner">
		<div>
			<a href="museum.do?command=artworkList">전체</a>
			<a href="museum.do?command=artworkList&category=회화">회화</a>
			<a href="museum.do?command=artworkList&category=드로잉">드로잉</a>
			<a href="museum.do?command=artworkList&category=판화">판화</a>
			<a href="museum.do?command=artworkList&category=조각ㆍ설치">조각/설치</a>
			<a href="museum.do?command=artworkList&category=사진">사진</a>
			<a href="museum.do?command=artworkList&category=공예">공예</a>
			<a href="museum.do?command=artworkList&category=디자인">디자인</a>
			<a href="museum.do?command=artworkList&category=서예">서예</a>
		</div>
	</div>
	<div class="header_gnb_list_containner01">
		<div>
			<a href="museum.do?command=noticeList&category=전체">전체</a>
			<a href="museum.do?command=noticeList&category=공지사항">공지사항</a>
			<a href="museum.do?command=noticeList&category=이벤트">이벤트</a>
			<a href="museum.do?command=noticeList&category=매거진">매거진</a>
			<a href="museum.do?command=noticeList&category=신문">신문</a>
		</div>
	</div>
	<script>
		AOS.init({
			once : true
		});
		$(window).on('load', function() {
			AOS.refresh();
		});
	</script>
	<div class="content-wrap">