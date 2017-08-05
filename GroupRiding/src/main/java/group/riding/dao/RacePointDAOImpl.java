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
	public List<RacePointBean> racePoint() throws Exception {
		return session.selectList(namespace + ".racePoint");
	}

	@Override
	public List<RacePointBean> pointInfo() throws Exception {
		return session.selectList(namespace + ".pointInfo");
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

	@Override
	public List<RacePointBean> race_record(int racepoint_id) throws Exception {
		return session.selectList(namespace + ".race_record", racepoint_id);
	}

	@Override
	public RacePointBean getRacePosition(int racepoint_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".getRacePosition", racepoint_id);
	}

}
