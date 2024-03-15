package com.poly.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Bai6
 */
@WebServlet("/infomationRectangle")
public class Bai6 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Bai6() {
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
		String isError = "false";
		request.setAttribute("error", isError);
		request.getRequestDispatcher("/views/rectangle/form.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String isError = "false";
		double chieuDai = 0;
		double chieuRong = 0;
		try {
			chieuDai = Double.parseDouble(request.getParameter("chieuDai"));
			chieuRong = Double.parseDouble(request.getParameter("chieuRong"));
			if (chieuDai <= 0 || chieuRong <= 0) {
				isError = "true";

			} else {
				String chuVi = String.valueOf((chieuDai + chieuRong) * 2);
				String dienTich = String.valueOf(chieuDai * chieuRong);
				request.setAttribute("chuVi", chuVi);
				request.setAttribute("dienTich", dienTich);
			}

		} catch (Exception e) {
			isError = "true";

		}
		request.setAttribute("error", isError);
		request.getRequestDispatcher("/views/rectangle/form.jsp").forward(request, response);

	}

}
