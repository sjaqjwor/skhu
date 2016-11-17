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
	@Autowired IntroduceMapper introduceMapper;
	@RequestMapping("/introduce1.do")
    public String introduce1(Model model) {
		User user = userService.getCurrentUser();
		Page page = new Page("introduce");
		Introduce introduce = introduceMapper.select();
		model.addAttribute("introduce",introduce.getI_text());
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
	@RequestMapping("/introduce3_write.do")
    public String introduce3_write(Model model) {
		User user = userService.getCurrentUser();
		Page page = new Page("introduce");
		
        model.addAttribute("user", user);
        model.addAttribute("page",page);
        return "introduce/introduce3_write";
    }
	@RequestMapping("/introduce3_content.do")
    public String introduce3_content(Model model) {
		User user = userService.getCurrentUser();
		Page page = new Page("introduce");
		
        model.addAttribute("user", user);
        model.addAttribute("page",page);
        return "introduce/introduce3_content";
    }
	@RequestMapping(value="/introduce1_edit.do",method=RequestMethod.GET)
	public String introduce1_edit(Model model) {
		return "introduce/introduce1_edit";
	}
    @RequestMapping(value="/introduce1_edit.do", method=RequestMethod.POST)
    public String create(@RequestParam("i_text") String i_text,Model model) {
    	introduceMapper.update(i_text);
    	//introduceMapper.update(introduce);
        return "redirect:introduce1.do";
    }


}
