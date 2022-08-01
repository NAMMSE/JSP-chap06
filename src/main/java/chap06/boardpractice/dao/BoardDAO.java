package chap06.boardpractice.dao;

public class BoardDAO {
	
	private Integer board_id;
	private String board_title;
	private String user_id;
	private String board_content;
	
	public BoardDAO(Integer board_id, String board_title, String user_id, String board_content) {
		this.board_content = board_content;
		this.board_id = board_id;
		this.board_title = board_title;
		this.user_id = user_id;
	}

}
