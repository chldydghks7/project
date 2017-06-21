package group.riding.bean;

public class RidingInfo {
	private String uid;
	private String alltime;
	private String kml_name;
	private String startDate;
	private Double alldistance;
	private Double avgspeed;
	private int kml_id;
	private int riding_id;
	
	
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
	public Double getAlldistance() {
		return alldistance;
	}
	public void setAlldistance(Double alldistance) {
		this.alldistance = alldistance;
	}
	public Double getAvgspeed() {
		return avgspeed;
	}
	public void setAvgspeed(Double avgspeed) {
		this.avgspeed = avgspeed;
	}
	public String getKml_name() {
		return kml_name;
	}
	public void setKml_name(String kml_name) {
		this.kml_name = kml_name;
	}
	public int getKml_id() {
		return kml_id;
	}
	public void setKml_id(int kml_id) {
		this.kml_id = kml_id;
	}
	public int getRiding_id() {
		return riding_id;
	}
	public void setRiding_id(int riding_id) {
		this.riding_id = riding_id;
	}
	
	
	
	
	
	
	
	
}
