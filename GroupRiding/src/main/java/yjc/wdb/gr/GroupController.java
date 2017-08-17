package yjc.wdb.gr;

import java.sql.Date;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import group.riding.bean.GroupBean;
import group.riding.bean.NoticeBean;
import group.riding.service.GroupService;
import group.riding.service.MyinfoService;
import group.riding.service.NoticeService;
import yjc.wdb.gr.bean.GroupInfoBoard;
import yjc.wdb.gr.bean.GroupInfoList;
import yjc.wdb.gr.bean.GroupInfoMemList;
import yjc.wdb.gr.bean.GroupMemPic;
import yjc.wdb.gr.service.GroupInfoBoardService;
import yjc.wdb.gr.service.GroupInfoListService;
import yjc.wdb.gr.service.GroupInfoMemListService;
import yjc.wdb.gr.service.GroupMemPicService;


@Controller
public class GroupController {

	@Inject
	private GroupService service;
	@Inject
	private GroupInfoBoardService infoboardservice;

	@Inject
	private NoticeService noticeservice;

	@Inject 
	private GroupInfoListService infolistservice;
	
	@Inject
	private GroupInfoMemListService infomemListservice;
	
	@Inject 
	private GroupMemPicService mempicservice;

	@Inject
	private MyinfoService Myinfoservice;
	
	@RequestMapping(value="create_gr", method=RequestMethod.GET)
	public void create_gr() {
		
	}
	
	@RequestMapping(value="create_gr", method=RequestMethod.POST)
	public String create(GroupBean gr) throws Exception {
		service.create_gr(gr);
		
		return "redirect:groupList";
	}
	
