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
	@Autowired
	UserMapper userMapper;
	
	@RequestMapping(value="/edit.do", method = RequestMethod.GET)
    public String edit(Model model) {
		User user = userService.getCurrentUser();
		Page page = new Page("user");
		
        model.addAttribute("user", user);
        model.addAttribute("page",page);
        return "user/edit";
    }
	
	@RequestMapping(value="/edit.do", method = RequestMethod.POST)
    public String edit(User user, Model model) {
		Page page = new Page("user");
		
        String message = userService.validateBeforeUpdate(user);
        if (message == null) {
            userMapper.myUpdate(user);
            userService.setCurrentUser(user);
            model.addAttribute("success", "저장했습니다.");
        } else{
            model.addAttribute("error", message);
            if(message.equals("이름을 입력하세요."))
            	user.setU_name(userService.getCurrentUser().getU_name());
        }
        model.addAttribute("page",page);        
        return "user/edit";
    }
}
