package group.riding.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import group.riding.dao.MyinfoDAO;

@Service
public class MyinfoServiceImpl implements MyinfoService {
	
	@Inject
	private MyinfoDAO dao;

	@Override
	public String myAlldistance(String uid) throws Exception {
		return dao.myAlldistance(uid);
	}

	@Override
	public String myAlltime(String uid) throws Exception {
		return dao.myAlltime(uid);
	}
	
	@Override
	public String myGr_gr(String uid) throws Exception {
		return dao.myGr_gr(uid);
	}

	@Override
	public String myRiding(String uid) throws Exception {
		return dao.myRiding(uid);
	}

	

}
