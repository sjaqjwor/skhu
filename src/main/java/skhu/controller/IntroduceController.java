package skhu.controller;

import skhu.service.*;
import skhu.model.*;
import skhu.mapper.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Paths;
import java.io.BufferedOutputStream;
import java.net.URLEncoder;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/introduce")
public class IntroduceController {

   @Autowired
   UserService userService;
   @Autowired
   IntroduceMapper introduceMapper;
   @Autowired
   RuleMapper ruleMapper;
   @Autowired
   FileMapper fileMapper;

   @RequestMapping("/introduce1.do")
   public String introduce1(Model model) {
      User user = userService.getCurrentUser();
      Page page = new Page("introduce");
      Introduce introduce = introduceMapper.select();
      model.addAttribute("introduce", introduce.getI_text());
      model.addAttribute("user", user);
      model.addAttribute("page", page);
      return "introduce/introduce1";
   }

   @RequestMapping("/introduce2.do")
   public String introduce2(Model model) {
      User user = userService.getCurrentUser();
      Page page = new Page("introduce");

      model.addAttribute("user", user);
      model.addAttribute("page", page);
      return "introduce/introduce2";
   }

   @RequestMapping("/introduce3.do")
   public String introduce3(Model model, Pagination pagination) {
      User user = userService.getCurrentUser();
      Page page = new Page("introduce");
      model.addAttribute("user", user);
      model.addAttribute("page", page);

      pagination.setRecordCount(ruleMapper.selectCount(pagination));
      model.addAttribute("list", ruleMapper.selectPage(pagination));

      return "introduce/introduce3";
   }

   @RequestMapping(value = "/introduce3_content.do")
   public String introduce3_content(Model model, @RequestParam("r_id") int r_id, Pagination pagination) {
      User user = userService.getCurrentUser();
      Page page = new Page("introduce");
      model.addAttribute("user", user);
      model.addAttribute("page", page);
      model.addAttribute("rule", ruleMapper.selectById(r_id));
      ruleMapper.updater_num(r_id);
      model.addAttribute("files", fileMapper.r_file_selectByArticleId(r_id));
      return "introduce/introduce3_content";
   }

   @RequestMapping("delete.do")
   public String delete(Model model, @RequestParam("r_id") int r_id) {
      fileMapper.r_file_deleteByArticleId(r_id);
      ruleMapper.delete(r_id);
      return "redirect:/introduce/introduce3.do";
   }

   @RequestMapping(value = "/introduce3_edit.do", method = RequestMethod.GET)
   public String edit(Model model, @RequestParam("r_id") int r_id) {
      model.addAttribute("rule", ruleMapper.selectById(r_id));
      model.addAttribute("files", fileMapper.r_file_selectByArticleId2(r_id));
      return "/introduce/introduce3_edit";
   }

   @RequestMapping(value = "introduce3_edit.do", method = RequestMethod.POST,params="cmd=save")
   public String edit(Model model, Rule rule,@RequestParam("file") MultipartFile uploadedFile)throws IOException  {
      ruleMapper.updateRule(rule);
      if (uploadedFile.getSize() > 0) {
         File file = new File();
         file.setR_id(rule.getR_id());
         file.setF_name(Paths.get(uploadedFile.getOriginalFilename()).getFileName().toString());
         file.setF_size((int) uploadedFile.getSize());
         file.setF_data(uploadedFile.getBytes());
         fileMapper.r_file_insert(file);
      }
      
      return "redirect:/introduce/introduce3_content.do?r_id=" + rule.getR_id();
   }
   
    @RequestMapping(value = "introduce3_edit.do", method = RequestMethod.POST,params="cmd=deleteFile")
    public String edit(Model model, Pagination pagination, Rule rule) {
        
            fileMapper.r_file_deleteByArticleId(rule.getR_id());
        return "redirect:/introduce/introduce3_edit.do?r_id=" + rule.getR_id();
    }

   @RequestMapping(value = "/introduce3_write.do", method = RequestMethod.GET)
   public String create(Model model, Pagination pagination) {
      return "introduce/introduce3_write";
   }

   @RequestMapping(value = "/introduce3_write.do", method = RequestMethod.POST)
   public String create(Model model, Rule rule, Pagination pagination,
         @RequestParam("file") MultipartFile uploadedFile) throws IOException {
      ruleMapper.insert(rule);
      if (uploadedFile.getSize() > 0) {
         File file = new File();
         file.setR_id(ruleMapper.Rule_max());
         file.setF_name(Paths.get(uploadedFile.getOriginalFilename()).getFileName().toString());
         file.setF_size((int) uploadedFile.getSize());
         file.setF_data(uploadedFile.getBytes());
         fileMapper.r_file_insert(file);
      }
      
      return "redirect:/introduce/introduce3.do";
   }

   @RequestMapping(value = "/introduce1_edit.do", method = RequestMethod.GET)
   public String introduce1_edit(Model model) {
      return "introduce/introduce1_edit";
   }

   @RequestMapping(value = "/introduce1_edit.do", method = RequestMethod.POST)
   public String create(@RequestParam("i_text") String i_text, Model model) {
      introduceMapper.update(i_text);
      // introduceMapper.update(introduce);
      return "redirect:introduce1.do";
   }
   @RequestMapping(value = "rule_download.do")
    public void rule_download(@RequestParam("f_id") int f_id, HttpServletResponse response) throws IOException {
        File file = fileMapper.r_file_selectById(f_id);
        System.out.println(f_id+"zzzz");
        if (file == null) return;
        String fileName = URLEncoder.encode(file.getF_name(),"UTF-8");
        response.setContentType("application/octet-stream");
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName + ";");
        try (BufferedOutputStream output = new BufferedOutputStream(response.getOutputStream())) {
            output.write(file.getF_data());
        }
    }

}