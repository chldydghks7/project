package group.riding.bean;

public class HotplaceBean {
	private int speed;
	private String location;
	
	public int getSpeed() {
		return speed;
	}
	public void setSpeed(int speed) {
		this.speed = speed;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	// hotPlace DB
	private int hp_id;
	private String latitude;
	private String longitude;
	private String place_kind;
	private String place_name;
	private int visit;

	public int getHp_id() {
		return hp_id;
	}
	public void setHp_id(int hp_id) {
		this.hp_id = hp_id;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
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
