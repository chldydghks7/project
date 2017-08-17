package group.riding.dao;

import java.util.List;

import group.riding.bean.GroupBean;

public interface GroupDAO {
	
	public void create_gr(GroupBean gr) throws Exception;	// �׷� ����
	
	public void gr_gr(GroupBean gr)	throws Exception; // �׷� ����
	
	public void icon(GroupBean fullName) throws Exception; // ������ ���
	
	public GroupBean gr_info(String gr_name) throws Exception;	// �׷� ����
	
	public List<GroupBean> gr_list(String uid) throws Exception;	// �׷� ����Ʈ
	
	public List<GroupBean> gr_list_other(String uid) throws Exception;	// �׷� ����Ʈ ���׷� ����
	
	public List<String> gr_icon(String gr_name) throws Exception;	// ������ ����Ʈ
	
	public List<GroupBean> gr_iconl() throws Exception;	// ������ ����Ʈ
	
	public int gr_people(String gr_name) throws Exception;	// �׷��ο�
	
	public void gr_join(GroupBean gr) throws Exception;	// �׷� ����
	
	public String gr_check(String uid, String gr_name) throws Exception; 	// �׷� ���� üũ
	
	public int n_check(String gr_name) throws Exception;	// �׷�� �ߺ�üũ


	public String leaderNotice(String uid, String gr_name) throws Exception;	// �׷��常 ��������
	
	public String groupPng(String gr_name) throws Exception;   // 그룹 프로필


	
	public String joingNo(String uid) throws Exception;	// ����Ƚ��
	


}
