package yjc.wdb.gr;

import java.io.File;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



import de.micromata.opengis.kml.v_2_2_0.Coordinate;
import de.micromata.opengis.kml.v_2_2_0.Kml;
import group.riding.bean.GroupBean;
import group.riding.bean.KmlBean;
import group.riding.bean.MyPicture;
import group.riding.bean.RidingInfo;
import group.riding.bean.UserBean;
import group.riding.bean.UserData;
import group.riding.dto.LoginDTO;
import group.riding.service.UserService;


@Controller
public class UserController {
	
	@Inject
	private UserService service;
	
	@RequestMapping(value="register", method=RequestMethod.GET)	
	public void getForm(@ModelAttribute UserBean user) {
		
	}
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public String create(UserBean user, RedirectAttributes rttr) throws Exception {
		System.out.println("a :" + user.getFiles());
		
		service.register(user);
		return "signIn";
	}
	
	@RequestMapping(value= "login", method=RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {
		
	}
	
	@RequestMapping(value= "loginPost", method=RequestMethod.POST)
	public String loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {
		
		
		UserBean bean = service.login(dto);
		
		if(bean == null) {
			return "login";
		}
		
		System.out.println("ID : " + bean.getUid());
		System.out.println("File : " + service.getAttach(bean.getUid()));
		session.setAttribute("uid", bean.getUid());
		session.setAttribute("uname", bean.getUname());
		session.setAttribute("icon", service.getAttach(bean.getUid()));

		model.addAttribute("userBean", bean);
		
		return "success";
	}
	
	@RequestMapping("getAttach/{uid}")
	@ResponseBody
	public List<String> getAttach(@PathVariable("uid")String uid) throws Exception {
		return service.getAttach(uid);
	}
	
	@RequestMapping(value="signIn", method=RequestMethod.GET)	
	public void signInGET(@ModelAttribute("dto") LoginDTO dto) {
		
	}
	
	@RequestMapping(value= "signInPost", method=RequestMethod.POST)
	public String signInPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {
		
		UserBean bean = service.login(dto);
		
		if(bean == null) {
			System.out.println("占쏙옙占싱듸옙 or 占쏙옙橘占싫� 틀占쏙옙");
			return "signIn";
		}
		
		System.out.println("ID : " + bean.getUid());
		System.out.println("File : " + service.getAttach(bean.getUid()));
		System.out.println("uname : " + bean.getUname());
		session.setAttribute("uname", bean.getUname());
		session.setAttribute("uid", bean.getUid());
		model.addAttribute("userBean", bean);
		
		return "mainlogin";
	}
	
	@ResponseBody
	@RequestMapping(value="insertkml" ,method=RequestMethod.GET)
	public String createkml(String callback,KmlBean kml)throws Exception{
		
	
		
		service.insertkml(kml);
	
		int kmlid=service.selectkmlid();
		
		
		
	
		 JSONObject json= new JSONObject();
		 
		 json.put("result", "success");
		 json.put("kmlid", kmlid);
		
		 
	
		 
		 return callback+"("+json+")";
	}
	
	  @RequestMapping(value = "Ridingdata", method = RequestMethod.GET)
	   public String ridingdata(Model model,HttpSession session) throws Exception {
	      
	      return "Ridingdata";
	   }
	   
	   @RequestMapping(value="Ridingdataget")
	   @ResponseBody
	   public List<UserData> ridingdataget(HttpSession session, Model model)throws Exception {
	       String uid=(String)session.getAttribute("uid");
	         List<UserData>UserData=service.userData(uid);
	         
	         model.addAttribute("size", UserData.size());
	         model.addAttribute("UserData", UserData);
	         
	         return UserData;
	      
	   }
	
	
	   /**  占쏙옙占싱듸옙 占쌩븝옙 체크 */
		 @RequestMapping("id_check")
		 @ResponseBody
		 public Map<String, String> id_check(@RequestParam(value="uid") String uid) throws Exception {
		  
		  Map<String, String> resultMap = new HashMap<String, String>();
		  
		  int resultCnt = service.id_check(uid);
		  String result = "";
		  String resultMsg = "";
		  
		  if ( resultCnt == 0 ){
		   result = "success";
		   resultMsg = "占쏙옙諛∽옙占�!!!";
		  } else if (resultCnt == 1) {
		   result = "failure";
		   resultMsg = "占싱뱄옙 占쏙옙占쏙옙占�!!!!!!!!!!!!!";
		  }
		  
		  resultMap.put("result", result);
		  resultMap.put("resultMsg", resultMsg);
		  
		  return resultMap;
		 } 
	
		 
		 @RequestMapping(value="logout", method=RequestMethod.GET)
		 public String logout(HttpSession session) throws Exception {
			 session.invalidate();
			 
			 return "main";
		 }
		 //�씪�씠�뵫 �씤�룷 �뀒�씠釉붿뿉 珥앷굅由�,珥앹떆媛� �궫�엯
		 @RequestMapping(value="insert_riding_info", method=RequestMethod.GET)
		 @ResponseBody
		 public String insertRidinginfo(RidingInfo info,String callback)throws Exception{
			 System.out.println("�씪�씠�뵫�씤�룷 �궫�엯");
			 
			 
			 service.insertRidingInfo(info);

			 JSONObject json= new JSONObject();
			 
			 json.put("result", "success");
			 
			
			 
		
			 
			 return callback+"("+json+")";
			 
		 }
		 
		 //�씪�씠�뵫以� 李띿��궗吏� 蹂닿린 sharingform �뿉 �궡�궗吏� �뿉 �쓣�슦湲곗쐞�빐
		 @RequestMapping(value="showMyPicture", method=RequestMethod.GET)
		 @ResponseBody
		 public JSONObject showmypicture(HttpSession session)throws Exception{
			 
			 String uid=(String)session.getAttribute("uid");
			 
			 
			List<MyPicture> list= service.showMyPic(uid);
			 
			
			
			 JSONObject json= new JSONObject();
			 
			 json.put("result", "success");
			 
			 json.put("list", list);
			
			 
		
			 
			 return json;
			 
		 }
		 
		 //�슫�룞�궡�뿭 由ъ뒪�듃 異쒕젰�쐞�빐 �븘�슂 a.kml_name,b.riding_id,b.alltime,b.startDate,b.alldistance,b.avgspeed
		 @RequestMapping(value="show_history", method=RequestMethod.GET)
		 @ResponseBody
		 public String showhistory(String uid,String callback)throws Exception{
			
			List<RidingInfo> list= service.showhistory(uid);

			 
			 JSONArray j= new JSONArray();
			 JSONObject jsonresult= new JSONObject();
			 
			 for(int i=0;i<list.size();i++)
			 {

				 JSONObject json= new JSONObject();
				 json.put("kml_name", list.get(i).getKml_name());

				 json.put("riding_id", list.get(i).getRiding_id());
				 
             	 json.put("alltime", list.get(i).getAlltime());
             	 
             	 json.put("startDate", list.get(i).getStartDate());

				 json.put("alldistance", list.get(i).getAlldistance());
				 
				 json.put("avgspeed", list.get(i).getAvgspeed());
				 
				 json.put("Kcal", list.get(i).getKcal());
				
				j.add(json);
				
				 
				 
				 
			 }
			 
		
			 jsonresult.put("history", j);
			 
			
			 
		
			 
			 return callback+"("+jsonresult+")";
			 
		 }
		 
		 
		 

}