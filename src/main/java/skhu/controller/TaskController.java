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
@RequestMapping("/task")
public class TaskController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/message.do")
    public String message(Model model) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        return "task/message";
    }
	@RequestMapping("/member_register.do")
    public String member_register(Model model) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        return "task/member_register";
    }
	@RequestMapping("/request.do")
    public String request(Model model) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        return "task/request";
    }

}
