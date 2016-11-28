package skhu.controller;

import skhu.service.*;
import skhu.model.*;
import skhu.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/member")
public class MemberController {

   @Autowired
   UserService userService;
   @Autowired
   MemberMapper memberMapper;

   @RequestMapping(value = "/cardinalList.do", method = RequestMethod.GET)
   public String cardinalList(@RequestParam("selgisu") int selgisu, Model model) {
      User user = userService.getCurrentUser();
      Page page = new Page("member");

      model.addAttribute("user", user);
      model.addAttribute("page", page);
	  model.addAttribute("rc",userService.getCount());
      model.addAttribute("gisu", userService.getGisu());
      model.addAttribute("selgisu", selgisu);
      model.addAttribute("list", memberMapper.selectByGisu(selgisu));
      return "member/cardinalList";
   }

   @RequestMapping(value = "/cardinalList.do", method = RequestMethod.POST)
   public String cardinalList(@RequestParam("selgisu") int selgisu, @RequestParam("searchsel") int searchsel, @RequestParam("searchtxt") String searchtxt,
         Model model){
      User user = userService.getCurrentUser();
      Page page = new Page("member");

      model.addAttribute("user", user);
      model.addAttribute("page", page);
      model.addAttribute("rc",userService.getCount());
      model.addAttribute("gisu", userService.getGisu());
      model.addAttribute("selgisu", selgisu);
      model.addAttribute("searchsel", searchsel);
      model.addAttribute("searchtxt", searchtxt);
      if (searchsel == 2){
         searchtxt = searchtxt.trim();
         searchtxt = userService.modPhone(searchtxt);
      }
      if(searchtxt.equals("null"))
         model.addAttribute("list", memberMapper.selectByGisu(selgisu));
      else
         model.addAttribute("list", memberMapper.selectSearch(selgisu, searchsel, searchtxt));
      return "member/cardinalList";
   }
   
   @RequestMapping(value = "/member_info.do", method = RequestMethod.POST)
   public String member_info(@RequestParam("selgisu") int selgisu, @RequestParam("searchsel") int searchsel, @RequestParam("searchtxt") String searchtxt
         ,@RequestParam("uid") String uid, Model model) {
      User user = userService.getCurrentUser();
      Page page = new Page("member");

      model.addAttribute("user", user);
      model.addAttribute("page", page);
      model.addAttribute("rc",userService.getCount());
      model.addAttribute("mem", memberMapper.selectByUid(uid));
      model.addAttribute("selgisu", selgisu);
      model.addAttribute("searchsel", searchsel);
      model.addAttribute("searchtxt", searchtxt);
      
      return "member/member_info";
   }
}