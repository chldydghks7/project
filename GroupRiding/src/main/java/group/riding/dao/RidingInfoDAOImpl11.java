package group.riding.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import group.riding.bean.RidingInfoBean;

@Repository
public class RidingInfoDAOImpl11 implements RidingInfoDAO11 {

	@Inject
	private SqlSession session;
	
	private static String namespace = "group.riding.RidingInfo11Mapper";
	
	@Override
	public List<RidingInfoBean> grap(int kml_id) throws Exception {
	
		return session.selectList(namespace + ".grap", kml_id);
	}

}
