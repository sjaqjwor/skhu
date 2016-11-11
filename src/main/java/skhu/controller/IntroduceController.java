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
@RequestMapping("/introduce")
public class IntroduceController {
	
	@Autowired
	UserService userService;

	@RequestMapping("/introduce1.do")
    public String introduce1(Model model) {
		User user = userService.getCurrentUser();
		Page page = new Page("introduce");
		
        model.addAttribute("user", user);
        model.addAttribute("page",page);
        return "introduce/introduce1";
    }
	@RequestMapping("/introduce2.do")
    public String introduce2(Model model) {
		User user = userService.getCurrentUser();
		Page page = new Page("introduce");
		
        model.addAttribute("user", user);
        model.addAttribute("page",page);
        return "introduce/introduce2";
    }
	@RequestMapping("/introduce3.do")
    public String introduce3(Model model) {
		User user = userService.getCurrentUser();
		Page page = new Page("introduce");
		
        model.addAttribute("user",user);
        model.addAttribute("page",page);
        return "introduce/introduce3";
    }
	@RequestMapping("/introduce4.do")
    public String cardinalList(Model model) {
		User user = userService.getCurrentUser();
		Page page = new Page("introduce");
		
        model.addAttribute("user", user);
        model.addAttribute("page",page);
        return "introduce/introduce4";
    }
}
