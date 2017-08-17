package yjc.wdb.gr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.gr.bean.GroupRankVer2;
import yjc.wdb.gr.dao.GroupRankVer2DAO;

@Service
public class GroupRankVer2ServiceImpl implements GroupRankVer2Service {

	@Inject
	private GroupRankVer2DAO dao;
	@Override
	public List<GroupRankVer2> select11() throws Exception {
		// TODO Auto-generated method stub
		return dao.select11();
	}

}
