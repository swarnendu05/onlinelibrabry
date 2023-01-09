package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Student;
import utils.DbConnection;

public class LoginDAO {

	public static String adminLogin (Student st) throws SQLException{
		Connection con = DbConnection.createConnection();
		String sql_query = "select email, password from student where email=?";
		PreparedStatement ps = con.prepareStatement(sql_query);
		
		ps.setString(1, st.getEmail());
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			String userName=rs.getString(1);
			String password = rs.getString(2);
			if(userName.equals(st.getEmail()) && password.equals(st.getPassword())) {
				System.out.println("Sucess");
				return "Success";
			}
		}
		
		return "Faild";
	}
	
	
}
