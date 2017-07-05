package yjc.wdb.gr.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		session.update(namespace+".info_mo",vo);

	}

	@Override
	public GroupInfoBoard read(int writing_id) throws Exception {
		return session.selectOne(namespace + ".info_re",writing_id);
	}

	@Override
	public List<GroupInfoBoard> listAll(int groupid) throws Exception {
		return session.selectList(namespace + ".info_bo",groupid);
	}

	@Override
	public void delete(int writing_id) throws Exception {
		session.delete(namespace +".info_del", writing_id);
		
	}

	@Override
	public List<GroupInfoBoard> listAll_Master(String gid, String gname) throws Exception {
		Map<String,String> paramMap=new HashMap<>();
		paramMap.put("gid", gid);
		paramMap.put("gname", gname);
		return session.selectList(namespace + ".info_Mater",paramMap);
	}

	@Override
	public void updateHit(int writing_id) throws Exception {
		// TODO Auto-generated method stub
		 session.update(namespace+".info_view",writing_id);
	}

}
