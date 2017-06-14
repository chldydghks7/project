package group.riding.dao;

import java.util.List;

import group.riding.bean.NoticeBean;

public interface NoticeDAO {

	public void createNotice(NoticeBean nb) throws Exception;	// 공지 생성
	
	public List<NoticeBean> listNotice() throws Exception;	// 공지 리스트
	
	public NoticeBean infoNotice(int noticeId) throws Exception;	// 공지 인포
}
