package com.poly.lab3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;

/**
 * Servlet implementation class StaffServlet
 */

@MultipartConfig
@WebServlet("/staff")
public class StaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Hello thanh trung dep trai");
		request.getRequestDispatcher("/views/lab3/form-register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			File dir = new File(request.getServletContext().getRealPath("/files"));
			if(!dir.exists()) {
				dir.mkdir();
			}
			
			Part photo = request.getPart("photo");
			File photoFile = new File(dir, photo.getSubmittedFileName());
			photo.write(photoFile.getAbsolutePath());
			DateTimeConverter dtc = new DateConverter(new Date());
			dtc.setPattern("MM/dd/yyyy");
			ConvertUtils.register(dtc,Date.class);
			Staff staff = new Staff();
			BeanUtils.populate(staff, request.getParameterMap());
			staff.setPhoto(photoFile.getName());
			System.out.println("Hello world");
			request.setAttribute("staff", staff);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/views/lab3/result-register.jsp").forward(request, response);
	}

}
