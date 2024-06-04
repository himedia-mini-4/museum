<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/header.jsp">
	<jsp:param name="stylesheet" value="css/login.css" />
	<jsp:param name="script" value="script/ajax.js" />
</jsp:include>
<section>
	<article class="login_Form">
		<div class="login_Form_inner">
			<form name="loginForm" method="post" action="museum.do?command=login">
				<div class="login_icon_box">
					<div>
						<img src="images/ico_login_img.png" style="width: 80px; height: 80px;">
					</div>
					<h2>LogIn</h2>
				</div>
				<div class="field">
					<label>
						아이디
						<input name="id" type="text" placeholder="아이디" required>
					</label>
				</div>
				<div class="field">
					<label>비밀번호</label>
					<span> <input name="pwd" type="password" placeholder="비밀번호" required>
					</span>
				</div>
				<div class="btn">
					<input type="button" value="로그인" onclick="ajaxForm(document.loginForm);" required>
					<input type="button" value="회원가입" onclick="location.href='museum.do?command=joinForm'" required>
					<input type="button" value="아이디 찾기" onclick="" required>
				</div>
				<div style="font-size: 80%; font-weight: bold">${message}</div>
			</form>
		</div>
	</article>
	</div>
</section>
<%@ include file="/footer.jsp"%>