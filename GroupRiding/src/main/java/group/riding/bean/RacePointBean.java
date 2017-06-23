package group.riding.bean;

public class RacePointBean {
	//	gr_racepoint
	private int racepoint_id;
	private String start_location;
	private String stop_location;
	
	//	gr_racepoint_board
	private int ra_board_id;
	private String ra_title;
	private String ra_content;
	private String regDate;
	private int ra_viewcnt;
	//	gr_racepoint_reply
	private int ra_reply_id;
	private String uid;
	private String ra_reply_comment;
	private String fullName;	// 프로필사진
	
	
	
	
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public int getRacepoint_id() {
		return racepoint_id;
	}
	public void setRacepoint_id(int racepoint_id) {
		this.racepoint_id = racepoint_id;
	}
	public String getStart_location() {
		return start_location;
	}
	public void setStart_location(String start_location) {
		this.start_location = start_location;
	}
	public String getStop_location() {
		return stop_location;
	}
	public void setStop_location(String stop_location) {
		this.stop_location = stop_location;
	}
	public int getRa_board_id() {
		return ra_board_id;
	}
	public void setRa_board_id(int ra_board_id) {
		this.ra_board_id = ra_board_id;
	}
	public String getRa_title() {
		return ra_title;
	}
	public void setRa_title(String ra_title) {
		this.ra_title = ra_title;
	}
	public String getRa_content() {
		return ra_content;
	}
	public void setRa_content(String ra_content) {
		this.ra_content = ra_content;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getRa_viewcnt() {
		return ra_viewcnt;
	}
	public void setRa_viewcnt(int ra_viewcnt) {
		this.ra_viewcnt = ra_viewcnt;
	}
	public int getRa_reply_id() {
		return ra_reply_id;
	}
	public void setRa_reply_id(int ra_reply_id) {
		this.ra_reply_id = ra_reply_id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getRa_reply_comment() {
		return ra_reply_comment;
	}
	public void setRa_reply_comment(String ra_reply_comment) {
		this.ra_reply_comment = ra_reply_comment;
	}
	
	
	
	
	
	
	
	
	
}
