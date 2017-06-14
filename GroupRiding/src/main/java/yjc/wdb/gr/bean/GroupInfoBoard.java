package yjc.wdb.gr.bean;

import java.sql.Date;

public class GroupInfoBoard {
	private int group_id;
	private String member_id;
	private String bbs_id;
	private String writing_title;
	private String writing_content;
	private Date regist_date;
	private int writing_id;
	
	public Date getRegist_date() {
		return regist_date;
	}
	public void setRegist_date(Date regist_date) {
		this.regist_date = regist_date;
	}
	private int view_Number;

	
	
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	
	public String getWriting_title() {
		return writing_title;
	}
	public void setWriting_title(String writing_title) {
		this.writing_title = writing_title;
	}
	public String getWriting_content() {
		return writing_content;
	}
	public void setWriting_content(String writing_content) {
		this.writing_content = writing_content;
	}
	public int getGroup_id() {
		return group_id;
	}
	public void setGroup_id(int group_id) {
		this.group_id = group_id;
	}
	public String getBbs_id() {
		return bbs_id;
	}
	public void setBbs_id(String bbs_id) {
		this.bbs_id = bbs_id;
	}
	
	public int getWriting_id() {
		return writing_id;
	}
	public void setWriting_id(int writing_id) {
		this.writing_id = writing_id;
	}
	public int getView_Number() {
		return view_Number;
	}
	public void setView_Number(int view_Number) {
		this.view_Number = view_Number;
	}
	
	
	public String toString(){
		return "그룹아이디: "+group_id
			 + " 회원아이디: "+member_id
			 + " 게시판아이디: " +bbs_id
			 + " 제목: " +writing_title
			 + " 내용: " +writing_content
			 + " 등록일: " +regist_date
			 + " 번호: " +writing_id;

	}

	
}
