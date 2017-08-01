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
		
		model.addAttribute("rpExplain", service.pointInfo());
		
	}
	
	/*거점 이 여러개일 경우 ajax로 받아오는게 편해서*/
	@RequestMapping(value="getRacePoint", method=RequestMethod.GET)
	@ResponseBody
	public List<RacePointBean> getracePoint() throws Exception {
		List<RacePointBean> point = service.racePoint();
		
		
		
		return point;
		
	}
	
	/*li 클릭 했을때 거기에 해당하는 거점 위치로 지도를 이동 시키기 위해서*/
	@RequestMapping(value="getRacePosition", method=RequestMethod.GET)
	@ResponseBody
	public RacePointBean getRacePosition(String racepoint_id) throws Exception {
		
		int id=Integer.parseInt(racepoint_id);
		
		 RacePointBean raceposition=service.getRacePosition(id);
		
		
		return raceposition;
		
		
		
	}
	
}
