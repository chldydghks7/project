package group.riding.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import group.riding.bean.HotplaceBean;

@Repository
public class HotplaceDAOImpl implements HotplaceDAO {

	private static final String namespace = "group.riding.HotplaceMapper";
	
	@Inject
	private SqlSession session;
	
	@Override
	public List<HotplaceBean> lonlat() throws Exception {
		return session.selectList(namespace + ".lonlat");
	}

	@Override
	public List<HotplaceBean> getHotPlace() throws Exception {
		return session.selectList(namespace + ".getHotPlace");
	}

}
