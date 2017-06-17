package yjc.wdb.gr;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import group.riding.bean.NoticeBean;
import group.riding.service.NoticeService;


@Controller
public class NoticeController {

	@Inject
	private NoticeService service;

	@RequestMapping(value="createNotice", method=RequestMethod.GET)
	public void createNotice(String gr_id, String gr_name, Model model) {
		model.addAttribute("gr_id", gr_id);
		
		model.addAttribute("gr_name", gr_name);
	}
	
	@RequestMapping(value="createNotice", method=RequestMethod.POST)
	public String create(NoticeBean nb, String gr_id, String uid, String gr_name) throws Exception {
		service.createNotice(nb);
		
		return "redirect:groupInfo?gr_id=" + gr_id + "&uid=" + uid + "&gr_name=" + gr_name;
	}
	
	@RequestMapping(value="groupNotice", method=RequestMethod.GET)
	public void groupNotice(@RequestParam(value="gr_name") String gr_name, NoticeBean nb, Model model) throws Exception {
		List<NoticeBean> list = service.listNotice(gr_name);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value="noticeInfo", method=RequestMethod.GET)	// Í∑∏Î£π ?ÉÅ?Ñ∏
	public void noticeInfo(@RequestParam(value="noticeId") int noticeId, Model model) throws Exception {
		NoticeBean info = service.infoNotice(noticeId);
		
		model.addAttribute("info", info);
	}
	
	@RequestMapping(value="calendar", method=RequestMethod.GET)	// ∞≥¿Œ ƒ∂∏∞¥ı GET
	public void  userNotice(@RequestParam(value="uid") String uid, Model model) throws Exception{
		List<NoticeBean> list = service.userNotice(uid);
		model.addAttribute("list", list);
	}
	
}
