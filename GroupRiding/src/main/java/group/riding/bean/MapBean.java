package group.riding.bean;

public class MapBean {
	private double latitude;
	private double longitude;
	private String place_kind;
	private String place_name;
	private int visit;
	
	public double getLatitude() {
		return latitude;
	}
	
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	
	public double getLongitude() {
		return longitude;
	}
	
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	
	public String getPlace_kind() {
		return place_kind;
	}
	
	public void setPlace_kind(String place_kind) {
		this.place_kind = place_kind;
	}
	
	public String getPlace_name() {
		return place_name;
	}
	
	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}
	
	public int getVisit() {
		return visit;
	}
	
	public void setVisit(int visit) {
		this.visit = visit;
	}
}
