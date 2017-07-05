package group.riding.service;

import java.util.List;

import group.riding.bean.RacePointBean;

public interface RacePointService {
	
	public RacePointBean racePoint() throws Exception;	// ���� �浵 ����
	
	public RacePointBean pointInfo(int racepoint_id) throws Exception;	// ���� ��
	
	public void ra_viewcnt(int racepoint_id) throws Exception;	// �� ī����
	
	/////////
	// ��� //
	////////
	public void re_insert(RacePointBean rp) throws Exception;	// ��� ���
	
	public List<RacePointBean> re_list(int racepoint_id) throws Exception;	// ��� ����Ʈ
	
	public void re_delete(int ra_reply_id) throws Exception; // ��� ����
	
	public List<RacePointBean> race_record(int racepoint_id) throws Exception; // 현황

}
