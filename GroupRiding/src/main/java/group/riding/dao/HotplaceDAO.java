package group.riding.dao;

import java.util.List;

import group.riding.bean.HotplaceBean;

public interface HotplaceDAO {
	
	public List<HotplaceBean> lonlat() throws Exception;
	
	public List<HotplaceBean> getHotPlace() throws Exception;	// 일정등록 핫플 마커
	
}
