package group.riding.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import group.riding.bean.GroupBean;

@Repository
public class MyinfoDAOImpl implements MyinfoDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "group.riding.MyinfoMapper";
	
	@Override
	public String myAlldistance(String uid) throws Exception {
		return session.selectOne(namespace + ".myAlldistance", uid);
	}
	
	@Override
	public String myAlltime(String uid) throws Exception {
		return session.selectOne(namespace + ".myAlltime", uid);
	}

	@Override
	public String myGr_gr(String uid) throws Exception {
		return session.selectOne(namespace + ".myGr_gr", uid);
	}

	@Override
	public String myRiding(String uid) throws Exception {
		return session.selectOne(namespace + ".myRiding", uid);
	}

	@Override
	public String avgspeed(String uid) throws Exception {
		return session.selectOne(namespace + ".avgspeed", uid);
	}

	@Override
	public String avgdistance(String uid) throws Exception {
		return session.selectOne(namespace + ".avgdistance", uid);
	}

	@Override
	public List<GroupBean> myGroup1(String uid) throws Exception {
		return session.selectList(namespace + ".myGroup1", uid);
	}

	@Override
	public String first1(String uid) throws Exception {
		return session.selectOne(namespace + ".first1", uid);
	}

	@Override
	public String groupFrist() throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".groupFrist");
	}

	@Override
	public String groupSecon() throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".groupSecon");
	}

	@Override
	public String groupTh() throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace +".groupTh");
	}
	



}
