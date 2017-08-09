package yjc.wdb.gr;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import group.riding.bean.HotplaceBean;
import group.riding.bean.RacePointBean;
import group.riding.service.HotplaceService;

@Controller
public class HotplaceController {

	@Inject
	private HotplaceService service;
	
	@RequestMapping(value = "testHotPlace", method = RequestMethod.GET)
	   public void lonlat(Model model) throws Exception {
		 List<HotplaceBean> lonlatlist = service.lonlat();
		 
		 model.addAttribute("lonlatlist", lonlatlist);
	   }
	
	// ���� ��� map�� HotPlacePoint list
	@RequestMapping(value="getHotPlace", method=RequestMethod.GET)
	@ResponseBody
	public List<HotplaceBean> getHotPlace() throws Exception {
		
		List<HotplaceBean> hotplace = service.getHotPlace();
		
		return hotplace;	
	}
	
	
}
