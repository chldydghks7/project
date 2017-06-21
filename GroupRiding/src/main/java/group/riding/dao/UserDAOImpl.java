package group.riding.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import group.riding.bean.GroupBean;
import group.riding.bean.MyPicture;
import group.riding.bean.RidingInfo;
import group.riding.bean.UserBean;
import group.riding.bean.UserData;
import group.riding.dto.LoginDTO;


@Repository
public class UserDAOImpl implements UserDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "group.riding.UserMapper";
	
	@Override
	public void create(UserBean us) throws Exception {
		session.insert(namespace + ".create", us);
	}

	@Override
	public int ck(String uid) throws Exception {
		return session.selectOne(namespace+".ck", uid);
	}

	@Override
	public UserBean login(LoginDTO dto) throws Exception {	// ������� ������ ��ȸ
		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public void addAttach(UserBean fullName) throws Exception {
		session.insert(namespace + ".addAttach" , fullName);
	}

	@Override
	public UserBean user(int uno) throws Exception {
		return session.selectOne(namespace + ".user", uno);
	}

	@Override
	public List<String> getAttach(String uid) throws Exception {
		return session.selectList(namespace + ".getAttach", uid);
	}

	@Override
	public List<UserData> userData(String uid) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".Ridingdata", uid);
	}
	
	@Override
	public int id_check(String uid) throws Exception {
		return session.selectOne(namespace + ".id_check", uid);
	}

	@Override
	public void insertkml(String kml) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".insert_kml", kml);
	}

	@Override
	public void insertRidingInfo(RidingInfo info) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".insert_riding_info",info);
	}

	@Override
	public List<MyPicture> showMyPic(String uid) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".showMyPic", uid);
	}


}
