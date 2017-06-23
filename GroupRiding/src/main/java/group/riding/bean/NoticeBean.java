package group.riding.bean;



public class NoticeBean {
	private int noticeId;			//	공지ID
	private String gr_name;
	private String notice_title;	// 공지 제목
	private String start_point;		// 출발지
	private String end_point;		// 도착지
	private String ridingDate;		// 라이딩 날짜
	private String ridingTime;		// 라이딩 시간
	private String material;		// 준비물
	
	private String joing;	// 공지참여 여부
	private String uid;
	

	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getJoing() {
		return joing;
	}
	public void setJoing(String joing) {
		this.joing = joing;
	}
	public int getNoticeId() {
		return noticeId;
	}
	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}
	public String getGr_name() {
		return gr_name;
	}
	public void setGr_name(String gr_name) {
		this.gr_name = gr_name;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getStart_point() {
		return start_point;
	}
	public void setStart_point(String start_point) {
		this.start_point = start_point;
	}
	public String getEnd_point() {
		return end_point;
	}
	public void setEnd_point(String end_point) {
		this.end_point = end_point;
	}
	public String getRidingDate() {
		return ridingDate;
	}
	public void setRidingDate(String ridingDate) {
		this.ridingDate = ridingDate;
	}
	public String getRidingTime() {
		return ridingTime;
	}
	public void setRidingTime(String ridingTime) {
		this.ridingTime = ridingTime;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	
	
	
}
