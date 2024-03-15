package com.poly.lab2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

/**
 * Servlet implementation class DangKyServlet
 */
@WebServlet("/dang-ky")
public class DangKyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DangKyServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/views/lab2/form-register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		String gender = request.getParameter("gender");
		String married = request.getParameter("married");
		String country = request.getParameter("country");
		String notes = request.getParameter("notes");
		String[] hobbies = request.getParameterValues("hobby");
		
		System.out.println(">>username: "+username);
		System.out.println(">>gender: "+ gender);
		System.out.println(">>married: "+ married);
		System.out.println(">>country: " + country);	
		System.out.println(">>Sở thích: " + Arrays.toString(hobbies));	
		
		request.setAttribute("username", username);
		request.setAttribute("password", password);
		request.setAttribute("gender", Boolean.parseBoolean(gender) == true ? "Nam" : "Nữ");
		request.setAttribute("married",  Boolean.parseBoolean(gender) == true ? "Đã kết hôn" : "Chưa kết hôn");
		request.setAttribute("country", country);
		request.setAttribute("notes", notes);
		request.setAttribute("hobbies", Arrays.toString(hobbies).trim().replace("[", "").replace("]", ""));
		request.getRequestDispatcher("/views/lab2/result-register.jsp").forward(request, response);
	}

}
