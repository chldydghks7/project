package group.riding.bean;

public class RidingInfoBean {
	private int riding_id;
	private String uid;
	private String alltime;
	private String startDate;
	private double alldistance;
	private double avgspeed;
	
	
	public int getRiding_id() {
		return riding_id;
	}
	public void setRiding_id(int riding_id) {
		this.riding_id = riding_id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getAlltime() {
		return alltime;
	}
	public void setAlltime(String alltime) {
		this.alltime = alltime;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
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
