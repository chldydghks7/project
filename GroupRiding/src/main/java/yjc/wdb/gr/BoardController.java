package yjc.wdb.gr;

import java.util.HashMap;
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
import group.riding.bean.SharReadFile;
import group.riding.service.BoardService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class BoardController {
   
   @Inject
   private BoardService service;
   
   @RequestMapping(value = "sharing", method = RequestMethod.GET)
   public void sharing(Model model) throws Exception {
      // String writing_Id = (String)session.getAttribute("writing_Id");
      List<BoardBean> list = service.sharList();
      model.addAttribute("board", list);
      
     /* System.out.println(writing_Id);
      BoardBean bb = service.sharRead(writing_Id);
      model.addAttribute("read", bb);
      System.out.println(bb);*/
   }
   
   @RequestMapping(value = "sharingApp", method = RequestMethod.GET)
   @ResponseBody
   public String sharingApp(String callback) throws Exception {
      
	   net.sf.json.JSONArray jarray= new net.sf.json.JSONArray();
	   
	 
      List<BoardBean> list = service.sharList();
    
      JSONObject json= new JSONObject();
      
      json.put("sharlist", jarray.fromObject(list));
      
    return  callback+"("+json+")";
     
   }
   
   
   
   
   @ResponseBody
   @RequestMapping(value = "readShar", method = RequestMethod.GET)
   public  HashMap<String, Object> readShar(Model model, @RequestParam(value = "writing_Id", defaultValue = "-1") int writing_Id) throws Exception {
      HashMap<String, Object>map= new HashMap<>();
      
      
      
      BoardBean bb = service.sharRead(writing_Id);
      List<SharReadFile> cc=service.sharfileRead(writing_Id);
      
      
      
      map.put("read", bb);
      map.put("readfile", cc);
     
      
      
      
   
   
      
      return map;
   }
   
   @RequestMapping(value = "sharingForm", method = RequestMethod.GET)
   public void sharingForm( BoardBean bb) throws Exception {
   
   }
   
   @RequestMapping(value = "sharingForm", method = RequestMethod.POST)
   public String newShar( BoardBean bb, String bbs_Id, RedirectAttributes rttr) throws Exception {
	   
	 
      service.newShar(bb);
      
      String[] filepath=bb.getBbs_FilePath();
      
      for(int i=0;i<filepath.length;i++)
      {
    	  System.out.println("filepath"+filepath[i]);
      }
      
      return "redirect:sharing";
   }
   
   @RequestMapping(value = "sharDel")
   public String sharDel(@RequestParam(value = "writing_Id", defaultValue = "-1") int writing_Id) throws Exception {
	   System.out.println(writing_Id);
	   
	   service.sharDel(writing_Id);
	   
	   return "redirect:sharing";
   }
   
   @RequestMapping(value = "sharEdit", method = RequestMethod.POST)
   public String sharEdit(BoardBean vo) throws Exception {
	   System.out.println("�Ѿ�Դ�");
	   System.out.println(vo);
	   service.sharEdit(vo);
	   
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