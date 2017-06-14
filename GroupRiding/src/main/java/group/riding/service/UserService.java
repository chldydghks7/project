package group.riding.service;

import java.util.List;

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
	
}
