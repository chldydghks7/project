package yjc.wdb.gr.dao;

import java.util.List;

import yjc.wdb.gr.bean.GroupInfoBoard;

public interface GroupInfoBoardDAO {
	
	public void create(GroupInfoBoard vo)throws Exception;   /*db수정이 있으면 void를 붙인다*/
	
	public void update(GroupInfoBoard vo)throws Exception;
	
	public void delete(GroupInfoBoard vo)throws Exception;
	
	public GroupInfoBoard read(Integer GroupInfoBoardDAO) throws Exception;
	
	public List<GroupInfoBoard> listAll(int groupid)throws Exception;
	
}
