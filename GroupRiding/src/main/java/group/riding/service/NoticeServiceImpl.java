package group.riding.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


import group.riding.bean.NoticeBean;
import group.riding.dao.NoticeDAO;


@Service
public class NoticeServiceImpl implements NoticeService {

	@Inject
	private NoticeDAO dao;
	
	@Override
	public void createNotice(NoticeBean nb) throws Exception {
		dao.createNotice(nb);
	}

	@Override
	public List<NoticeBean> listNotice(String gr_name) throws Exception {
		return dao.listNotice(gr_name);
	}

	@Override
	public NoticeBean infoNotice(int noticeId) throws Exception {
		return dao.infoNotice(noticeId);
	}

	@Override
	public List<NoticeBean> userNotice(String uid) throws Exception {
		return dao.userNotice(uid);
	}

	@Override
	public void joinNotice(NoticeBean nb) throws Exception {
		dao.joinNotice(nb);
	}

	@Override
	public String joinCheck(int noticeId, String uid) throws Exception {
		return dao.joinCheck(noticeId, uid);
	}

	@Override
	public List<NoticeBean> noticeCheck(String uid) throws Exception {
		return dao.noticeCheck(uid);
	}

	

}
