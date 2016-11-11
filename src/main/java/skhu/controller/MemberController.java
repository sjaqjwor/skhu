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
	
	@RequestMapping("/cardinalList.do")
    public String cardinalList(Model model) {
		User user = userService.getCurrentUser();
		Page page = new Page("member");
		
        model.addAttribute("user", user);
        model.addAttribute("page",page);
        return "member/cardinalList";
    }

}
