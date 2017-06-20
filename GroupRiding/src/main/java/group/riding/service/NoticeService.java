package group.riding.service;

import java.util.List;

import group.riding.bean.NoticeBean;

public interface NoticeService {
	
	public void createNotice(NoticeBean nb) throws Exception;	// 공지 생성
	
	public List<NoticeBean> listNotice(String gr_name) throws Exception;	// 공지 리스트
	
	public NoticeBean infoNotice(int noticeId) throws Exception;	// 공지 인포

	public List<NoticeBean> userNotice(String uid) throws Exception;	// 유저 공지 리스트
	
	public void joinNotice(NoticeBean nb) throws Exception;	// 공지 참여
	
	public String joinCheck(int noticeId, String uid) throws Exception;	// 참여 체크
	
	public List<NoticeBean> noticeCheck(String uid) throws Exception;	// 창조주님 !! 그룹명 + 참여여부

	public void updateCheck(NoticeBean nb) throws Exception;	// 참여 or 불참 업데이트
}
