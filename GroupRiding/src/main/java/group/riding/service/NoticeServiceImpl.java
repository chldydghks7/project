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
	public List<NoticeBean> listNotice() throws Exception {
		return dao.listNotice();
	}

	@Override
	public NoticeBean infoNotice(int noticeId) throws Exception {
		return dao.infoNotice(noticeId);
	}

	

}