	@RequestMapping(value="groupList", method=RequestMethod.GET)	
	public String ListAll(Model model,HttpSession session)throws Exception{
		String uid=(String) session.getAttribute("uid");
		List<GroupBean> list =service.gr_list(uid);
		model.addAttribute("list", list);
		
		String groupFrist = Myinfoservice.groupFrist();
		model.addAttribute("groupFrist", groupFrist);

		String groupSecon= Myinfoservice.groupSecon();
		model.addAttribute("groupSecon",groupSecon);
		
		String groupTh=Myinfoservice.groupTh();
		model.addAttribute("groupTh",groupTh);
		return "groupList";
		
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
	
	
	@RequestMapping(value = "groupInfo_re", method = RequestMethod.POST)
	@ResponseBody
	public GroupInfoBoard groupInfo_re(@RequestParam(value="id") int id) throws Exception{
		
		return infoboardservice.read(id);
	}
	
	@RequestMapping(value = "groupInfo_del", method = RequestMethod.POST)
	@ResponseBody
		public void groupInfo_del(@RequestParam(value="id") int id) throws Exception{
			
			 infoboardservice.del(id);
	}
	
	@RequestMapping(value = "groupInfoMem_del", method = RequestMethod.POST)
	@ResponseBody
		public void groupInfoMem_del(@RequestParam(value="uid") String uid, @RequestParam(value="gname")String gname) throws Exception{
			
		infomemListservice.delete(uid, gname);
	}
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "groupInfo", method = RequestMethod.GET) // 그룹
	public String gr_info(@RequestParam(value ="gr_id") String gr_id, @RequestParam(value ="uid") String uid, @RequestParam(value = "gr_name") String gr_name, 
			RedirectAttributes rttr, Model model, GroupBean gr, HttpSession session,HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		int pasor = Integer.parseInt(gr_id); 
		
		
		
		System.out.println("그룹아이디"+pasor);
		System.out.println("그룹이름"+ gr_name);
		System.out.println("내아이디"+  uid);
		
		gr = service.gr_info(gr_name);
		int people = service.gr_people(gr_name);
		
		List<NoticeBean> noticelist = noticeservice.listNotice(gr_name);
		model.addAttribute("noticelist", noticelist);

		String leader = service.leaderNotice(uid, gr_name);	// 그룹장만 공지
		model.addAttribute("leader", leader);	// 그룹장만 공지
		model.addAttribute("people", people);
		
       gr.setGr_id(pasor);
		
		model.addAttribute("group", gr);

		String id = (String) session.getAttribute("uid");

		model.addAttribute("mygroupJudge", service.gr_check(id, gr_name));
		
		session.setAttribute("gr_name1", gr.getGr_name());
		
		List<GroupInfoBoard> list2 = infoboardservice.listAll_Master(gr_id, gr_name);
		
		List<GroupInfoBoard> list = infoboardservice.listAll(pasor);
		GroupInfoList info_list = infolistservice.listAll_li(id);
		GroupMemPic pic = mempicservice.pic_li(id);
		GroupInfoMemList memList = infomemListservice.read(uid, gr_name);
		
		System.out.println("아이디는 ??"+id);
		List<GroupInfoMemList> info_mem_list = infomemListservice.listAll_mem(gr_name);
		
		model.addAttribute("list_master", list2);
		model.addAttribute("listAll_mem", info_mem_list);
		model.addAttribute("listAll", list);
		model.addAttribute("listAll_li",info_list);

		model.addAttribute("mem_li", pic.getFullname());
		model.addAttribute("memList", memList);
		System.out.println("사진은?? ??"+pic.getFullname());
<<<<<<< HEAD

		// 그룹 프로필
	      //   /2017/07/28/s_b61ef20a-43da-4aa6-9da6-ebcc1e8b428c_Hydrangeas.jpg
	      //   /2017/07/28/b61ef20a-43da-4aa6-9da6-ebcc1e8b428c_Hydrangeas.jpg

	      String png1 = service.groupPng(gr_name).substring(0, 12);
	      String png2 = service.groupPng(gr_name).substring(14);
	      String groupPng = png1 + png2;
	            
	      System.out.println("groupPng : " + groupPng);

	      model.addAttribute("groupPng", groupPng);

=======

		
		String joinNo = service.joingNo(uid);
		model.addAttribute("joinNo", joinNo);
		
		// 그룹 프로필
		//	/2017/07/28/s_b61ef20a-43da-4aa6-9da6-ebcc1e8b428c_Hydrangeas.jpg
		//	/2017/07/28/b61ef20a-43da-4aa6-9da6-ebcc1e8b428c_Hydrangeas.jpg

		String png1 = service.groupPng(gr_name).substring(0, 12);
		String png2 = service.groupPng(gr_name).substring(14);
		String groupPng = png1 + png2;
				
		System.out.println("groupPng : " + groupPng);

		model.addAttribute("groupPng", groupPng);

>>>>>>> c14b608c5d8f67ef612ea3d470080c4880d58cb6

		return "groupInfo";
	
	}
	
	
	 @RequestMapping(value = "groupInfo", method = RequestMethod.POST) // 그룹                                                // ?��?��
	 public String groupInfo(@RequestParam(value ="gr_id") String gr_id, @RequestParam(value ="uid") String uid, @RequestParam(value = "gr_name") String gr_name, 
			 GroupInfoBoard vo, RedirectAttributes rttr) throws Exception {
		 
		
		 
		  Calendar c = Calendar.getInstance();
	      String year = c.get(Calendar.YEAR) + "";
	      String month = c.get(Calendar.MONTH) + 1 + "";
	      String date = c.get(Calendar.DATE) + "";
	      
	      Date rrr = Date.valueOf(year + "-" + month + "-" + date);
	      vo.setRegist_date(rrr);

	      System.out.println("post");
	      System.out.println("그룹아이디"+gr_id);
	      System.out.println("그룹네임"+gr_name);
	      int pasor = Integer.parseInt(gr_id); 
	      vo.setGroup_id(pasor);
	      System.out.print(vo);
	      
	      infoboardservice.create(vo);
	      
	     
	      
	      rttr.addAttribute("gr_name",gr_name);
	      rttr.addAttribute("gr_id",gr_id);
	      rttr.addAttribute("uid",uid);
	      
	      return "redirect:groupInfo";
	   }
	 @RequestMapping(value = "groupInfo2", method = RequestMethod.POST) // 그룹                                                // ?��?��
	 public String groupInfo2(@RequestParam(value ="gr_id") String gr_id, @RequestParam(value ="uid") String uid, @RequestParam(value = "gr_name") String gr_name, 
			 GroupInfoBoard vo, RedirectAttributes rttr) throws Exception {
		 
		
		 
		  Calendar c = Calendar.getInstance();
	      String year = c.get(Calendar.YEAR) + "";
	      String month = c.get(Calendar.MONTH) + 1 + "";
	      String date = c.get(Calendar.DATE) + "";
	      
	      Date rrr = Date.valueOf(year + "-" + month + "-" + date);
	      vo.setRegist_date(rrr);

	      System.out.println("post");
	      System.out.println("그룹아이디"+gr_id);
	      System.out.println("그룹네임"+gr_name);
	      int pasor = Integer.parseInt(gr_id); 
	      vo.setGroup_id(pasor);
	      System.out.print(vo);
	      
	      infoboardservice.update(vo);
	      
	     
	      
	      rttr.addAttribute("gr_name",gr_name);
	      rttr.addAttribute("gr_id",gr_id);
	      rttr.addAttribute("uid",uid);
	      
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
	 
	 @RequestMapping(value = "groupInfo_view", method = RequestMethod.POST)
	   @ResponseBody
	   public void groupInfo_view(@RequestParam(value="id") int id) throws Exception{
	      
	      infoboardservice.updateHit(id);
	   }
	 
	 

	
}
