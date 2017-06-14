package yjc.wdb.gr.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.gr.bean.GroupInfoBoard;
@Repository
public class GroupInfoBoardDAOImpl implements GroupInfoBoardDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "group.riding.GroupMapper";
	
	@Override
	public void create(GroupInfoBoard vo) throws Exception {
		session.insert(namespace+".info_cr", vo);

	}

	@Override
	public void update(GroupInfoBoard vo) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(GroupInfoBoard vo) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public GroupInfoBoard read(Integer GroupInfoBoardDAO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<GroupInfoBoard> listAll(int groupid) throws Exception {
		return session.selectList(namespace + ".info_bo",groupid);
	}

}
