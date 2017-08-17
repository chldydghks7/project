package group.riding.service;

import java.util.List;

import group.riding.bean.GroupBean;

public interface GroupService {
	
	public void create_gr(GroupBean gr) throws Exception;	// 占쌓뤄옙 占쏙옙占쏙옙
	
	public GroupBean gr_info(String gr_name) throws Exception;	// 占쌓뤄옙 占쏙옙占쏙옙
	
	public List<GroupBean> gr_list(String uid) throws Exception;	// 占쌓뤄옙 占쏙옙占쏙옙트
	
	public List<GroupBean> gr_list_other(String uid) throws Exception;	// 占쌓뤄옙 占쏙옙占쏙옙트 占쏙옙占쌓뤄옙 占쏙옙占쏙옙
	
	public List<String> gr_icon(String gr_name) throws Exception;	// 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙트
	
	public List<GroupBean> gr_iconl() throws Exception;	// 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙트
	
	public int gr_people(String gr_name) throws Exception;	// 占쌓뤄옙占싸울옙
	
	public void gr_join(GroupBean gr) throws Exception;	// 占쌓뤄옙 占쏙옙占쏙옙
	
	public String gr_check(String uid, String gr_name) throws Exception; 	// 占쌓뤄옙 占쏙옙占쏙옙 체크

	public int n_check(String gr_name) throws Exception;	// 占쌓뤄옙占� 占쌩븝옙체크
	
	public String leaderNotice(String uid, String gr_name) throws Exception;	// 占쌓뤄옙占썲만 占쏙옙占쏙옙占쏙옙占쏙옙

<<<<<<< HEAD

	public String groupPng(String gr_name) throws Exception;   // 그룹 프로필

	public String joingNo(String uid) throws Exception;	// ����Ƚ��
	
=======
	public String joingNo(String uid) throws Exception;	// 참여횟수
	
	public String groupPng(String gr_name) throws Exception;	// 그룹 프로필

>>>>>>> c14b608c5d8f67ef612ea3d470080c4880d58cb6
}
