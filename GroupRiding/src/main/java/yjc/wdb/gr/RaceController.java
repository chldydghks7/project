package yjc.wdb.gr;



import javax.inject.Inject;


import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import group.riding.service.RaceService;

@Controller
public class RaceController {

	@Inject
	RaceService Raceservice;
	
	 //거점기록 등록위해사용
	 @RequestMapping(value="insert_race_record", method=RequestMethod.GET)
	 @ResponseBody
	 public String insertrecord(String racepoint_time,String callback)throws Exception{
		 
		Raceservice.insertRaceRecord(racepoint_time);
		 
		
		
		 JSONObject json= new JSONObject();
		 
		 json.put("result", "success");
		 
	
		
		 
	
		 
		 return callback+"("+json+")";
		 
	 }
	
}
