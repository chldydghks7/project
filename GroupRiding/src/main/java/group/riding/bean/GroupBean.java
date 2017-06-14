package group.riding.bean;

import java.sql.*;

public class GroupBean {

	private String uid;
	private int gr_id;
	private String gr_name;
	private String gr_leader;
	private String gr_content;
	private Date gr_date;
	private String gr_icon;
	private String introduce;
	private int riding_no;
	

	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public int getRiding_no() {
		return riding_no;
	}
	public void setRiding_no(int riding_no) {
		this.riding_no = riding_no;
	}
	public String getGr_icon() {
		return gr_icon;
	}
	public void setGr_icon(String gr_icon) {
		this.gr_icon = gr_icon;
	}
	private String files;
	
	public String getFiles() {
		return files;
	}
	public void setFiles(String files) {
		this.files = files;
	}
	
	public int getGr_id() {
		return gr_id;
	}
	public void setGr_id(int gr_id) {
		this.gr_id = gr_id;
	}
	public String getGr_name() {
		return gr_name;
	}
	public void setGr_name(String gr_name) {
		this.gr_name = gr_name;
	}
	public String getGr_leader() {
		return gr_leader;
	}
	public void setGr_leader(String gr_leader) {
		this.gr_leader = gr_leader;
	}
	public String getGr_content() {
		return gr_content;
	}
	public void setGr_content(String gr_content) {
		this.gr_content = gr_content;
	}
	public Date getGr_date() {
		return gr_date;
	}
	public void setGr_date(Date gr_date) {
		this.gr_date = gr_date;
	}
	
	
	
}
