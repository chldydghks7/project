package yjc.wdb.gr.service;

import java.util.List;

import yjc.wdb.gr.bean.GroupInfoList;

public interface GroupInfoListService {

	public List<GroupInfoList> listAll_li(String uid)throws Exception;
}
