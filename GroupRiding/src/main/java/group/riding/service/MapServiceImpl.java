package group.riding.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import group.riding.bean.MapBean;
import group.riding.dao.MapDAO;

@Service
public class MapServiceImpl implements MapService {
	
	@Inject
	private MapDAO dao;
	
	@Override
	public List<MapBean> makerList() throws Exception {
		// TODO Auto-generated method stub
		return dao.makerList();
	}

}