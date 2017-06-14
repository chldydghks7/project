package yjc.wdb.gr.service;

import java.util.List;

import javax.inject.Inject;


import org.springframework.stereotype.Service;

import yjc.wdb.gr.bean.GroupRank;
import yjc.wdb.gr.dao.GroupRankDAO;

@Service
public class GroupRankServiceImpl implements GroupRankService {
	
	@Inject
	private GroupRankDAO dao;

	@Override
	public List<GroupRank> select1() throws Exception {
		// TODO Auto-generated method stub
		return dao.select1();
	}

	@Override
	public List<GroupRank> select2() throws Exception {
		// TODO Auto-generated method stub
		return dao.select2();
	}

	@Override
	public List<GroupRank> select3() throws Exception {
		// TODO Auto-generated method stub
		return dao.select3();
	}
	


}

/*	@Override
public List<GroupRank> select() throws Exception {
	// TODO Auto-generated method stub
	return dao.select();
}*/
