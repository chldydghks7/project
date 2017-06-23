package yjc.wdb.gr;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import group.riding.bean.RacePointBean;
import group.riding.service.RacePointService;

@Controller
public class RacePointController {
	
	@Inject
	private RacePointService service;
	
	@RequestMapping(value="racePoint", method=RequestMethod.GET)
	public void racePoint(Model model) throws Exception {
		RacePointBean point = service.racePoint();	// 거점 경도, 위도
		model.addAttribute("point", point);
		
	}
	
	/** 거점 상세 */
	int click = 1;
	@RequestMapping("pointInfo")
	 @ResponseBody
	 public Map<String, Object> pointInfo(@RequestParam(value="racepoint_id") int racepoint_id, Model model) throws Exception {
		  
			if(click==1) {
				service.ra_viewcnt(racepoint_id);	// 뷰 카운트
				click += 1;
			} 
		
		  Map<String, Object> resultMap = new HashMap<String, Object>();
		  
		  RacePointBean pointInfo = service.pointInfo(racepoint_id);
		   	
		  resultMap.put("pointInfo", pointInfo);
		 
		  System.out.println("asd : " + pointInfo.getRa_title());
		  
		  return resultMap;
		 } 
	
	
}
