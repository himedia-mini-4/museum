package com.team4.museum.controller.action.member;

import java.io.IOException;

import com.team4.museum.controller.action.Action;
import com.team4.museum.dao.MemberDao;
import com.team4.museum.vo.MemberVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		response.getWriter().write(getResult(request, response).toJson());
	}

	private Result getResult(HttpServletRequest request, HttpServletResponse response) {
		// 파라미터에 'id'가 없으면 FAILURE 를 반환
		String id = request.getParameter("id");
		if (id == null || id.equals("")) {
			return new Result(Result.FAILURE, "id 를 입력해주세요.");
		}

		// 파라미터에 'pwd'가 없으면 FAILURE 를 반환
		String pwd = request.getParameter("pwd");
		if (pwd == null || id.equals("")) {
			return new Result(Result.FAILURE, "pwd 를 입력해주세요.");
		}

		// 'id'에 해당하는 'MemberVO'가 없으면 FAILURE 를 반환
		MemberVO mvo = MemberDao.getInstance().getMember(id);
		if (mvo == null) {
			return new Result(Result.FAILURE, "존재하지 않는 아이디입니다.");
		}

		// 'pwd'가 비밀번호와 다르면 FAILURE 를 반환
		if (!mvo.getPwd().equals(pwd)) {
			return new Result(Result.FAILURE, "잘못된 비밀번호입니다.");
		}

		// 로그인 성공 시
		// 세션에 로그인 정보를 저장
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", mvo);

		// 돌아갈 페이지 정보와 함께 SUCCESS 를 반환
		return new Result(Result.SUCCESS, "museum.do?command=index");
	}

	private class Result {
		public static final String SUCCESS = "success";
		public static final String FAILURE = "failure";

		public String code;
		public String data;

		public Result(String code, String data) {
			this.code = code;
			this.data = data;
		}

		public String toJson() {
			return "{\"code\":\"" + code + "\",\"data\":\"" + data + "\"}";
		}
	}
}
