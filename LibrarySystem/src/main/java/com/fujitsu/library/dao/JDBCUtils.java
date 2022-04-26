package com.fujitsu.library.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtils {
	
	private static String jdbcUrl = "jdbc:mysql://localhost/Library_db?useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false";
	private static String jdbcUname = "root";
	private static String jdbcPword = "root";
	
	public static Connection getConnection(){
		Connection connection = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcUrl,jdbcUname,jdbcPword);
			System.out.print(connection);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
		return connection;
	}
}
