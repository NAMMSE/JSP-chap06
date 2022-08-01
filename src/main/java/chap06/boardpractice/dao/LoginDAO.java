package chap06.boardpractice.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import chap06.boardpractice.database.DBConnector;

public class LoginDAO {
	
	public static HashMap<String, String> getList(){
		//List<Login> list = new ArrayList<>();
		HashMap<String, String> map = new HashMap<>();
		String sql = "select * from prac_login";
		
		
		try(Connection conn = DBConnector.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
		) {
			while(rs.next()) {
				//list.add(new Login(rs.getString("login_id"), rs.getString("login_password")));
				System.out.println(rs.getString("user_id") + rs.getString("user_password"));
				map.put(rs.getString("user_id"), rs.getString("user_password"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return map;
	}

}
