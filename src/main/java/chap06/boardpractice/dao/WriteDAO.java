package chap06.boardpractice.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import chap06.boardpractice.database.DBConnector;

public class WriteDAO {

	public static void insertBoard(String user_id, String board_title, String board_content) {
		
		String sql = "insert into prac_board values(user_id_seq.nextval, ?, ?, ?)";
		
		
		try(Connection conn = DBConnector.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);	
			) {
			pstmt.setString(1, user_id);
			pstmt.setString(2, board_title);
			pstmt.setString(3, board_content);
			int row = pstmt.executeUpdate();
			System.out.println(row + " row update");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
}
