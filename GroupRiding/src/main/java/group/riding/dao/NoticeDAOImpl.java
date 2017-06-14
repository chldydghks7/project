package group.riding.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import group.riding.bean.NoticeBean;



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
	public List<NoticeBean> listNotice() throws Exception {
		return session.selectList(namespace + ".listNotice");
	}

	@Override
	public NoticeBean infoNotice(int noticeId) throws Exception {
		return session.selectOne(namespace + ".infoNotice", noticeId);
	}

}
