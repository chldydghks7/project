package yjc.wdb.gr.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.gr.bean.GroupInfoList;

@Repository
public class GroupInfoListDAOImpl implements GroupInfoListDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "group.riding.GroupMapper";
	
	@Override
	public GroupInfoList listAll_li(String uid) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".info_li",uid);
	}

}
