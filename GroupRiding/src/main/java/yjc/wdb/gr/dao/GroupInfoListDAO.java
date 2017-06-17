package yjc.wdb.gr.dao;

import java.util.List;

import yjc.wdb.gr.bean.GroupInfoList;

public interface GroupInfoListDAO {
	public List<GroupInfoList> listAll_li(String uid)throws Exception;
}
