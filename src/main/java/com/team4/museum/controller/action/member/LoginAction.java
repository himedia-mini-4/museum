package com.team4.museum.controller.action.member;

import static com.team4.museum.util.AjaxResult.BAD_REQUEST;
import static com.team4.museum.util.AjaxResult.NOT_FOUND;
import static com.team4.museum.util.AjaxResult.OK;

import java.io.IOException;

import com.team4.museum.controller.action.Action;
import com.team4.museum.dao.MemberDao;
import com.team4.museum.util.AjaxResult;
import com.team4.museum.util.UrlUtil;
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
		// 파라미터에 'id'가 없으면 BAD_REQUEST 를 반환
		String id = request.getParameter("id");
		if (id == null || id.equals("")) {
			return new AjaxResult(BAD_REQUEST, "'id'를 입력해주세요");
		}

		// 파라미터에 'pwd'가 없으면 BAD_REQUEST 를 반환
		String pwd = request.getParameter("pwd");
		if (pwd == null || id.equals("")) {
			return new AjaxResult(BAD_REQUEST, "'pwd'를 입력해주세요");
		}

		// 'id'에 해당하는 'MemberVO'가 없으면 NOT_FOUND 를 반환
		MemberVO mvo = MemberDao.getInstance().getMember(id);
		if (mvo == null) {
			return new AjaxResult(NOT_FOUND, "존재하지 않는 아이디입니다");
		}

		// 'pwd'가 비밀번호와 다르면 BAD_REQUEST 를 반환
		if (!mvo.getPwd().equals(pwd)) {
			return new AjaxResult(BAD_REQUEST, "잘못된 비밀번호입니다");
		}

		// 로그인 성공 시
		// 세션에 로그인 정보를 저장
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", mvo);

		// 돌아갈 페이지 정보를 확인하고, 없으면 index 페이지로 이동
		String returnUrl = "museum.do?command=index";
		String returnUrlParam = (String) request.getParameter("returnUrl");
		if (returnUrlParam != null && !returnUrlParam.isEmpty()) {
			returnUrl = UrlUtil.decode(returnUrlParam);
		}

		// 돌아갈 페이지 정보와 함께 OK 를 반환
		return new AjaxResult(OK, "로그인에 성공하였습니다", returnUrl);
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
		return getLoginUser(request, response, UrlUtil.getUrlPath(request));
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
			response.sendRedirect(getLoginUrl(returnUrl));
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

	/**
	 * 로그인 페이지 URL을 생성한다.
	 * 
	 * @param returnUrl 로그인 후 돌아갈 페이지
	 * 
	 * @return 로그인 페이지 URL
	 */
	public static String getLoginUrl(String returnUrl) {
		return "museum.do?command=loginForm&returnUrl=" + UrlUtil.encode(returnUrl);
	}
}
