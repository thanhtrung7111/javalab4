package com.poly.lab3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/lab3-login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = CookieUtils.get("username", request);
		String password = CookieUtils.get("password", request);
		request.setAttribute("username", username);
		request.setAttribute("password", password);
		System.out.println(username);
		System.out.println(password);
		request.getRequestDispatcher("/views/lab3/form-login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String remember = request.getParameter("remember");

		if (!username.equals("fpoly")) {
			request.setAttribute("message", "Thông tin đăng nhập sai");
		} else if (password.length() < 6) {
			request.setAttribute("message", "Sai mật khẩu");
		} else {
			request.setAttribute("message", "Đăng nhập thành công");
			int hours = (remember == null) ? 0 : 30 * 24;
			CookieUtils.add("username", username, hours, response);
			CookieUtils.add("password", password, hours, response);
		}
		request.getRequestDispatcher("/views/lab3/form-login.jsp").forward(request, response);
	}

}
