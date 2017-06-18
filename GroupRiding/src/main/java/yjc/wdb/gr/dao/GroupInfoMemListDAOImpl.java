package yjc.wdb.gr.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.gr.bean.GroupInfoMemList;

@Repository
public class GroupInfoMemListDAOImpl implements GroupInfoMemListDAO {
	@Inject
	private SqlSession session;

	private static String namespace="group.riding.GroupMapper";
	
	@Override
	public List<GroupInfoMemList> listAll_mem(String group_name) throws Exception {
		return session.selectList(namespace + ".info_mem",group_name);
	}

}
