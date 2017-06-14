package yjc.wdb.gr.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.gr.bean.GroupRank;

@Repository
public class GroupRankDAOImpl implements GroupRankDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="group.riding.GroupMapper";
	@Override
	public List<GroupRank> select1() throws Exception {
		return session.selectList(namespace + ".gr_number");
	}
	@Override
	public List<GroupRank> select2() throws Exception {
		return session.selectList(namespace + ".gr_catch");
	}
	@Override
	public List<GroupRank> select3() throws Exception {
		return session.selectList(namespace + ".gr_avspeed");
	}

}
