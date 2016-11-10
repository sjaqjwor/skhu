package skhu.controller;

import skhu.service.*;
import skhu.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class IndexController {

	@RequestMapping("/index.do")
    public String index() {
        return "index";
    }
	@RequestMapping("/confirm.do") 
	public String confirm(Model model) 
	{ 
		System.out.println("lee");
		Admin admin=UserService.getCurrentAdmin();
		if(admin!=null){
			return "main/home";
		}
		else{
			return "main/home_admin";
		}
	}
}
