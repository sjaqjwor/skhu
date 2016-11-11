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
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;

	@RequestMapping("/edit.do")
    public String edit(Model model) {
		User user = userService.getCurrentUser();
		Page page = new Page("user");
		
        model.addAttribute("user", user);
        model.addAttribute("page",page);
        return "user/edit";
    }
}
