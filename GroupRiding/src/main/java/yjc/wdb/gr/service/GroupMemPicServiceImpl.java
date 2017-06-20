package yjc.wdb.gr.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.gr.bean.GroupMemPic;
import yjc.wdb.gr.dao.GroupMemPicDAO;

@Service
public class GroupMemPicServiceImpl implements GroupMemPicService {

	@Inject
	private GroupMemPicDAO dao;
	
	@Override
	public GroupMemPic pic_li(String uid) throws Exception {
		// TODO Auto-generated method stub
		return dao.pic_li(uid);
	}

}
