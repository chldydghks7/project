package group.riding.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import group.riding.bean.GroupBean;
import group.riding.bean.NoticeBean;
import group.riding.bean.RidingInfoBean;
import group.riding.dao.NoticeDAO;


@Service
public class NoticeServiceImpl implements NoticeService {

	@Inject
	private NoticeDAO dao;
	
	@Transactional
	@Override
	public void createNotice(NoticeBean nb) throws Exception {
		dao.createNotice(nb);
		
		List<String> m = dao.memlist1(nb.getGr_name());
		
		for(int i=0; i<m.size(); i++){
			dao.joinjoin(m.get(i));
		}
		System.out.println("nID : " + nb.getNoticeId());
		System.out.println("nb : " + nb.getGr_name());
		System.out.println("m : " + m);
		
	}

	@Override
	public List<NoticeBean> listNotice(String gr_name) throws Exception {
		return dao.listNotice(gr_name);
	}
	
	@Override
	public List<NoticeBean> listNotice1(String gr_name) throws Exception {
		return dao.listNotice1(gr_name);
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

	@Override
	public void updateCheck(NoticeBean nb) throws Exception {
		dao.updateCheck(nb);
	}

	@Override
	public List<RidingInfoBean> ridingDate(String uid) throws Exception {
		return dao.ridingDate(uid);
	}

	@Override
	public RidingInfoBean ridingInfo(int riding_id) throws Exception {
		return dao.ridingInfo(riding_id);
	}

	@Override
	public List<NoticeBean> getjoininfo(int noticeId, String gr_name) throws Exception {
		// TODO Auto-generated method stub
		return dao.getjoininfo(noticeId, gr_name);
	}

	@Override
	public List<String> JoinMemberGet(int noticeId) throws Exception {
		// TODO Auto-generated method stub
		return dao.JoinMemberGet(noticeId);
	}
	

}
