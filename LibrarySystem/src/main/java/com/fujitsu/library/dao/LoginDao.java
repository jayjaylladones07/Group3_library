package com.fujitsu.library.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.fujitsu.library.model.LoginModel;

public class LoginDao {
	
	
	public boolean validate(LoginModel lm) throws ClassNotFoundException {
		boolean status = false;
		
		
		try(Connection connection = JDBCUtils.getConnection();
			PreparedStatement ps = connection
			.prepareStatement("SELECT * FROM users WHERE username = ? AND password = ?")){
			
			ps.setString(1, lm.getUsername());
			ps.setString(2, lm.getPassword());
			
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
	//This is for Admin Validation
	public boolean validateAdmin(LoginModel lm) throws ClassNotFoundException {
		boolean status = false;
		
		
		try(Connection connection = JDBCUtils.getConnection();
			PreparedStatement ps = connection
			.prepareStatement("SELECT * FROM adminusers WHERE username = ? AND password = ?")){
			
			ps.setString(1, lm.getUsername());
			ps.setString(2, lm.getPassword());
			
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
}
