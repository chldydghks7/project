package yjc.wdb.gr.service;

import java.util.List;

import yjc.wdb.gr.bean.GroupInfoBoard;

public interface GroupInfoBoardService {
	
	public void create(GroupInfoBoard vo)throws Exception;
	
	public List<GroupInfoBoard> listAll(int groupid) throws Exception;
}
