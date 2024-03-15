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

/**
 * Servlet implementation class UploadServlet
 */
@MultipartConfig
@WebServlet("/upload")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/lab3/form-upload.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		File dir= new File(request.getServletContext().getRealPath("/files"));
		if(!dir.exists()) {
			dir.mkdir();
		}
		
		Part photo= request.getPart("photo_file");
		File photoFile = new File(dir,photo.getSubmittedFileName());
		photo.write(photoFile.getAbsolutePath());
		Part doc = request.getPart("doc_file");
		File docFile = new File(dir,doc.getSubmittedFileName());
		doc.write(docFile.getAbsolutePath());
		
		request.setAttribute("img", photoFile);
		request.setAttribute("doc", docFile);
		request.getRequestDispatcher("/views/lab3/result-upload.jsp").forward(request, response);
	}

}
