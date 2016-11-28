package skhu.controller;

import skhu.service.*;
import skhu.model.*;
import skhu.mapper.*;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
@RequestMapping("/task")
public class TaskController {
	
	@Autowired UserService userService;
	@Autowired TaskService taskService;
	@Autowired UserMapper userMapper;
	@Autowired RequestMapper requestMapper;
	
	@RequestMapping("/message.do")
    public String message(Model model) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        model.addAttribute("rc",userService.getCount());
        return "task/message";
    }
	
	@RequestMapping("/member_list.do")
    public String member_list(Model model,PaginationM paginationM) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        
        paginationM.setRecordCount(userMapper.selectCount(paginationM));
        model.addAttribute("list", userMapper.selectPage(paginationM));
        model.addAttribute("rc",userService.getCount());
        return "task/member_list";
    }
	
	@RequestMapping("/member_register.do")
    public String member_register(Model model) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        model.addAttribute("rc",userService.getCount());
        return "task/member_register";
    }
	
	@RequestMapping(value="/user_edit.do", method = RequestMethod.GET)
    public String edit(@RequestParam("id") String id,Model model,PaginationM paginationM) {
		User user = userMapper.selectByLoginId(id);
		Page page = new Page("task");
		
        model.addAttribute("user", user);
        model.addAttribute("page",page);
        model.addAttribute("rc",userService.getCount());
        return "task/user_edit";
    }
	
	@RequestMapping(value="/user_edit.do", method = RequestMethod.POST)
    public String edit(User user, Model model,PaginationM paginationM) {
		Page page = new Page("task");
		
        String message = taskService.validateBeforeUpdate(user);
        if (message == null) {
            userMapper.userUpdateByAdmin(user);
            model.addAttribute("success", "저장했습니다.");
        } else{
            model.addAttribute("error", message);
        }
        
        model.addAttribute("page",page);        
        model.addAttribute("rc",userService.getCount());
        return "task/user_edit";
    }
	/*아이디 변경*/
	@RequestMapping("/requestId.do")
    public String request(Model model) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        model.addAttribute("active1","active");
        model.addAttribute("list", requestMapper.RequestIdList1());
        model.addAttribute("rc",userService.getCount());
        return "task/requestId";
    }
	@RequestMapping(value="/requestId.do",method = RequestMethod.POST)
    public String request(Model model,@RequestParam(value="values",required=false) List<String> values,
    		@RequestParam("sel") String sel) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
		if(values!=null){
			for(String val : values){
				R_UpdateId r_updateId = requestMapper.selectRequestId(val);
				if(sel.equals("승인")){
					requestMapper.okRequestId(r_updateId);
				}else if(sel.equals("거절")){
					requestMapper.noRequestId(r_updateId);
				}
			}
		}
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        model.addAttribute("active1","active");
        model.addAttribute("list", requestMapper.RequestIdList1());
        model.addAttribute("rc",userService.getCount());
        return "task/requestId";
    }
	
	@RequestMapping("/requestIdF.do")
    public String requestF(Model model) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        model.addAttribute("active2","active");
        model.addAttribute("list", requestMapper.RequestIdList2());
        model.addAttribute("rc",userService.getCount());
        return "task/requestId";
    }
	@RequestMapping(value="/requestIdF.do",method = RequestMethod.POST)
    public String requestF(Model model,@RequestParam(value="values",required=false) List<String> values,
    		@RequestParam("sel") String sel) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
		if(values!=null){
			for(String val : values){
				R_UpdateId r_updateId = requestMapper.selectRequestId(val);
				requestMapper.delRequestId(r_updateId);
			}
		}
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        model.addAttribute("active2","active");
        model.addAttribute("list", requestMapper.RequestIdList2());
        model.addAttribute("rc",userService.getCount());
        return "task/requestId";
    }
	/*회원탈퇴*/
	@RequestMapping("/requestDrop.do")
    public String requestDrop(Model model) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        model.addAttribute("active1","active");
        model.addAttribute("list", requestMapper.RequestDropList1());
        model.addAttribute("rc",userService.getCount());
        return "task/requestDrop";
    }
	
	@RequestMapping(value="/requestDrop.do",method = RequestMethod.POST)
    public String requestDrop(Model model,@RequestParam(value="values",required=false) List<String> values,
    		@RequestParam("sel") String sel) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
		if(values!=null){
			for(String val : values){
				R_DropUser r_dropUser = requestMapper.selectRequestDrop(val);
				if(sel.equals("승인")){
					requestMapper.okRequestDrop(r_dropUser);
				}else if(sel.equals("거절")){
					requestMapper.noRequestDrop(r_dropUser);
				}
			}
		}
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        model.addAttribute("active1","active");
        model.addAttribute("list", requestMapper.RequestDropList1());
        model.addAttribute("rc",userService.getCount());
        return "task/requestDrop";
    }
	
	@RequestMapping("/requestDropF.do")
    public String requestDropF(Model model) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        model.addAttribute("active2","active");
        model.addAttribute("list", requestMapper.RequestDropList2());
        model.addAttribute("rc",userService.getCount());
        return "task/requestDrop";
    }
	@RequestMapping(value="/requestDropF.do",method = RequestMethod.POST)
    public String requestDropF(Model model,@RequestParam(value="values",required=false) List<String> values,
    		@RequestParam("sel") String sel) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
		if(values!=null){
			for(String val : values){
				R_DropUser r_dropUser = requestMapper.selectRequestDrop(val);
				if(sel.equals("기록 삭제")){
					if((r_dropUser.getRd_state()).equals("거절")){
						requestMapper.delRequestDrop(r_dropUser);
					}
				}else if(sel.equals("완전 탈퇴")){
					if((r_dropUser.getRd_state()).equals("승인")){
						requestMapper.delDropComplete(r_dropUser);
					}
				}
			}
		}
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        model.addAttribute("active2","active");
        model.addAttribute("list", requestMapper.RequestDropList2());
        model.addAttribute("rc",userService.getCount());
        return "task/requestDrop";
    }
	
	/*excel view 로 뽑기*/
	@RequestMapping(value = "/upload.do", method = RequestMethod.POST)
	public String upload(Model model,MultipartHttpServletRequest request)  throws Exception{
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
	    MultipartFile excelFile =request.getFile("excelFile");
	    System.out.println("엑셀 파일 업로드 컨트롤러");
	    if(excelFile==null || excelFile.isEmpty()){
	        throw new RuntimeException("엑셀파일을 선택 해 주세요.");
	    }
	        
	    java.io.File destFile = new java.io.File(request.getSession().getServletContext().getRealPath("/resources/excel/")+excelFile.getOriginalFilename());
	    
	    try{
	        excelFile.transferTo(destFile);
	    }catch(IllegalStateException | IOException e){
	        throw new RuntimeException(e.getMessage(),e);
	    }
	        
	    UserForm userForm = new UserForm();
	    userForm.setUsers(taskService.excelUpload(destFile));
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
	    model.addAttribute("userForm",userForm);
	    model.addAttribute("rc",userService.getCount());
	    //FileUtils.delete(destFile.getAbsolutePath());
	    return "task/member_register";
	}
	
	/*다중 form 회원 등록*/
	@RequestMapping(value="/register.do",method = RequestMethod.POST)
    public String register(Model model,@ModelAttribute("userForm") UserForm userForm) {
		Admin admin = userService.getCurrentAdmin();
		Page page = new Page("task");
		
		List<User> users = userForm.getUsers();
		
		if(users!=null && users.size()>0){
			for(User user:users){
				user.setU_password("77777");
				userMapper.registerUser(user);
			}
		}
		
        model.addAttribute("admin", admin);
        model.addAttribute("page",page);
        model.addAttribute("rc",userService.getCount());
        return "task/member_register";
    }
}
