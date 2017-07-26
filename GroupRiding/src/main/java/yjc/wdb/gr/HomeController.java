package yjc.wdb.gr;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import yjc.wdb.gr.bean.GroupRank;
import yjc.wdb.gr.service.GroupRankService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	private GroupRankService rankservice;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "main";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "main", method = RequestMethod.GET)
	public void main() {
		
	}
	@RequestMapping(value = "mainlogin", method = RequestMethod.GET)
	public void mainlogin() {
		
	}
	
	/*@RequestMapping(value = "groupList", method = RequestMethod.GET)
	public void groupList() {
		
	}*/
	
	@RequestMapping(value = "groupRank", method = RequestMethod.GET)
	public void groupRank(Model model)throws Exception{
		List<GroupRank> list1=rankservice.select1();
		model.addAttribute("list1", list1);
		
		List<GroupRank> list2=rankservice.select2();
		model.addAttribute("list2", list2);
		
		List<GroupRank> list3=rankservice.select3();
		model.addAttribute("list3", list3);
	}
	
	
}
