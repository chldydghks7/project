package group.riding.service;

import java.util.List;

import group.riding.bean.NoticeBean;

public interface NoticeService {
	
	public void createNotice(NoticeBean nb) throws Exception;	// ���� ����
	
	public List<NoticeBean> listNotice() throws Exception;	// ���� ����Ʈ
	
	public NoticeBean infoNotice(int noticeId) throws Exception;	// ���� ����

}
