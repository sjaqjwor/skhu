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
	
	@Autowired UserService userService;
	@Autowired TaskService taskService;
	@Autowired UserMapper userMapper;
	
	@RequestMapping("/message.do")
    public String message(Model model) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        return "task/message";
    }
	
	@RequestMapping("/member_list.do")
    public String member_list(Model model) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        model.addAttribute("list", userMapper.selectAll());
        return "task/member_list";
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
	
	@RequestMapping(value="/user_edit.do", method = RequestMethod.GET)
    public String edit(@RequestParam("id") String id,Model model) {
		User user = userMapper.selectByLoginId(id);
		Page page = new Page("task");
		
        model.addAttribute("user", user);
        model.addAttribute("page",page);
        return "task/user_edit";
    }
	
	@RequestMapping(value="/user_edit.do", method = RequestMethod.POST)
    public String edit(User user, Model model) {
		Page page = new Page("task");
		
        String message = taskService.validateBeforeUpdate(user);
        if (message == null) {
            userMapper.userUpdateByAdmin(user);
            model.addAttribute("success", "저장했습니다.");
        } else{
            model.addAttribute("error", message);
        }
        
        model.addAttribute("page",page);        
        return "task/user_edit";
    }

}
