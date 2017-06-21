package yjc.wdb.gr.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.gr.bean.GroupMemPic;

@Repository
public class GroupMemPicDAOImpl implements GroupMemPicDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "group.riding.GroupMapper";
	
	@Override
	public GroupMemPic pic_li(String uid) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(uid);
		return session.selectOne(namespace + ".info_pic",uid);
		
	}

}
