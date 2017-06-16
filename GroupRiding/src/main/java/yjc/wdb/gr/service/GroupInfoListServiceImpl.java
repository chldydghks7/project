package yjc.wdb.gr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.gr.bean.GroupInfoList;
import yjc.wdb.gr.dao.GroupInfoListDAO;

@Service
public class GroupInfoListServiceImpl implements GroupInfoListService {
	
	@Inject
	private GroupInfoListDAO dao;
	
	@Override
	public List<GroupInfoList> listAll_li(String uid) throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll_li(uid);
	}

}
