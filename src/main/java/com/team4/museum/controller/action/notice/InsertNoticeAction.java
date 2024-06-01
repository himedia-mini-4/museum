package com.team4.museum.controller.action.notice;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;

import com.team4.museum.controller.action.Action;
import com.team4.museum.dao.MemberDao;
import com.team4.museum.dao.NoticeDAO;
import com.team4.museum.vo.MemberVO;
import com.team4.museum.vo.NoticeVO;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

public class InsertNoticeAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		NoticeDAO ndao = NoticeDAO.getInstance();
		NoticeVO nvo = new NoticeVO();

		MemberDao mdao = MemberDao.getInstance();
		MemberVO mvo = new MemberVO();

		/* 소식지에 게시물을 올릴때 필요한 파라미터(관리자용) */
		mvo.setId(request.getParameter("id"));
		System.out.println("id : " + request.getParameter("id"));
		mvo.setPwd(request.getParameter("pwd"));
		nvo.setTitle(request.getParameter("title"));
		nvo.setAuthor(request.getParameter("author"));
		nvo.setContent(request.getParameter("content"));

		HttpSession session = request.getSession();
		ServletContext context = session.getServletContext();
		String uploadFilePath = context.getRealPath("images");

		// 저장경로 생성
		File uploadDir = new File(uploadFilePath);
		if (!uploadDir.exists())
			uploadDir.mkdir();

		String fileName = "";
		for (Part p : request.getParts()) {
			fileName = "";
			// 전송된 파라미터들중 filename 이라는 글자가 포함된 헤더를 찾고, 있으면 이름 추출
			for (String content : p.getHeader("content-disposition").split(";")) {
				if (content.trim().startsWith("filename"))
					fileName = content.substring(content.indexOf("=") + 2, content.length() - 1);
			}
			String saveFilename = "";
			// 추출된 이름이 있다면
			if (!fileName.equals("")) {
				Calendar today = Calendar.getInstance();
				long dt = today.getTimeInMillis();
				String fn1 = fileName.substring(0, fileName.indexOf("."));
				String fn2 = fileName.substring(fileName.indexOf("."));
				saveFilename = fn1 + dt + fn2;
				p.write(uploadFilePath + File.separator + saveFilename); // 파일 저장
				nvo.setImage(fileName);
				nvo.setSavefilename(saveFilename);
			}
		}
		ndao.insertNotice(nvo);
		response.sendRedirect("museum.do?command=index");
	}

}