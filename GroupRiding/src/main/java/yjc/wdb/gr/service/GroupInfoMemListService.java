package yjc.wdb.gr.service;

import java.util.List;

import yjc.wdb.gr.bean.GroupInfoMemList;

public interface GroupInfoMemListService {

		public List<GroupInfoMemList> listAll_mem(String group_name)throws Exception;
		
		public void delete(String uid,String gname)throws Exception;
		
		public GroupInfoMemList read(String uid, String gname)throws Exception;
}
