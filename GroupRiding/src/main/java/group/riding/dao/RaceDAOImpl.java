package group.riding.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import group.riding.service.RaceService;

@Repository
public class RaceDAOImpl implements RaceDAO{

	
	
	@Inject
	private SqlSession session;
	
	
	private static String namespace = "group.riding.RacePointMapper";
	@Override
	public void insertRaceRecord(String racepoint_time) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".insertRaceRecord", racepoint_time);
	}

}
