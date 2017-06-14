package group.riding.dao;

import java.util.List;

import group.riding.bean.NoticeBean;

public interface NoticeDAO {

	public void createNotice(NoticeBean nb) throws Exception;	// ���� ����
	
	public List<NoticeBean> listNotice() throws Exception;	// ���� ����Ʈ
	
	public NoticeBean infoNotice(int noticeId) throws Exception;	// ���� ����
}
