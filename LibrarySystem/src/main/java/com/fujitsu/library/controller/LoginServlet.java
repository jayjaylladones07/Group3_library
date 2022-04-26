package com.fujitsu.library.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fujitsu.library.dao.LoginDao;
import com.fujitsu.library.model.LoginModel;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
		private LoginDao ld;
  
	  public void init() {
		   ld = new LoginDao();
	   }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("username");
		String password = request.getParameter("password");
		
		System.out.print(uname+" "+password);
		
		LoginModel lm = new LoginModel();
		lm.setUsername(uname);
		lm.setPassword(password);
		
		try {
			if(ld.validate(lm)){
				response.sendRedirect("views/member_page.jsp");
			}else {
				response.sendRedirect("views/login.jsp");
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
	
	}

}
