package group.riding.dao;

import java.util.List;

import group.riding.bean.RacePointBean;

public interface RacePointDAO {
	
	public RacePointBean racePoint() throws Exception;	// 거점 경도 위도
	
	public RacePointBean pointInfo(int racepoint_id) throws Exception;	// 거점 상세
	
	public void ra_viewcnt(int racepoint_id) throws Exception;	// 뷰 카운터
	
	/////////
	// 댓글 //
	////////
	public void re_insert(RacePointBean rp) throws Exception;	// 댓글 등록
	
	public List<RacePointBean> re_list(int racepoint_id) throws Exception;	// 댓글 리스트
	
	public void re_delete(int ra_reply_id) throws Exception; // 댓글 삭제
}
