package yjc.wdb.gr.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.gr.bean.GroupInfoList;
import yjc.wdb.gr.dao.GroupInfoListDAO;

@Service
public class GroupInfoListServiceImpl implements GroupInfoListService {
	
	@Inject
	private GroupInfoListDAO dao;
	
	@Override
	public GroupInfoList listAll_li(String uid) throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll_li(uid);
	}

}
