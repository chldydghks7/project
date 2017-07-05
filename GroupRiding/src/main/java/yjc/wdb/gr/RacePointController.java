package yjc.wdb.gr;

import java.util.HashMap;
import java.util.List;
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
		RacePointBean point = service.racePoint();	// ���� �浵, ����
		model.addAttribute("point", point);
		
		List<RacePointBean> race_record = service.race_record(point.getRacepoint_id());
		model.addAttribute("race_record", race_record);
	}
	
	/** ���� �� */
	int click = 1;
	@RequestMapping(value="pointInfo", method=RequestMethod.GET)
	 @ResponseBody
	 public Map<String, Object> pointInfo(@RequestParam(value="racepoint_id") int racepoint_id, Model model) throws Exception {
		  System.out.println(racepoint_id);
			if(click==1) {
				service.ra_viewcnt(racepoint_id);	// �� ī��Ʈ
				click += 1;
			} 
		
		  Map<String, Object> resultMap = new HashMap<String, Object>();
		  
		  RacePointBean pointInfo = service.pointInfo(racepoint_id);
		   	
		  resultMap.put("pointInfo", pointInfo);
		 
		  System.out.println("asd : " + racepoint_id);
		  
		  return resultMap;
		 } 
	
	
}
