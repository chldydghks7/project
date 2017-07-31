package group.riding.bean;

import java.sql.Date;
import java.util.Arrays;

import com.sun.xml.bind.v2.runtime.RuntimeUtil.ToStringAdapter;

public class BoardBean {
	private int writing_Id;
	private String group_Id;
	private String member_Id;
	private String bbs_Id;
	private String writing_title;
	private Date regist_Date;
	private int view_Number;
	private String writing_content;
	private String[] picture_location;
	
	private String[] bbs_FilePath;
	
	private String kml_name;
	private String kml_center;
	
	private String thumbnail;
	
	
	
	
	
	
	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getKml_center() {
		return kml_center;
	}

	public void setKml_center(String kml_center) {
		this.kml_center = kml_center;
	}

	
	

	public String[] getPicture_location() {
		return picture_location;
	}

	public void setPicture_location(String[] picture_location) {
		this.picture_location = picture_location;
	}

	public String[] getBbs_FilePath() {
		return bbs_FilePath;
	}

	public void setBbs_FilePath(String[] bbs_FilePath) {
		this.bbs_FilePath = bbs_FilePath;
	}

	public int getWriting_Id() {
		return writing_Id;
	}
	
	public void setWriting_Id(int writing_Id) {
		this.writing_Id = writing_Id;
	}
	
	public String getGroup_Id() {
		return group_Id;
	}
	
	public void setGroup_Id(String group_Id) {
		this.group_Id = group_Id;
	}
	
	public String getMember_Id() {
		return member_Id;
	}
	
	public void setMember_Id(String member_Id) {
		this.member_Id = member_Id;
	}
	
	public String getBbs_Id() {
		return bbs_Id;
	}
	
	public void setBbs_Id(String bbs_Id) {
		this.bbs_Id = bbs_Id;
	}
	
	public String getWriting_title() {
		return writing_title;
	}
	
	public void setWriting_title(String writing_title) {
		this.writing_title = writing_title;
	}
	
	public Date getRegist_Date() {
		return regist_Date;
	}
	
	public void setRegist_Date(Date regist_Date) {
		this.regist_Date = regist_Date;
	}
	
	public int getView_Number() {
		return view_Number;
	}
	
	public void setView_Number(int view_Number) {
		this.view_Number = view_Number;
	}
	
	public String getWriting_content() {
		return writing_content;
	}
	
	public void setWriting_content(String writing_content) {
		this.writing_content = writing_content;
	}

	public String getKml_name() {
		return kml_name;
	}

	public void setKml_name(String kml_name) {
		this.kml_name = kml_name;
	}

	@Override
	public String toString() {
		return "BoardBean [picture_location=" + Arrays.toString(picture_location) + ", bbs_FilePath="
				+ Arrays.toString(bbs_FilePath) + "]";
	}
	
	
}
