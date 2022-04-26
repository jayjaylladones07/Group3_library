package com.fujitsu.library.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtils {
	
	private static String jdbcUrl = "jdbc:sqlite:C:\\sqlitedb\\LibrarySystem.db";

	
	public static Connection getConnection(){
		Connection connection = null;
		
		try {
			Class.forName("org.sqlite.JDBC");
			connection = DriverManager.getConnection(jdbcUrl);
			System.out.print(connection);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
		return connection;
	}
}
