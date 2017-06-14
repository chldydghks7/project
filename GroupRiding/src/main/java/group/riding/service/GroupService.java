package group.riding.service;

import java.util.List;

import group.riding.bean.GroupBean;

public interface GroupService {
	
	public void create_gr(GroupBean gr) throws Exception;	// 그룹 생성
	
	public GroupBean gr_info(String gr_name) throws Exception;	// 그룹 인포
	
	public List<GroupBean> gr_list(String uid) throws Exception;	// 그룹 리스트
	
	public List<GroupBean> gr_list_other(String uid) throws Exception;	// 그룹 리스트 내그룹 제외
	
	public List<String> gr_icon(String gr_name) throws Exception;	// 아이콘 리스트
	
	public List<GroupBean> gr_iconl() throws Exception;	// 아이콘 리스트
	
	public int gr_people(String gr_name) throws Exception;	// 그룹인원
	
	public void gr_join(GroupBean gr) throws Exception;	// 그룹 가입
	
	public String gr_check(String uid, String gr_name) throws Exception; 	// 그룹 가입 체크

	public int n_check(String gr_name) throws Exception;	// 그룹명 중복체크
	
	public String leaderNotice(String uid, String gr_name) throws Exception;	// 그룹장만 공지생성

}
