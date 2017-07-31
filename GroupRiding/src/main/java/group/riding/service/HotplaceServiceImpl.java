package group.riding.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import group.riding.bean.HotplaceBean;
import group.riding.dao.HotplaceDAO;

@Service
public class HotplaceServiceImpl implements HotplaceService {

	@Inject
	private HotplaceDAO dao;
	
	@Override
	public List<HotplaceBean> lonlat() throws Exception {
		return dao.lonlat();
	}

}
