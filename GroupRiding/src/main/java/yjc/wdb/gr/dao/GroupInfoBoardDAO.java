package yjc.wdb.gr.dao;

import java.util.List;

import yjc.wdb.gr.bean.GroupInfoBoard;

public interface GroupInfoBoardDAO {
	
	public void create(GroupInfoBoard vo)throws Exception;   /*db수정이 있으면 void를 붙인다*/
	
	public void update(GroupInfoBoard vo)throws Exception;
	
	public void delete(int writing_id)throws Exception;
	
	public GroupInfoBoard read(int writing_id) throws Exception;
	
	public List<GroupInfoBoard> listAll(int groupid)throws Exception;
	
	public List<GroupInfoBoard> listAll_Master(String gid, String gname)throws Exception;
	
	public void updateHit(int writing_id)throws Exception;
	
	
}
