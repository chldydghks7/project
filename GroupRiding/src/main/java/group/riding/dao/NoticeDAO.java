package group.riding.dao;

import java.util.List;

import group.riding.bean.GroupBean;
import group.riding.bean.NoticeBean;

public interface NoticeDAO {

	public void createNotice(NoticeBean nb) throws Exception;	// ���� ����
	
	public List<NoticeBean> listNotice(String gr_name) throws Exception;	// ���� ����Ʈ
	
	public NoticeBean infoNotice(int noticeId) throws Exception;	// ���� ����
	
	public List<NoticeBean> userNotice(String uid) throws Exception;	// ���� ���� ����Ʈ
	
	public void joinNotice(NoticeBean nb) throws Exception;	// ���� ����
	
	public String joinCheck(int noticeId, String uid) throws Exception;	// ���� üũ
	
	public List<NoticeBean> noticeCheck(String uid) throws Exception;	// â���ִ� !! �׷�� + ��������
	
	
}
