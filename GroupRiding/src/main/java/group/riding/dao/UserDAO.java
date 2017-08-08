package group.riding.dao;

import java.util.List;

import group.riding.bean.GroupBean;
import group.riding.bean.KmlBean;
import group.riding.bean.MyPicture;
import group.riding.bean.RidingInfo;
import group.riding.bean.UserBean;
import group.riding.bean.UserData;
import group.riding.bean.UserData2;
import group.riding.dto.LoginDTO;


public interface UserDAO {
	
	public void create(UserBean us) throws Exception;	// 회占쏙옙 占쏙옙占쏙옙
	
	public int ck(String id) throws Exception;	// 占쌩븝옙 체크
	
	public UserBean login(LoginDTO dto) throws Exception;	
	
	public void addAttach(UserBean fullName) throws Exception; // 占쏙옙占쏙옙占쏙옙
	
	public List<String> getAttach(String uid) throws Exception;	// 占쏙옙占쏙옙占쏙옙
	
	public UserBean user(String uid) throws Exception;	// 占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙占쏙옙 占쏙옙회
	
	public List<UserData> userData(String uid,String startDate,String stopDate) throws Exception;   // �쑀���씪�씠�뵫�뜲�씠�꽣
	   
	public List<UserData2> userData2(String uid) throws Exception; // �쑀���씪�씠�뵫�뜲�씠�꽣2
	   
	public int Ridingdata3(String uid) throws Exception; // �쑀���씪�씠�뵫 �뜲�씠�꽣3

	public int id_check(String uid) throws Exception;	// 占쏙옙占싱듸옙 占쌩븝옙체크
	
	public void insertkml(KmlBean kml)throws Exception;  //kml 占쏙옙占쏙옙占싱몌옙 占쏙옙占쏙옙
	
	public void insertRidingInfo(RidingInfo info)throws Exception; //riding info �뀒�씠釉� 珥앷굅由�,珥앹떆媛� 諛뤿뜲�씠�꽣 �궫�엯
	
	public void insertRidingInfoNotice(RidingInfo info)throws Exception;//riding info 테이블 총거리,총시간 및데이터 삽입 noticeID 역시 삽입
	
	public List<MyPicture> showMyPic(String uid)throws Exception;
	
	public int selectkmlid()throws Exception;
	
	public List<RidingInfo> showhistory(String uid)throws Exception;
	
	public void updateGrData(String startDate,String stopDate,int kmlid,String uid)throws Exception;
}
