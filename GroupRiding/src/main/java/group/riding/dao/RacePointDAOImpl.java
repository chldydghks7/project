package group.riding.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import group.riding.bean.RacePointBean;

@Repository
public class RacePointDAOImpl implements RacePointDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "group.riding.RacePointMapper";
	
	@Override
	public RacePointBean racePoint() throws Exception {
		return session.selectOne(namespace + ".racePoint");
	}

	@Override
	public RacePointBean pointInfo(int racepoint_id) throws Exception {
		return session.selectOne(namespace + ".pointInfo", racepoint_id);
	}

	@Override
	public void ra_viewcnt(int racepoint_id) throws Exception {
		session.update(namespace + ".ra_viewcnt", racepoint_id);
	}

	@Override
	public void re_insert(RacePointBean rp) throws Exception {
		session.insert(namespace + ".re_insert", rp); 
	}

	@Override
	public List<RacePointBean> re_list(int racepoint_id) throws Exception {
		return session.selectList(namespace + ".re_list", racepoint_id);
	}

	@Override
	public void re_delete(int ra_reply_id) throws Exception {
		session.delete(namespace + ".re_delete", ra_reply_id);
	}

}
