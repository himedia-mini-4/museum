package com.team4.museum.controller.action.member;

import java.io.IOException;

import com.team4.museum.controller.action.Action;
import com.team4.museum.dao.MemberDao;
import com.team4.museum.util.AjaxResult;
import com.team4.museum.vo.MemberVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getResult(request, response).applyToResponse(response);
	}

	private AjaxResult getResult(HttpServletRequest request, HttpServletResponse response) {
		// 파라미터에 'id'가 없으면 FAILURE 를 반환
		String id = request.getParameter("id");
		if (id == null || id.equals("")) {
			return new AjaxResult(AjaxResult.BAD_REQUEST, "'id'를 입력해주세요");
		}

		// 파라미터에 'pwd'가 없으면 FAILURE 를 반환
		String pwd = request.getParameter("pwd");
		if (pwd == null || id.equals("")) {
			return new AjaxResult(AjaxResult.BAD_REQUEST, "'pwd'를 입력해주세요");
		}

		// 'id'에 해당하는 'MemberVO'가 없으면 FAILURE 를 반환
		MemberVO mvo = MemberDao.getInstance().getMember(id);
		if (mvo == null) {
			return new AjaxResult(AjaxResult.NOT_FOUND, "존재하지 않는 아이디입니다");
		}

		// 'pwd'가 비밀번호와 다르면 FAILURE 를 반환
		if (!mvo.getPwd().equals(pwd)) {
			return new AjaxResult(AjaxResult.BAD_REQUEST, "잘못된 비밀번호입니다");
		}

		// 로그인 성공 시
		// 세션에 로그인 정보를 저장
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", mvo);

		// 세션에 저장된 돌아갈 페이지 정보를 확인하고, 없으면 index 페이지로 이동
		String returnUrl = (String) session.getAttribute("returnUrl");
		if (returnUrl == null) {
			returnUrl = "museum.do?command=index";
		} else {
			// 세션에 저장된 돌아갈 페이지 정보를 삭제 (한 번만 사용)
			session.removeAttribute("returnUrl");
		}

		// 돌아갈 페이지 정보와 함께 SUCCESS 를 반환
		return new AjaxResult(AjaxResult.OK, "로그인에 성공하였습니다", returnUrl);
	}

	/**
	 * 로그인이 필요한 페이지에서 세션에서 로그인한 사용자의 정보를 가져온다. 로그인이 안되어 있으면 자동으로 로그인 페이지로 이동한다.
	 * 
	 * @param request
	 * @param response
	 * 
	 * @return 로그인한 사용자의 정보 (MemberVO), 로그인이 안되어 있으면 null
	 * 
	 * @throws IOException
	 */
	public static MemberVO getLoginUser(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		return getLoginUser(request, response, "museum.do?" + request.getQueryString());
	}

	/**
	 * 로그인이 필요한 페이지에서 세션에서 로그인한 사용자의 정보를 가져온다. 로그인이 안되어 있으면 자동으로 로그인 페이지로 이동한다.
	 * 
	 * @param request
	 * @param response
	 * @param returnUrl 로그인 후 돌아갈 페이지
	 * 
	 * @return 로그인한 사용자의 정보 (MemberVO), 로그인이 안되어 있으면 null
	 * 
	 * @throws IOException
	 */
	public static MemberVO getLoginUser(HttpServletRequest request, HttpServletResponse response, String returnUrl)
			throws IOException {

		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if (mvo == null) {
			session.setAttribute("returnUrl", returnUrl);
			response.sendRedirect("museum.do?command=loginForm");
			return null;
		}

		return mvo;
	}

	/**
	 * 로그인이 필요한 페이지에서 로그인 여부를 확인한다. 로그인이 안되어 있으면 false 를 반환한다.
	 * 
	 * @param request
	 * @param response
	 * 
	 * @return 로그인이 되어 있으면 true, 아니면 false
	 * 
	 * @throws IOException
	 */
	public static boolean isLogined(HttpServletRequest request, HttpServletResponse response) throws IOException {
		return getLoginUser(request, response) != null;
	}

	/**
	 * 로그인이 필요한 페이지에서 로그인 여부를 확인한다. 로그인이 안되어 있으면 false 를 반환한다.
	 * 
	 * @param request
	 * @param response
	 * @param returnUrl 로그인 후 돌아갈 페이지
	 * 
	 * @return 로그인이 되어 있으면 true, 아니면 false
	 * 
	 * @throws IOException
	 */
	public static boolean isLogined(HttpServletRequest request, HttpServletResponse response, String returnUrl)
			throws IOException {
		return getLoginUser(request, response, returnUrl) != null;
	}
}
