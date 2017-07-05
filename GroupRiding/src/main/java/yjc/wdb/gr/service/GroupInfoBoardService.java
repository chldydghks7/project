package yjc.wdb.gr.service;

import java.util.List;

import yjc.wdb.gr.bean.GroupInfoBoard;

public interface GroupInfoBoardService {
	
	public void create(GroupInfoBoard vo)throws Exception;
	
	public List<GroupInfoBoard> listAll(int groupid) throws Exception;
	
	public GroupInfoBoard read(int writing_id) throws Exception;
	
	public void del(int writing_id) throws Exception;
	
	public List<GroupInfoBoard> listAll_Master(String gid, String gname)throws Exception;
	
	public void update(GroupInfoBoard vo)throws Exception;
	
	public void updateHit(int writing_id)throws Exception;
	
}
