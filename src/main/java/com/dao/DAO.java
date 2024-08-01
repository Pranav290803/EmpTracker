package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DAO {
	 public static Connection getConnection() {
	 Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pranav", "root", "Pranav@29");
        } catch (Exception e) {
            e.printStackTrace();
            
        }
        return conn; 
 }

}
