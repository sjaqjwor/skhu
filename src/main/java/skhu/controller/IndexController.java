package skhu.controller;

import skhu.service.*;
import skhu.model.*;

import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

	@Autowired
	UserService userService;
		
	@RequestMapping("/index.do")
    public String index() {
        return "index";
    }
	
	@RequestMapping(value="/login_success.do",method=RequestMethod.GET)
	public @ResponseBody JsonResult loginSuccess(HttpServletResponse response) {
        response.addHeader("Access-Control-Allow-Origin", "*");
	    
	    User user = userService.getCurrentUser();
	    
	    if (user!=null)
	       return new JsonResult(true, true ,user.getU_count());
	    
	    return new JsonResult(true, false,false);
	}
	
	@RequestMapping(value="/login_failure.do",method=RequestMethod.GET)
	public @ResponseBody JsonResult loginFailure(HttpServletResponse response) {
        response.addHeader("Access-Control-Allow-Origin", "*");

	    return new JsonResult(false, false ,false);
	}
}
