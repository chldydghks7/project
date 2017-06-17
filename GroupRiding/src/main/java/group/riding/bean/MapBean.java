package group.riding.bean;

public class MapBean {
	private int hp_id;
	private double latitude;
	private double longitude;
	private String place_kind;
	private String place_name;
	private int visit;
	
	public int getHp_id() {
		return hp_id;
	}

	public void setHp_id(int hp_id) {
		this.hp_id = hp_id;
	}

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
