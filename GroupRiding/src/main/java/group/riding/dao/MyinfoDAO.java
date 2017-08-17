package group.riding.dao;

import java.util.List;

import group.riding.bean.GroupBean;
import group.riding.bean.MyinfoBean;

public interface MyinfoDAO {
	
	public String myAlldistance(String uid) throws Exception;
	
	public String myAlltime(String uid) throws Exception;
	
	public String myGr_gr(String uid) throws Exception;
	
	public String myRiding(String uid) throws Exception;
	
	public String avgspeed(String uid) throws Exception;
	
	public String avgdistance(String uid) throws Exception;
	
	public List<GroupBean> myGroup1(String uid) throws Exception;

	public String first1(String uid) throws Exception;	// 1
	
	public String groupFrist() throws Exception;	// 1
	
	public String groupSecon() throws Exception;
	
	public String groupTh() throws Exception;
	
}
