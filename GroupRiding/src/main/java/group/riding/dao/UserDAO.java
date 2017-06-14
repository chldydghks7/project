package group.riding.dao;

import java.util.List;

import group.riding.bean.GroupBean;
import group.riding.bean.UserBean;
import group.riding.bean.UserData;
import group.riding.dto.LoginDTO;


public interface UserDAO {
	
	public void create(UserBean us) throws Exception;	// ȸ�� ����
	
	public int ck(String id) throws Exception;	// �ߺ� üũ
	
	public UserBean login(LoginDTO dto) throws Exception;	
	
	public void addAttach(UserBean fullName) throws Exception; // ������
	
	public List<String> getAttach(String uid) throws Exception;	// ������
	
	public UserBean user(int uno) throws Exception;	// ������� ������ ��ȸ
	
	public List<UserData> userData(String uid) throws Exception;   // �������̵�������

	public int id_check(String uid) throws Exception;	// ���̵� �ߺ�üũ
}
