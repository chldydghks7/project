package group.riding.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import group.riding.bean.RacePointBean;
import group.riding.dao.RacePointDAO;

@Service
public class RacePointServiceImpl implements RacePointService {

	@Inject
	private RacePointDAO dao;
	
	@Override
	public List<RacePointBean> racePoint() throws Exception {
		return dao.racePoint();
	}
	
	@Override
	public List<RacePointBean> pointInfo() throws Exception {
		return dao.pointInfo();
	}

	@Override
	public void ra_viewcnt(int racepoint_id) throws Exception {
		dao.ra_viewcnt(racepoint_id);
	}

	@Override
	public void re_insert(RacePointBean rp) throws Exception {
		dao.re_insert(rp);
	}

	@Override
	public List<RacePointBean> re_list(int racepoint_id) throws Exception {
		return dao.re_list(racepoint_id);
	}

	@Override
	public void re_delete(int ra_reply_id) throws Exception {
		dao.re_delete(ra_reply_id);
	}

	@Override
	public List<RacePointBean> race_record(int racepoint_id) throws Exception {
		return dao.race_record(racepoint_id);
	}

	@Override
	public RacePointBean getRacePosition(int racepoint_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.getRacePosition(racepoint_id);
	}

}
