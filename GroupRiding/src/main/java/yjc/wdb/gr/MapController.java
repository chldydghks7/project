package yjc.wdb.gr;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import group.riding.bean.BoardBean;
import group.riding.bean.MapBean;
import group.riding.service.MapService;

@Controller
public class MapController {
	
	@Inject
	private MapService service;
	
	@RequestMapping(value = "hotPlaceMap", method = RequestMethod.GET)
	public void hotPlaceMap(Model model) throws Exception {
		List<MapBean> list = service.makerList();
		model.addAttribute("map", list);
	}
	
	@RequestMapping(value = "ajaxMap", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>>ajaxMap() throws Exception {
		ResponseEntity<Map<String, Object>> entity = null;
		
		try {
			List<MapBean> list = service.makerList();
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("map", list);
			
			entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value = "readMaker", method = RequestMethod.GET)
	public MapBean readMaker(Model model, @RequestParam(value = "place_name", defaultValue = "a") String place_name) throws Exception {
		System.out.println(place_name);
		
		MapBean mb = service.makerRead(place_name);
		model.addAttribute("map", mb);
		
		return mb;
	}
	
	@RequestMapping(value = "likeMap", method = RequestMethod.POST)
	   public String likeMap(MapBean map, RedirectAttributes rttr) throws Exception {
		   service.likeUpdate(map);
		   
		   return "redirect:hotPlaceMap";
	   }
}
