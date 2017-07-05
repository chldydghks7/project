package yjc.wdb.gr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.gr.bean.GroupInfoBoard;
import yjc.wdb.gr.dao.GroupInfoBoardDAO;

@Service
public class GroupInfoBoardServiceImpl implements GroupInfoBoardService {

	@Inject	
	private GroupInfoBoardDAO dao;

	@Override
	public void create(GroupInfoBoard vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);
	}

	@Override
	public List<GroupInfoBoard> listAll(int groupid) throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll(groupid);
	}

	@Override
	public GroupInfoBoard read(int writing_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(writing_id);
	}

	@Override
	public void del(int writing_id) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(writing_id);
	}

	@Override
	public List<GroupInfoBoard> listAll_Master(String gid, String gname) throws Exception {
		return dao.listAll_Master(gid, gname);
	}

	@Override
	public void update(GroupInfoBoard vo) throws Exception {
		dao.update(vo);
		
	}

	@Override
	public void updateHit(int writing_id) throws Exception {
		// TODO Auto-generated method stub
	    dao.updateHit(writing_id);
	}


}
