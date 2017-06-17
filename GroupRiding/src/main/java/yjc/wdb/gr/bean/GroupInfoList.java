package yjc.wdb.gr.bean;

public class GroupInfoList {


	private String fullName; //�봽濡쒗븘 �궗吏꾧꼍濡�
	private String uid; //�븘�씠�뵒
	private int riding_no; //�씪�씠�뵫�븳 �슏�닔
	private double alldistance; //珥앷굅由�
	private double avgspeed; //�룊洹좎냽�룄 

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

	
}
