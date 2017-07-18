package group.riding.dao;

import java.util.List;

import group.riding.bean.NoticeBean;
import group.riding.bean.RidingInfoBean;

public interface NoticeDAO {

	public void createNotice(NoticeBean nb) throws Exception;	// 占쏙옙占쏙옙 占쏙옙占쏙옙
	
	public List<NoticeBean> listNotice(String gr_name) throws Exception;	// 占쏙옙占쏙옙 占쏙옙占쏙옙트
	
	public NoticeBean infoNotice(int noticeId) throws Exception;	// 占쏙옙占쏙옙 占쏙옙占쏙옙
	
	public List<NoticeBean> userNotice(String uid) throws Exception;	// 占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙트
	
	public void joinNotice(NoticeBean nb) throws Exception;	// 占쏙옙占쏙옙 占쏙옙占쏙옙
	
	public String joinCheck(int noticeId, String uid) throws Exception;	// 占쏙옙占쏙옙 체크
	
	public List<NoticeBean> noticeCheck(String uid) throws Exception;	// 창占쏙옙占쌍댐옙 !! 占쌓뤄옙占� + 占쏙옙占쏙옙占쏙옙占쏙옙
	
	public void updateCheck(NoticeBean nb) throws Exception;	// 占쏙옙占쏙옙 or 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙트
	
	public List<RidingInfoBean> ridingDate(String uid) throws Exception;	// RidingInfo
	
	public RidingInfoBean ridingInfo(int riding_id) throws Exception;	// RidingInfo
	
	public List<NoticeBean> getjoininfo(int noticeId,String gr_name)throws Exception;
	
	public List<String> memlist1(String gr_name) throws Exception;
	
	public void joinjoin(String m) throws Exception;
	
	public List<String> joinMem1(String uid) throws Exception;
	
	public List<String> joinMem2(String uid) throws Exception;
	
	public void joinjoin1(String uid, String noticeId) throws Exception;
}
