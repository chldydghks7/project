package group.riding.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import group.riding.dao.RaceDAO;

@Service
public class RaceServiceImpl implements RaceService {
	
	@Inject
	RaceDAO dao;
	
	@Override
	public void insertRaceRecord(String racepoint_time) throws Exception {
		// TODO Auto-generated method stub
		dao.insertRaceRecord(racepoint_time);
	}

}
