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
		response.sendRedirect("views/login.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		System.out.print(username+" "+password);
		
		LoginModel lm = new LoginModel();
		lm.setUsername(username);
		lm.setPassword(password);
		
		try {
				if(ld.validate(lm)){
					response.sendRedirect("views/member_page.jsp");
				}else if(ld.validateAdmin(lm)){
					response.sendRedirect("views/admin/index_admin.jsp");
				}else {
					response.sendRedirect("views/index.jsp");
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	
	}

}
