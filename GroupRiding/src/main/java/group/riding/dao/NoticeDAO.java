package group.riding.dao;

import java.util.List;

import group.riding.bean.NoticeBean;

public interface NoticeDAO {

	public void createNotice(NoticeBean nb) throws Exception;	// 공지 생성
	
	public List<NoticeBean> listNotice(String gr_name) throws Exception;	// 공지 리스트
	
	public NoticeBean infoNotice(int noticeId) throws Exception;	// 공지 인포
	
	public List<NoticeBean> userNotice(String uid) throws Exception;	// 유저 공지 리스트
}
