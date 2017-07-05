package group.riding.bean;

import java.sql.Date;

public class UserBean {
	private Integer uno;
	private String uid;
	private String upw;
	private String upw1;
	private String uname;
	private Date uage;
	private int upoint;
	
	private String files;
	
	public String getFiles() {
		return files;
	}
	public void setFiles(String files) {
		this.files = files;
	}

	
	

	public Integer getUno() {
		return uno;
	}
	public void setUno(Integer uno) {
		this.uno = uno;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUpw() {
		return upw;
	}
	public void setUpw(String upw) {
		this.upw = upw;
	}
	public String getUpw1() {
		return upw1;
	}
	public void setUpw1(String upw1) {
		this.upw1 = upw1;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}

	public Date getUage() {
		return uage;
	}
	public void setUage(Date uage) {
		this.uage = uage;
	}
	public int getUpoint() {
		return upoint;
	}
	public void setUpoint(int upoint) {
		this.upoint = upoint;
	}
	
	
	
}
