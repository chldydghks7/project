package yjc.wdb.gr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.gr.bean.GroupInfoMemList;
import yjc.wdb.gr.dao.GroupInfoMemListDAO;

@Service
public class GroupInfoMemListServiceImpl implements GroupInfoMemListService {

	@Inject
	private GroupInfoMemListDAO dao;
	
	@Override
	public List<GroupInfoMemList> listAll_mem(String group_name) throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll_mem(group_name);
	}

}
