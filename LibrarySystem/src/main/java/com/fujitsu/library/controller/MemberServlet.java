package com.fujitsu.library.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.fujitsu.library.dao.MemberDao;
import com.fujitsu.library.model.MemberModel;



@WebServlet("/")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	MemberDao memberDao = new MemberDao();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	String name= request.getParameter("name");
	        String email= request.getParameter("email");
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");

	        MemberModel member = new MemberModel();
	        member.setName(name);
	        member.setEmail(email);
	        member.setUsername(username);;
	        member.setPassword(password);

	        try {
	            int result = memberDao.registerMember(member);
	            if (result == 1) {
	                request.setAttribute("NOTIFICATION", "User Registered Successfully!");
	                response.sendRedirect("views/index.jsp");
	                
	            }

	        } catch (Exception e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	}

}
