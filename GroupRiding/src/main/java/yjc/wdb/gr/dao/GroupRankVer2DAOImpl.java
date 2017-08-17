package yjc.wdb.gr.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.gr.bean.GroupRankVer2;

@Repository
public class GroupRankVer2DAOImpl implements GroupRankVer2DAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="group.riding.GroupMapper";
	@Override
	public List<GroupRankVer2> select11() throws Exception {
		return session.selectList(namespace + ".groupRankVer2");
	}

}
