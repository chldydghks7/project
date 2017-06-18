package yjc.wdb.gr.service;

import java.util.List;

import yjc.wdb.gr.bean.GroupInfoMemList;

public interface GroupInfoMemListService {

		public List<GroupInfoMemList> listAll_mem(String group_name)throws Exception;
}
