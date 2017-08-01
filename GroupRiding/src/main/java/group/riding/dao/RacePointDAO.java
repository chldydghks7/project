package group.riding.dao;

import java.util.List;

import group.riding.bean.RacePointBean;

public interface RacePointDAO {
	
	public List<RacePointBean> racePoint() throws Exception;	// 占쏙옙占쏙옙 占썸도 占쏙옙占쏙옙
	
	public List<RacePointBean> pointInfo() throws Exception;	// 占쏙옙占쏙옙 占쏙옙
	
	public void ra_viewcnt(int racepoint_id) throws Exception;	// 占쏙옙 카占쏙옙占쏙옙
	
	public RacePointBean getRacePosition(int racepoint_id) throws Exception;
	
	/////////
	// 댓글 //
	////////
	public void re_insert(RacePointBean rp) throws Exception;	// 占쏙옙占� 占쏙옙占�
	
	public List<RacePointBean> re_list(int racepoint_id) throws Exception;	// 占쏙옙占� 占쏙옙占쏙옙트
	
	public void re_delete(int ra_reply_id) throws Exception; // 占쏙옙占� 占쏙옙占쏙옙
	
	public List<RacePointBean> race_record(int racepoint_id) throws Exception; // �쁽�솴
}
