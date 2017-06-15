package yjc.wdb.gr;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

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
			System.out.println("아이디 or 비밀번호 틀림");
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
	public String createkml(@RequestParam(value="kml")String kml,String callback)throws Exception{
		
		service.insertkml(kml);
	
		
		
		
		
	
		 JSONObject json= new JSONObject();
		 
		 json.put("result", "success");
		 
		
		 
	
		 
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
	
	
	   /**  아이디 중복 체크 */
		 @RequestMapping("id_check")
		 @ResponseBody
		 public Map<String, String> id_check(@RequestParam(value="uid") String uid) throws Exception {
		  
		  Map<String, String> resultMap = new HashMap<String, String>();
		  
		  int resultCnt = service.id_check(uid);
		  String result = "";
		  String resultMsg = "";
		  
		  if ( resultCnt == 0 ){
		   result = "success";
		   resultMsg = "사용가능!!!";
		  } else if (resultCnt == 1) {
		   result = "failure";
		   resultMsg = "이미 사용중!!!!!!!!!!!!!";
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
		 

}