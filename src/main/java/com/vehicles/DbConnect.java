package com.vehicles;

import java.sql.Connection;
import java.sql.*;

public class DbConnect {
	
	private static Connection con;
	  public static Connection Connect()
	  {
		   try{
			   Class.forName("com.mysql.cj.jdbc.Driver");
			   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vsmsdbjsp","root","");
		   }
		   catch(Exception e){
			   e.printStackTrace();
		   }
		   return con;
	  }	
}
