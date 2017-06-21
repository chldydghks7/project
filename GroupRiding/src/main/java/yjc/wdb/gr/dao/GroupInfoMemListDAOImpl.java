package yjc.wdb.gr.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	@Override
	public void delete(String uid,String gname)throws Exception{
		Map<String,String> paramMap=new HashMap<>();
		
		paramMap.put("uid", uid);
		paramMap.put("gname", gname);
		session.delete(namespace +".info_mem_del",paramMap);
	}
	@Override
	public GroupInfoMemList read(String uid, String gname) throws Exception {
		// TODO Auto-generated method stub
		Map<String,String> paramMap=new HashMap<>();
		
		paramMap.put("uid", uid);
		paramMap.put("gname", gname);
		return session.selectOne(namespace +".board_Add",paramMap); 
	}

}
