package group.riding.bean;

public class BoardReplyBean {
	private int rno;
	private int writing_Id;
	private String uid;
	private String replyText;
	private String fullName;
	
	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public int getRno() {
		return rno;
	}
	
	public void setRno(int rno) {
		this.rno = rno;
	}
	
	public int getWriting_Id() {
		return writing_Id;
	}
	
	public void setWriting_Id(int writing_Id) {
		this.writing_Id = writing_Id;
	}
	
	public String getUid() {
		return uid;
	}
	
	public void setUid(String uid) {
		this.uid = uid;
	}
	
	public String getReplyText() {
		return replyText;
	}
	
	public void setReplyText(String replyText) {
		this.replyText = replyText;
	}
}
