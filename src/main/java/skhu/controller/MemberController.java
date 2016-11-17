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
	@Autowired
	MemberMapper memberMapper;

	@RequestMapping("/list.do")
	public String list(Model model) {
		User user = userService.getCurrentUser();
		Page page = new Page("member");

		model.addAttribute("user", user);
		model.addAttribute("page", page);
		model.addAttribute("gisu", userService.getGisu());
		
		return "member/list";
	}

	@RequestMapping(value="/cardinalList.do", method=RequestMethod.GET)
	public String cardinalList(@RequestParam("selgisu") int selgisu, Model model) {
		User user = userService.getCurrentUser();
		Page page = new Page("member");

		model.addAttribute("user", user);
		model.addAttribute("page", page);
		model.addAttribute("selgisu", selgisu);
		model.addAttribute("mnglist", memberMapper.selectByGisuMng(selgisu));
		model.addAttribute("list", memberMapper.selectByGisu(selgisu));
		return "member/cardinalList";
	}
	
	@RequestMapping(value="/cardinalList.do", method=RequestMethod.POST)
	public String cardinalList(@RequestParam("selgisu") int selgisu,
			@RequestParam("searchtxt") String searchtxt, @RequestParam("searchsel") int searchsel, Model model) {
		User user = userService.getCurrentUser();
		Page page = new Page("member");

		model.addAttribute("user", user);
		model.addAttribute("page", page);
		model.addAttribute("selgisu", selgisu);
		
		searchtxt = searchtxt.trim();
		if(searchsel==0){ //이름(초성포함)검색
			model.addAttribute("list", memberMapper.selectByName(searchtxt)); 
		} else if(searchsel==1){ //폰번호로 검색
			//System.out.println(searchtxt+"/------------바꾸기전----------");
			searchtxt = userService.modPhone(searchtxt); // -를 빼먹고 검색하는경우 -를 삽입하는 modPhone메소드
			//System.out.println(searchtxt+"/---------------바꾼후-------------");
			model.addAttribute("list", memberMapper.selectByPhone(searchtxt));
		} else if (searchsel==2){ //소속지위로 검색
			model.addAttribute("list", memberMapper.selectByStatus(searchtxt));
		}
		
		return "member/cardinalList";
	}
}
