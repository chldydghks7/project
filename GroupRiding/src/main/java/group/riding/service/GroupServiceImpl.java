package group.riding.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import group.riding.bean.GroupBean;
import group.riding.dao.GroupDAO;
import group.riding.dao.UserDAO;

@Service
public class GroupServiceImpl implements GroupService {

	@Inject
	private GroupDAO dao;
	
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


}
