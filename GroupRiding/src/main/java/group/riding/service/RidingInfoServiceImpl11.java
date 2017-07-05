package group.riding.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import group.riding.bean.RidingInfoBean;
import group.riding.dao.RidingInfoDAO11;

@Service
public class RidingInfoServiceImpl11 implements RidingInfoService11 {
	
	@Inject
	private RidingInfoDAO11 dao;

	@Override
	public List<RidingInfoBean> grap(int kml_id) throws Exception {
		return dao.grap(kml_id);
	}

}
