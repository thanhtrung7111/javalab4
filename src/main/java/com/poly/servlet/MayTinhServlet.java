package com.poly.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class MayTinhServlet
 */
@WebServlet("/maytinh")
public class MayTinhServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MayTinhServlet() {
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
		request.getRequestDispatcher("/views/form-maytinh.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Hello");
		try {
			double numberOne = Double.parseDouble(request.getParameter("numberOne"));
			double numberTwo = Double.parseDouble(request.getParameter("numberTwo"));
			String action = request.getParameter("action");
			switch (action) {
			case "+":
				request.setAttribute("message", "Kết quả: " + (numberOne + numberTwo));
				break;
			case "-":
				request.setAttribute("message", "Kết quả: " + (numberOne - numberTwo));
				break;
			case "*":
				request.setAttribute("message", "Kết quả: " + (numberOne * numberTwo));
				break;
			case "/":
				request.setAttribute("message", "Kết quả: " + (numberOne / numberTwo));
				break;
			default:
				throw new IllegalArgumentException("Unexpected value: " + action);
			}
		} catch (Exception e) {
			request.setAttribute("message", "Sai kiểu dữ liệu hoặc phép tính sai");
		}
		request.getRequestDispatcher("/views/form-maytinh.jsp").forward(request, response);
	}

}
