package yjc.wdb.gr;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import group.riding.bean.HotplaceBean;
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
	
	
}
