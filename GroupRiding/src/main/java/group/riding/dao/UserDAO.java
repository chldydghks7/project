package group.riding.dao;

import java.util.List;

import group.riding.bean.GroupBean;
import group.riding.bean.UserBean;
import group.riding.bean.UserData;
import group.riding.dto.LoginDTO;


public interface UserDAO {
	
	public void create(UserBean us) throws Exception;	// 회원 가입
	
	public int ck(String id) throws Exception;	// 중복 체크
	
	public UserBean login(LoginDTO dto) throws Exception;	
	
	public void addAttach(UserBean fullName) throws Exception; // 프로필
	
	public List<String> getAttach(String uid) throws Exception;	// 프로필
	
	public UserBean user(int uno) throws Exception;	// 사용자의 정보를 조회
	
	public List<UserData> userData(String uid) throws Exception;   // 유저라이딩데이터

	public int id_check(String uid) throws Exception;	// 아이디 중복체크
}
