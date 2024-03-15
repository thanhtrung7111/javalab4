package com.poly.lab2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class TamGiacServlet
 */
@WebServlet({ "/tam-giac", "/dien-tich", "/chu-vi" })
public class TamGiacServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TamGiacServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/views/lab2/tam-giac.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			double a = Double.parseDouble(request.getParameter("canhA"));
			double b = Double.parseDouble(request.getParameter("canhB"));
			double c = Double.parseDouble(request.getParameter("canhC"));

			if ((a + b) > c && (a + c) > b && (b + c) > a) {
				String uri = request.getRequestURI();
				if (uri.contains("dien-tich")) {
					double dienTich = Math.sqrt((a + b + c) * (a + b - c) * (a + c - b) * (b + c - a)) / 4;
					request.setAttribute("message", "Diện tích hình tam giác là: " + dienTich);
				}else {
					double chuVi = (a+b+c);
					request.setAttribute("message", "Chu vi hình tam giác là: "+chuVi);
				}
			} else {
				request.setAttribute("message", "Không thỏa mã các cạnh của tam giác");
			}
			request.getRequestDispatcher("/views/lab2/tam-giac.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("message", "Sai dữ liệu");
			request.getRequestDispatcher("/views/lab2/tam-giac.jsp").forward(request, response);
		}
	}

}
