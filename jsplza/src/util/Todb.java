package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Todb {
	public Connection getc(){
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/jsp";
		String name="root";
		String pwd="root";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url, name, pwd);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
}
