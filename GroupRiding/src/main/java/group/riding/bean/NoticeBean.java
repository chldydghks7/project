package group.riding.bean;



public class NoticeBean {
	int noticeId;			//	공지ID
	String gr_name;
	String notice_title;	// 공지 제목
	String start_point;		// 출발지
	String end_point;		// 도착지
	String ridingDate;		// 라이딩 날짜
	String ridingTime;		// 라이딩 시간
	String material;		// 준비물
	
	
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
