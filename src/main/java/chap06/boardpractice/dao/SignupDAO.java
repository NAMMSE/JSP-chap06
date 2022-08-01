package chap06.boardpractice.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import chap06.boardpractice.database.DBConnector;

public class SignupDAO {
	
	public SignupDAO(String id, String password) {
	
		String sql = "insert into prac_login values(?, ?)";
		
		
		try(Connection conn = DBConnector.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);	
		) {
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			int row = pstmt.executeUpdate();
			System.out.println(row + " row update");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

//	public void insertSignup(String id, String password) {
	//	}
}
