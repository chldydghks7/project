package group.riding.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import group.riding.bean.GroupBean;

@Repository
public class GroupDAOImpl implements GroupDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "group.riding.GroupMapper";
	
	@Override
	public void create_gr(GroupBean gr) throws Exception {
		session.insert(namespace+".create_gr", gr);
	}

	@Override
	public void icon(GroupBean fullName) throws Exception {
		session.insert(namespace + ".icon" , fullName);
	}

	@Override
	public void gr_gr(GroupBean gr) throws Exception {
		session.insert(namespace + ".gr_gr", gr);
	}

	@Override
	public GroupBean gr_info(String gr_name) throws Exception {
		return session.selectOne(namespace + ".gr_info", gr_name);
	}

	@Override
	public List<GroupBean> gr_list(String uid) throws Exception {
		return session.selectList(namespace + ".gr_list",uid);
	}

	@Override
	public List<String> gr_icon(String gr_name) throws Exception {
		return session.selectList(namespace + ".gr_icon", gr_name);
	}

	@Override
	public List<GroupBean> gr_iconl() throws Exception {
		return session.selectList(namespace + ".gr_iconl");
	}

	@Override
	public int gr_people(String gr_name) throws Exception {
		return session.selectOne(namespace + ".gr_people", gr_name);
	}

	@Override
	public void gr_join(GroupBean gr) throws Exception {
		session.insert(namespace+".gr_join", gr);
	}

	@Override
	public String gr_check(String uid, String gr_name) throws Exception {
		Map<String,Object> paramMap = new HashMap<>();
		
		paramMap.put("uid", uid);
		paramMap.put("gr_name", gr_name);
		
		return session.selectOne(namespace + ".gr_check", paramMap);
	}

	@Override
	public List<GroupBean> gr_list_other(String uid) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".gr_list_other",uid);
	}
	
	@Override
	public int n_check(String gr_name) throws Exception {
		return session.selectOne(namespace + ".n_check", gr_name);
	}
	
	@Override
	public String leaderNotice(String uid, String gr_name) throws Exception {
		Map<String,Object> paramMap = new HashMap<>();
		
		paramMap.put("uid", uid);
		paramMap.put("gr_name", gr_name);
		
		return session.selectOne(namespace + ".leaderNotice", paramMap);
	}

	@Override
	public String joingNo(String uid) throws Exception {
		return session.selectOne(namespace + ".joingNo", uid);
	}
	
	

}
