package group.riding.service;

import java.util.List;

import group.riding.bean.HotplaceBean;

public interface HotplaceService {

	public List<HotplaceBean> lonlat() throws Exception;
	
	public List<HotplaceBean> getHotPlace() throws Exception;	// ������� ���� ��Ŀ
	
}
