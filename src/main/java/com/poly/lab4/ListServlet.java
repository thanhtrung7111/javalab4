package com.poly.lab4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/lab4-list")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Item> items = Arrays.asList(new Item[] { new Item("Nokia 2020", "iphone13.webp", 500, 0.1),
				new Item("Samsung Xyz", "iphone12.png", 700, 0.15), new Item("iPhone Xy", "iphone13.webp", 900, 0.25),
				new Item("Sony Erricson", "iphone14.webp", 55, 0.3), new Item("Seamen", "iphone15.webp", 70, 0.5),
				new Item("Oppo 2021", "iphone12.png", 200, 0.2) });
		request.setAttribute("items", items);
		request.getRequestDispatcher("/views/lab4/layout2.jsp").forward(request, response);;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
