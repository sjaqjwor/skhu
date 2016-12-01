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
   @Autowired
   UserMapper userMapper;
   
   
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
   public String cardinalList(@RequestParam(value="selgisu",required=false) int selgisu, @RequestParam(value="searchsel",required=false) int searchsel, @RequestParam(value="searchtxt",required=false) String searchtxt,
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
   
   @RequestMapping(value = "/member_info.do", method = RequestMethod.GET)
   public String member_info(@RequestParam("uid") String uid,@RequestParam("ustatus") String ustatus,@RequestParam("u_id") String u_id,@RequestParam("u_status") String u_status, Model model) {
      User user = userService.getCurrentUser();
      Page page = new Page("member");
      
      memberMapper.updateMng(uid, ustatus, u_id, u_status);
      memberMapper.updateMng(uid, ustatus, u_id, u_status);
      user = userMapper.selectByLoginId(user.getU_loginId());
      userService.setCurrentUser(user);
      model.addAttribute("mem", memberMapper.selectByUid(uid));
      model.addAttribute("user", user);
      model.addAttribute("page", page);
      model.addAttribute("rc",userService.getCount());
      return "member/member_info";
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
   
   @RequestMapping(value="/member_mail.do")
   public String member_mail(Model model,PaginationM paginationM) {
      User user = userService.getCurrentUser();
      Page page = new Page("member");
      
       model.addAttribute("user",user);
       model.addAttribute("page",page);
       model.addAttribute("gisu", userService.getGisu());
       paginationM.setRecordCount(userMapper.selectCount(paginationM));
       model.addAttribute("list", userMapper.selectPage(paginationM));
       model.addAttribute("rc",userService.getCount());
       return "member/member_mail";
   }
   
   @RequestMapping(value="/member_send.do", method = RequestMethod.POST)
   public String member_send(@RequestParam(value="uid", required=false) String uid, Model model, PaginationM paginationM) {
      User user = userService.getCurrentUser();
      Page page = new Page("member");
      model.addAttribute("user",user);
       model.addAttribute("page",page);
       model.addAttribute("rc",userService.getCount());
      if(uid!=null)
         model.addAttribute("uid",uid);
      else{
         model.addAttribute("gisu", userService.getGisu());
         paginationM.setRecordCount(userMapper.selectCount(paginationM));
          model.addAttribute("list", userMapper.selectPage(paginationM));
         return "member/member_mail";
      }
       
       return "member/member_send";
   }
}