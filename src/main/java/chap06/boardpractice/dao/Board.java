package chap06.boardpractice.dao;

public class Board {
	
	private Integer board_id;
	private String board_title;
	private String user_id;
	private String board_content;
	
	public Board(Integer board_id, String board_title, String user_id, String board_content) {
		this.board_content = board_content;
		this.board_id = board_id;
		this.board_title = board_title;
		this.user_id = user_id;
	}

	public Integer getBoard_id() {
		return board_id;
	}

	public void setBoard_id(Integer board_id) {
		this.board_id = board_id;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	
	

}
