package yjc.wdb.gr;

import java.sql.Date;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import group.riding.bean.GroupBean;
import group.riding.bean.UserBean;
import group.riding.service.GroupService;
import yjc.wdb.gr.bean.GroupInfoBoard;
import yjc.wdb.gr.service.GroupInfoBoardService;


@Controller
public class GroupController {

	@Inject
	private GroupService service;
	@Inject
	private GroupInfoBoardService infoboardservice;
	
	@RequestMapping(value="create_gr", method=RequestMethod.GET)
	public void create_gr() {
		
	}
	
	@RequestMapping(value="create_gr", method=RequestMethod.POST)
	public String create(GroupBean gr) throws Exception {
		service.create_gr(gr);
		
		return "redirect:groupList";
	}
	
	@RequestMapping(value="groupList", method=RequestMethod.GET)	
	public void ListAll(Model model,HttpSession session)throws Exception{
		String uid=(String) session.getAttribute("uid");
		List<GroupBean> list =service.gr_list(uid);
		model.addAttribute("list", list);
		
		
	}
	
	
	@RequestMapping(value="groupListOther",method=RequestMethod.GET)
	public void listother(Model model,HttpSession session)throws Exception{
		String uid=(String) session.getAttribute("uid");
		List<GroupBean> list =service.gr_list_other(uid);
		model.addAttribute("listother", list);
		
		
	}
	
	
	
	
	@RequestMapping("gr_icon/{gr_name}")	// 洹몃９ ?븘?씠肄? 由ъ뒪?듃
	@ResponseBody
	public List<String> gr_icon(@PathVariable("gr_name")String gr_name) throws Exception {
		return service.gr_icon(gr_name);
	}
	
	
	@RequestMapping(value = "groupInfo", method = RequestMethod.GET) // 그룹
	
	public String gr_info(@RequestParam(value ="gr_id") int group_id,@RequestParam(value = "gr_name") String gr_name, Model model, GroupBean gr, HttpSession session)
			throws Exception {
		gr = service.gr_info(gr_name);
		int people = service.gr_people(gr_name);

		model.addAttribute("people", people);
		model.addAttribute("group", gr);

		System.out.println("�ο� : " + people);

		String id = (String) session.getAttribute("uid");

		model.addAttribute("mygroupJudge", service.gr_check(id, gr_name));
		
		
		session.setAttribute("gr_name1", gr.getGr_name());
	
		List<GroupInfoBoard> list = infoboardservice.listAll(group_id);
		
		model.addAttribute("listAll", list);
		
		
		return "groupInfo";
	}

	@RequestMapping(value = "groupInfo", method = RequestMethod.POST) // 그룹																// ?��?��
	public String groupInfo(GroupInfoBoard vo, @RequestParam(value = "gr_id") int gr_id, @RequestParam(value = "gr_name") String gr_name, Model model) throws Exception {
		Calendar c = Calendar.getInstance();
		String year = c.get(Calendar.YEAR) + "";
		String month = c.get(Calendar.MONTH) + 1 + "";
		String date = c.get(Calendar.DATE) + "";
		
		Date rrr = Date.valueOf(year + "-" + month + "-" + date);
		vo.setRegist_date(rrr);
		
		System.out.println("그룹아이디"+gr_id);
		vo.setGroup_id(gr_id);
		System.out.print(vo);
		
		infoboardservice.create(vo);
		
				
		model.addAttribute("gr_name", gr_name);
		model.addAttribute("gr_id", gr_id);
		
		return "redirect:groupInfo";

	}
    
	
	@RequestMapping("gr_iconl")	// 洹몃９ ?븘?씠肄? 由ъ뒪?듃
	@ResponseBody
	public List<GroupBean> gr_iconl() throws Exception {
		return service.gr_iconl();
	}
	
	@RequestMapping(value="gr_join", method=RequestMethod.POST)
	public String gr_join(@ModelAttribute GroupBean gr, HttpSession session) throws Exception {
		String gr_check = service.gr_check(gr.getUid(), gr.getGr_name());
//		System.out.println("가입체크? " + gr_check);
		session.setAttribute("gr_check", gr_check);

		if(gr_check == null) {
			service.gr_join(gr);
			System.out.println("그룹 가입 됨");
			return "redirect:groupList";
		} else {
			System.out.println("이미 가입됨");
			return "redirect:groupList";
		}
	}
	
	/**  그룹명 중복 체크 */
	 @RequestMapping("n_check")
	 @ResponseBody
	 public Map<String, String> n_check(@RequestParam(value="gr_name") String gr_name) throws Exception {
	  
	  Map<String, String> resultMap = new HashMap<String, String>();
	  
	  int resultCnt = service.n_check(gr_name);
	  System.out.println("@@@@ : " + resultCnt);
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
	
}
