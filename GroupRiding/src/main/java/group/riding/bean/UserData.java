package group.riding.bean;

public class UserData {

	   private double speed;
	   private double altitude;
	   private String uid;
	   
	   
	   
	   
	   
	   public String getUid() {
	      return uid;
	   }

	   public void setUid(String uid) {
	      this.uid = uid;
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

	   public void setSpeed(int speed) {
	      this.speed = speed;
	   }
	   
	   public void setAltitude(int altitude) {
	      this.altitude = altitude;
	   }
	   
	}