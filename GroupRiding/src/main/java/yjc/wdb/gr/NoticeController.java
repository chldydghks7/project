package yjc.wdb.gr;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import group.riding.bean.NoticeBean;
import group.riding.bean.RidingInfoBean;
import group.riding.service.NoticeService;
import group.riding.service.RidingInfoService11;


@Controller
public class NoticeController {

	@Inject
	private NoticeService service;
	@Inject
	private RidingInfoService11 ridingInfoservice;
	
	@RequestMapping(value="createNotice", method=RequestMethod.GET)
	public void createNotice(String gr_id, String gr_name, Model model) {
		model.addAttribute("gr_id", gr_id);
		
		model.addAttribute("gr_name", gr_name);
	}
	
	@RequestMapping(value="createNotice", method=RequestMethod.POST)
	public String create(NoticeBean nb, String gr_id, String uid, String gr_name) throws Exception {
		service.createNotice(nb);
		
//		return "redirect:groupInfo?gr_id=" + gr_id + "&uid=" + uid + "&gr_name=" + gr_name;
		return "redirect:groupNotice?gr_name=" + gr_name;
	}
	
	@RequestMapping(value="groupNotice", method=RequestMethod.GET)
	public void groupNotice(@RequestParam(value="gr_name") String gr_name, NoticeBean nb, Model model) throws Exception {
		List<NoticeBean> list = service.listNotice(gr_name);
		model.addAttribute("list", list);
		
		
	}
	
	@RequestMapping(value="noticeInfo", method=RequestMethod.GET)	// 洹몃９ ?占쏙옙?占쏙옙
	public void noticeInfo(@RequestParam(value="noticeId") int noticeId, @RequestParam(value="uid") String uid, Model model, HttpSession session) throws Exception {
		NoticeBean info = service.infoNotice(noticeId);
		
		List<NoticeBean> memberjoininfo=service.getjoininfo(noticeId, info.getGr_name());
		
		String joinCheck = service.joinCheck(noticeId, uid);
		session.setAttribute("joinCheck", joinCheck);
		
		model.addAttribute("info", info);
		model.addAttribute("memberjoininfo", memberjoininfo);
		
	}
	
	@RequestMapping(value="calendar", method=RequestMethod.GET)	// 占쏙옙占쏙옙 캘占쏙옙占쏙옙 GET
	public void  userNotice(@RequestParam(value="uid") String uid, Model model) throws Exception{
		List<NoticeBean> list = service.userNotice(uid);
		List<NoticeBean> llll = service.noticeCheck(uid);	// 창占쏙옙占쌍님ㅿ옙占쏙옙占쏙옙
		List<RidingInfoBean> iiii =service.ridingDate(uid);
		model.addAttribute("llll", llll);	// 창占쏙옙占쌍님ㅿ옙占쏙옙占쏙옙
		model.addAttribute("list", list);
		model.addAttribute("iiii", iiii);	// 占쏙옙占싱듸옙 占쏙옙占쏙옙
		
	}
	
	@RequestMapping(value="joinNotice", method=RequestMethod.POST)
	public String joinNotice(NoticeBean nb, int noticeId, String uid) throws Exception {
		service.joinNotice(nb);
		
		return "redirect:noticeInfo?noticeId=" + noticeId + "&uid=" + uid;
	}
	
	@RequestMapping(value="updateCheck", method=RequestMethod.GET)
	public String updateCheck(NoticeBean nb, int noticeId, String uid) throws Exception {
		service.updateCheck(nb);
		
		return "redirect:noticeInfo?noticeId=" + noticeId + "&uid=" + uid;
	}
	
	@RequestMapping(value="aaa", method=RequestMethod.GET)	// 占쌍깍옙 占쏙옙占싱듸옙
	public void aaaaaaaaaa(@RequestParam(value="gr_name") String gr_name, NoticeBean nb, Model model) throws Exception {
		List<NoticeBean> list = service.listNotice(gr_name);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value="ridingInfo", method=RequestMethod.GET)	// 洹몃９ ?占쏙옙?占쏙옙
	public void ridingInfo(@RequestParam(value="riding_id") int riding_id, @RequestParam(value="uid") String uid, Model model) throws Exception {
		RidingInfoBean rInfo = service.ridingInfo(riding_id);
		
		String[] time=rInfo.getAlltime().split("/");
		
		String alltime=time[0]+"�떆媛�"+time[1]+"遺�"+time[2]+"珥�";
		
		rInfo.setAlltime(alltime);
				
		
		List<RidingInfoBean> grap = ridingInfoservice.grap(rInfo.getKml_id());
		  model.addAttribute("grap", grap);
		  
		model.addAttribute("rInfo", rInfo);
		
	}
	
	
	
	
	
}
