package yjc.wdb.gr;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import group.riding.bean.MapBean;
import group.riding.service.MapService;

@Controller
public class MapController {
	
	@Inject
	private MapService service;
	
	@RequestMapping(value = "hotPlaceMap", method = RequestMethod.GET)
	public void hotPlaceMap(Model model) throws Exception {
		List<MapBean> list = service.makerList();
	}
	
	@RequestMapping(value = "restaurantList", method = RequestMethod.GET)
	public void restaurantList() {
		
	}
	
	@RequestMapping(value = "hotelList", method = RequestMethod.GET)
	public void hotelList() {
		
	}
}
