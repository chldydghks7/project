package group.riding.dto;

public class LoginDTO {	// 화면에서 전달되는 데이터를 수집하는 용도 (Data Transfer Object)
	private String uid;
	private String upw;
	private boolean useCookie;
	
	
	
	
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
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
}
