package group.riding.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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

	

}
