package group.riding.bean;

public class RidingInfoBean {
	private int riding_id;
	private String uid;
	private String alltime;
	private String startDate;
	private double alldistance;
	private double avgspeed;
	private int kml_id;
	private int kcal;
	
	// gr_data
	private double speed;
	private double altitude;
	private String data_date;
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
	public int getKml_id() {
		return kml_id;
	}
	public void setKml_id(int kml_id) {
		this.kml_id = kml_id;
	}
	public int getKcal() {
		return kcal;
	}
	public void setKcal(int kcal) {
		this.kcal = kcal;
	}
	public double getSpeed() {
		return speed;
	}
	public void setSpeed(double speed) {
		this.speed = speed;
	}
	public double getAltitude() {
		return altitude;
	}
	public void setAltitude(double altitude) {
		this.altitude = altitude;
	}
	public String getData_date() {
		return data_date;
	}
	public void setData_date(String data_date) {
		this.data_date = data_date;
	}

	
	
	
	
}
