package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Student;
import utils.DbConnection;

public class AminLoginDAO {
	public static String adminLoginDao (Student st) throws SQLException{
		Connection con = DbConnection.createConnection();
		String sql_query = "select username, password from admin where username=?";
		PreparedStatement ps = con.prepareStatement(sql_query);
		
		ps.setString(1, st.getEmail());
		
		ResultSet rs = ps.executeQuery();
		
		
		
		
		
		
		while(rs.next()) {
			String userName=rs.getString(1);
			String password = rs.getString(2);
			//System.out.println("......."+password);
			if(userName.equals(st.getUsername()) && password.equals(st.getPassword())) {
				System.out.println("Sucess");
				return "Success";
			}
		}
		
		return "Faild";
	}
}
