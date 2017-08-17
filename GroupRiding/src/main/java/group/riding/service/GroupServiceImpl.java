package group.riding.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import group.riding.bean.GroupBean;
import group.riding.bean.NoticeBean;
import group.riding.dao.GroupDAO;
import group.riding.dao.NoticeDAO;

@Service
public class GroupServiceImpl implements GroupService {

	@Inject
	private GroupDAO dao;
	
	@Inject
	private NoticeDAO NoticeDao;
	
	@Transactional
	@Override
	public void create_gr(GroupBean gr) throws Exception {
		dao.create_gr(gr);
		dao.gr_gr(gr);
	}

	@Override
	public GroupBean gr_info(String gr_name) throws Exception {
		return dao.gr_info(gr_name);
	}

	@Override
	public List<GroupBean> gr_list(String uid) throws Exception {
		return dao.gr_list(uid);
	}

	@Override
	public List<String> gr_icon(String gr_name) throws Exception {
		return dao.gr_icon(gr_name);
	}

	@Override
	public List<GroupBean> gr_iconl() throws Exception {
		return dao.gr_iconl();
	}

	@Override
	public int gr_people(String gr_name) throws Exception {
		return dao.gr_people(gr_name);
	}

	@Override
	public void gr_join(GroupBean gr) throws Exception {
		dao.gr_join(gr);
		
		List<String> m = NoticeDao.joinMem1(gr.getUid());
		List<String> m1 = NoticeDao.joinMem2(gr.getUid());
		
		NoticeBean nb = new NoticeBean();
		
		for(int i=0; i<m.size(); i++){
			NoticeDao.joinjoin1(m.get(i), m1.get(i));
		}
		
		System.out.println("idid : " + gr.getUid());
		System.out.println("mm : " + m);
		System.out.println("mmm : " + m1);
		
		
	}

	@Override
	public String gr_check(String uid, String gr_name) throws Exception {
		return dao.gr_check(uid, gr_name);
	}

	@Override
	public List<GroupBean> gr_list_other(String uid) throws Exception {
		// TODO Auto-generated method stub
		return dao.gr_list_other(uid);
	}
	
	@Override
	public int n_check(String gr_name) throws Exception {
		return dao.n_check(gr_name);
	}
	
	@Override
	public String leaderNotice(String uid, String gr_name) throws Exception {
		return dao.leaderNotice(uid, gr_name);
	}

<<<<<<< HEAD
	@Override

	   public String groupPng(String gr_name) throws Exception {
	      return dao.groupPng(gr_name);
	   }
=======
>>>>>>> c14b608c5d8f67ef612ea3d470080c4880d58cb6

	public String joingNo(String uid) throws Exception {
		return dao.joingNo(uid);
	}

<<<<<<< HEAD
	
=======
	@Override
	public String groupPng(String gr_name) throws Exception {
		return dao.groupPng(gr_name);
	}


>>>>>>> c14b608c5d8f67ef612ea3d470080c4880d58cb6
}
