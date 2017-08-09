package group.riding.service;

import java.util.List;

import group.riding.bean.GroupBean;

public interface GroupService {
	
	public void create_gr(GroupBean gr) throws Exception;	// �׷� ����
	
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

<<<<<<< HEAD
	public String groupPng(String gr_name) throws Exception;   // 그룹 프로필
=======
	public String joingNo(String uid) throws Exception;	// ����Ƚ��
	
	public String groupPng(String gr_name) throws Exception;	// �׷� ������
>>>>>>> e1591ff61afa1bda8434a28de54edcf57258b9e9
}
