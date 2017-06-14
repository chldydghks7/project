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
	public void createNotice(@ModelAttribute NoticeBean nb) {
		
	}
	
	@RequestMapping(value="createNotice", method=RequestMethod.POST)
	public String create(NoticeBean nb) throws Exception {
		service.createNotice(nb);
		
		return "redirect:groupNotice";
	}
	
	@RequestMapping(value="groupNotice", method=RequestMethod.GET)
	public void groupNotice(NoticeBean nb, Model model) throws Exception {
		List<NoticeBean> list = service.listNotice();
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value="noticeInfo", method=RequestMethod.GET)	// Í∑∏Î£π ?ÉÅ?Ñ∏
	public void noticeInfo(@RequestParam(value="noticeId") int noticeId, Model model) throws Exception {
		NoticeBean info = service.infoNotice(noticeId);
		
		model.addAttribute("info", info);
	}
	
}
