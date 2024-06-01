<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/header.jsp"%>



<section>
	<div class="write_top">
	<form action="museum.do?command=gallery" method="post" name="galleryForm" class="write-form">
		
		<h3>나의 갤러리 생성</h3>
		<div class="write_middle">
				<ul>
					<li>
						<label>갤러리명</label>
							<input type="text" placeholder="갤러리명 10자 이내로 입력하세요" name="gname">
					</li>
			
					<li>
						<label>갤러리명 설명</label>
							<input type="text" name="ginfo">	
					</li>
				</ul>
			<label>이미지 첨부</label><input type="file" name="image"/>
			</div>
			
			<div class="gallery_btn">
            <input class="btn" type="button" value="갤러리 등록" onclick="go_save()">
            <input class="btn" type="button" value="목록으로" 
            onclick="location.href='museum.do?command=galleryList'">
            
        </div>

	</form>
</div>		
</section>




<%@ include file="/footer.jsp"%>