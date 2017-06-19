package yjc.wdb.gr;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import group.riding.bean.BoardReplyBean;
import group.riding.service.BoardReplyService;

@RestController
@RequestMapping("/replies")
public class BoardReplyController {
	
	@Inject
	private BoardReplyService service;
	
	@RequestMapping(value = "/all/{writing_Id}", method = RequestMethod.GET)
	/*public ResponseEntity<List<BoardReplyBean>> getReplyList(@PathVariable("writing_Id") int writing_Id) {
		ResponseEntity<List<BoardReplyBean>> entity = null;
		
		try {
			entity = new ResponseEntity<>(service.replyList(writing_Id), HttpStatus.OK);
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}*/
	public ResponseEntity<Map<String, Object>> replyList(@PathVariable("writing_Id") int writing_Id) {
		ResponseEntity<Map<String, Object>> entity = null;
		
		try {
			List<BoardReplyBean> list = service.replyList(writing_Id);
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);
			
			entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String,Object>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
}
