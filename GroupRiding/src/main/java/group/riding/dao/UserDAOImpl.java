package group.riding.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import group.riding.bean.GroupBean;
import group.riding.bean.KmlBean;
import group.riding.bean.MyPicture;
import group.riding.bean.RidingInfo;
import group.riding.bean.UserBean;
import group.riding.bean.UserData;
import group.riding.bean.UserData2;
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
	public UserBean login(LoginDTO dto) throws Exception {	// 占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙占쏙옙 占쏙옙회
		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public void addAttach(UserBean fullName) throws Exception {
		session.insert(namespace + ".addAttach" , fullName);
	}

	@Override
	public UserBean user(String uid) throws Exception {
		return session.selectOne(namespace + ".user", uid);
	}

	@Override
	public List<String> getAttach(String uid) throws Exception {
		return session.selectList(namespace + ".getAttach", uid);
	}

	@Override
	   public List<UserData> userData(String uid,String startDate,String stopDate) throws Exception {
	      // TODO Auto-generated method stub
		HashMap<String, String> map=new HashMap<>();
		map.put("uid", uid);
		map.put("startDate", startDate);
		map.put("stopDate", stopDate);
		
	      return session.selectList(namespace + ".Ridingdata", map);
	   }
	   
	   public List<UserData2> userData2(String uid) throws Exception {
	      // TODO Auto-generated method stub
	      return session.selectList(namespace + ".Ridingdata2", uid);
	   }
	   
	   @Override
	   public int Ridingdata3(String uid) throws Exception {
	      // TODO Auto-generated method stub
	      return session.selectOne(namespace + ".Ridingdata3", uid);
	   }
	
	@Override
	public int id_check(String uid) throws Exception {
		return session.selectOne(namespace + ".id_check", uid);
	}

	@Override
	public void insertkml(KmlBean kml) throws Exception {
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

	@Override
	public int selectkmlid() throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".selectkmlid");
	}

	@Override
	public List<RidingInfo> showhistory(String uid) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".showhistory", uid);
	}

	@Override
	public void updateGrData(String startDate, String stopDate,int kmlid,String uid) throws Exception {
		// TODO Auto-generated method stub
		HashMap< String, Object> input= new HashMap<>();
		input.put("startDate", startDate);
		input.put("stopDate", stopDate);
		input.put("kmlid", kmlid);
		input.put("uid", uid);
		
		session.update(namespace+".update_gr_data", input);
	}

	@Override
	public void insertRidingInfoNotice(RidingInfo info) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".insert_riding_info_Notice", info);
	}


}
