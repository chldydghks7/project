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
	
	public void create(UserBean us) throws Exception;	// ȸ�� ����
	
	public int ck(String id) throws Exception;	// �ߺ� üũ
	
	public UserBean login(LoginDTO dto) throws Exception;	
	
	public void addAttach(UserBean fullName) throws Exception; // ������
	
	public List<String> getAttach(String uid) throws Exception;	// ������
	
	public UserBean user(int uno) throws Exception;	// ������� ������ ��ȸ
	
	public List<UserData> userData(String uid,String startDate,String stopDate) throws Exception;   // 유저라이딩데이터
	   
	public List<UserData2> userData2(String uid) throws Exception; // 유저라이딩데이터2
	   
	public int Ridingdata3(String uid) throws Exception; // 유저라이딩 데이터3

	public int id_check(String uid) throws Exception;	// ���̵� �ߺ�üũ
	
	public void insertkml(KmlBean kml)throws Exception;  //kml �����̸� ����
	
	public void insertRidingInfo(RidingInfo info)throws Exception; //riding info 테이블 총거리,총시간 및데이터 삽입
	
	public void insertRidingInfoNotice(RidingInfo info)throws Exception;//riding info 테이블 총거리,총시간 및데이터 삽입 noticeID 역시 삽입
	
	public List<MyPicture> showMyPic(String uid)throws Exception;
	
	public int selectkmlid()throws Exception;
	
	public List<RidingInfo> showhistory(String uid)throws Exception;
	
	public void updateGrData(String startDate,String stopDate,int kmlid,String uid)throws Exception;
}
