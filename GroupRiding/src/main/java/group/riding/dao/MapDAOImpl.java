package group.riding.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import group.riding.bean.MapBean;

@Repository
public class MapDAOImpl implements MapDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "group.riding.MapMapper";
	
	@Override
	public List<MapBean> makerList() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".makerList");
	}

	@Override
	public MapBean makerRead(String place_name) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".makerRead", place_name);
	}

}
