package group.riding.dto;

public class LoginDTO {	// ȭ�鿡�� ���޵Ǵ� �����͸� �����ϴ� �뵵 (Data Transfer Object)
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
