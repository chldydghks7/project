package group.riding.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import group.riding.bean.GroupBean;
import group.riding.bean.MyinfoBean;
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

	@Override
	public String avgspeed(String uid) throws Exception {
		return dao.avgspeed(uid);
	}

	@Override
	public String avgdistance(String uid) throws Exception {
		return dao.avgdistance(uid);
	}

	@Override
	public List<GroupBean> myGroup1(String uid) throws Exception {
		return dao.myGroup1(uid);
	}
	

	

}
