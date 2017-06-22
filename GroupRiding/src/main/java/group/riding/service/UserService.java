package group.riding.service;

import java.util.List;

import group.riding.bean.MyPicture;
import group.riding.bean.RidingInfo;
import group.riding.bean.UserBean;
import group.riding.bean.UserData;
import group.riding.dto.LoginDTO;


public interface UserService {

	public void register(UserBean us) throws Exception;
	
	public int ck(String uid) throws Exception;
	
	public UserBean login(LoginDTO dto) throws Exception;
	
	public UserBean user(int uno) throws Exception;
	
	public List<String> getAttach(String uid) throws Exception;	// ������
	
	public List<UserData> userData(String uid) throws Exception;   // �������̵�������
	
	public int id_check(String uid) throws Exception;	// ���̵� �ߺ�üũ
	
	public void insertkml(String kml)throws Exception;  //kml �����̸� ����
	
	public void insertRidingInfo(RidingInfo info)throws Exception; //riding info 테이블 총거리,총시간 및데이터 삽입
	
	public List<MyPicture> showMyPic(String uid)throws Exception;
	
	public List<Integer> selectkmlid()throws Exception;
	
	public List<RidingInfo> showhistory(String uid)throws Exception;
	
	
	
}
