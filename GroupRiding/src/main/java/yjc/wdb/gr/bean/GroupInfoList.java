package yjc.wdb.gr.bean;

public class GroupInfoList {


	private String fullName; //프로필 사진경로
	private String uid; //아이디
	private int riding_no; //라이딩한 횟수
	private double alldistance; //총거리
	private double avgspeed; //평균속도 

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public int getRiding_no() {
		return riding_no;
	}

	public void setRiding_no(int riding_no) {
		this.riding_no = riding_no;
	}

	public double getAlldistance() {
		return alldistance;
	}

	public void setAlldistance(double alldistance) {
		this.alldistance = alldistance;
	}



	public double getAvgspeed() {
		return avgspeed;
	}

	public void setAvgspeed(double avgspeed) {
		this.avgspeed = avgspeed;
	}

	public String toString(){
		return "이미지경로: "+fullName
			 + " 회원아이디: "+uid
			 + " 라이딩한 횟수: " +riding_no
			 + " 거리: " +alldistance
			 + " 평균속도: " +avgspeed;

	}

}
