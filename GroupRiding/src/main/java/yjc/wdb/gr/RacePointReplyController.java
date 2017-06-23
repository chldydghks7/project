package yjc.wdb.gr;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import group.riding.bean.RacePointBean;
import group.riding.service.RacePointService;

@RestController
@RequestMapping("raceReply")
public class RacePointReplyController {

	@Inject
	private RacePointService service;
	
	@RequestMapping(value="", method=RequestMethod.POST)
	public ResponseEntity<String> re_insert(@RequestBody RacePointBean rp) {
		
		ResponseEntity<String> entity = null;
		try {
			service.re_insert(rp);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value="re_list/{racepoint_id}", method=RequestMethod.GET)
	public ResponseEntity<List<RacePointBean>> re_list(@PathVariable("racepoint_id") int racepoint_id) {
		
		ResponseEntity<List<RacePointBean>> entity = null;
		
		try {
			
			entity = new ResponseEntity<>(service.re_list(racepoint_id), HttpStatus.OK);
			
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
}
