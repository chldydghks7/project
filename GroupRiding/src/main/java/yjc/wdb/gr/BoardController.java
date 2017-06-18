package yjc.wdb.gr;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import group.riding.bean.BoardBean;
import group.riding.service.BoardService;

@Controller
public class BoardController {
   
   @Inject
   private BoardService service;
   
   @RequestMapping(value = "sharing", method = RequestMethod.GET)
   public void sharing(Model model, @RequestParam(value = "writing_Id", defaultValue = "-1") int writing_Id) throws Exception {
      // String writing_Id = (String)session.getAttribute("writing_Id");
      List<BoardBean> list = service.sharList();
      model.addAttribute("board", list);
      
      System.out.println(writing_Id);
      BoardBean bb = service.sharRead(writing_Id);
      model.addAttribute("read", bb);
      System.out.println(bb);
   }
   
   @ResponseBody
   @RequestMapping(value = "readShar", method = RequestMethod.GET)
   public BoardBean readShar(Model model, @RequestParam(value = "writing_Id", defaultValue = "-1") int writing_Id) throws Exception {
      System.out.println(writing_Id);
      BoardBean bb = service.sharRead(writing_Id);
      model.addAttribute("read", bb);
      
      return bb;
   }
   
   @RequestMapping(value = "sharingForm", method = RequestMethod.GET)
   public void sharingForm(@ModelAttribute BoardBean bb) throws Exception {
   
   }
   
   @RequestMapping(value = "sharingForm", method = RequestMethod.POST)
   public String newShar(@ModelAttribute BoardBean bb, String bbs_Id, RedirectAttributes rttr) throws Exception {
      service.newShar(bb);
      
      return "redirect:sharing";
   }
   
   @RequestMapping(value = "likeShar", method = RequestMethod.POST)
   public String likeShar(BoardBean bb, RedirectAttributes rttr) throws Exception {
	   service.likeUpdate(bb);
	   
	   return "redirect:sharing";
   }
   
   @RequestMapping(value = "getFile/{writing_Id}")
   @ResponseBody()
   public List<String> getFile(@PathVariable("writing_Id") int writing_Id) throws Exception {
      return service.getFile(writing_Id);
   }
   
   @RequestMapping(value = "getFile2")
   @ResponseBody
   public List<BoardBean> getFile2() throws Exception {
      return service.getFile2();
   }
}