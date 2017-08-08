package group.riding.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import group.riding.bean.NoticeBean;
import group.riding.bean.RidingInfoBean;



@Repository
public class NoticeDAOImpl implements NoticeDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "group.riding.NoticeMapper";
	
	@Override
	public void createNotice(NoticeBean nb) throws Exception {
		session.insert(namespace + ".createNotice", nb);
	}

	@Override
	public List<NoticeBean> listNotice(String gr_name) throws Exception {
		return session.selectList(namespace + ".listNotice", gr_name);
	}
	
	@Override
	public List<NoticeBean> listNotice1(String gr_name) throws Exception {
		return session.selectList(namespace + ".listNotice1", gr_name);
	}

	@Override
	public NoticeBean infoNotice(int noticeId) throws Exception {
		return session.selectOne(namespace + ".infoNotice", noticeId);
	}

	@Override
	public List<NoticeBean> userNotice(String uid) throws Exception {
		return session.selectList(namespace + ".userNotice", uid);
	}

	@Override
	public void joinNotice(NoticeBean nb) throws Exception {
		session.insert(namespace + ".joinNotice", nb);
	}

	@Override
	public String joinCheck(int noticeId, String uid) throws Exception {
		Map<String,Object> paramMap = new HashMap<>();
	
		paramMap.put("noticeId", noticeId);
		paramMap.put("uid", uid);
		
		return session.selectOne(namespace + ".joinCheck", paramMap);
	}

	@Override
	public List<NoticeBean> noticeCheck(String uid) throws Exception {
		return session.selectList(namespace + ".noticeCheck", uid);
	}

	@Override
	public void updateCheck(NoticeBean nb) throws Exception {
		session.update(namespace + ".updateCheck", nb);
	}

	@Override
	public List<RidingInfoBean> ridingDate(String uid) throws Exception {
		return session.selectList(namespace + ".ridingDate", uid);
	}

	@Override
	public RidingInfoBean ridingInfo(int riding_id) throws Exception {
		return session.selectOne(namespace + ".ridingInfo", riding_id);
	}

	@Override
	public List<NoticeBean> getjoininfo(int noticeId, String gr_name) throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> paramMap = new HashMap<>();
		paramMap.put("noticeId", noticeId);
		paramMap.put("gr_name", gr_name);
		
		return session.selectList(namespace+".joinInfo", paramMap);
	}

	@Override
	public List<String> memlist1(String gr_name) throws Exception {
		return session.selectList(namespace + ".memlist1", gr_name);
		
	}

	@Override
	public void joinjoin(String uid) throws Exception {
		session.insert(namespace + ".joinjoin", uid);
	}

	@Override
	public List<String> joinMem1(String uid) throws Exception {
		return session.selectList(namespace + ".joinMem1", uid);
	}

	@Override
	public List<String> joinMem2(String uid) throws Exception {
		return session.selectList(namespace + ".joinMem2", uid);
	}

	@Override
	public void joinjoin1(String uid, String noticeId) throws Exception {
		Map<String,Object> paramMap = new HashMap<>();
		paramMap.put("uid", uid);
		paramMap.put("noticeId", noticeId);
		
		session.insert(namespace + ".joinjoin1", paramMap);
	}

	@Override
	public List<String> JoinMemberGet(int noticeId) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".getJoinMember", noticeId);
	}


}
