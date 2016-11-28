package skhu.service;

import skhu.model.User;
import skhu.util.ExcelRead;
import skhu.util.ExcelReadOption;
import skhu.mapper.UserMapper;

import java.io.File;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TaskService {
    @Autowired
    UserMapper userMapper;

	public String validateBeforeUpdate(User user) {
        String s = user.getU_loginId();
        int c = user.getU_cNumber();
        
        User user2 = userMapper.selectByLoginId(s);
        if (user2 != null)
        	if(!(user.getU_id().equals(user2.getU_id())))
        		return "로그인ID가 중복됩니다.";
        
        s = user.getU_password();
        if (StringUtils.isBlank(s))
            return "비밀번호를 입력하세요.";

        s = user.getU_name();
        if (StringUtils.isBlank(s))
            return "이름을 입력하세요.";
        
        s = user.getU_status();
        if(s.equals("회장")||s.equals("부회장")){
	        user2 = userMapper.selectByStatus(c, s);
	        if(user2!=null)
	        	if(!(user.getU_id().equals(user2.getU_id())))
	        		return c+"의 "+s+"이 이미 존재합니다.";
        }
        s = user.getU_phone();
        if (StringUtils.isBlank(s))
            return "휴대폰 번호를 입력하세요.";
        
        s = user.getU_email();
        if (StringUtils.isBlank(s))
            return "이메일을 입력하세요.";

        s = user.getU_address();
        if (StringUtils.isBlank(s))
            return "주소를 입력하세요.";

        return null;
    }
	
	public List<User> excelUpload(java.io.File destFile) throws Exception{
        ExcelReadOption excelReadOption = new ExcelReadOption();
        excelReadOption.setFilePath(destFile.getAbsolutePath());
        excelReadOption.setOutputColumns("A","B","C","D","E","F","G","H","I");
        excelReadOption.setStartRow(2);
        
        
        List<Map<String, String>> excelContent =ExcelRead.read(excelReadOption);
        List<User> users = new ArrayList<User>();
        for(Map<String, String> content: excelContent){
        	User user = new User();
        	user.setU_name(content.get("A"));
        	user.setU_cNumber((int)(Double.parseDouble(content.get("B"))));
        	user.setU_status(content.get("C"));
        	System.out.println(content.get("D"));
        	java.text.SimpleDateFormat transFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
        	java.util.Date parsed = transFormat.parse(content.get("D"));
            java.sql.Date sql = new java.sql.Date(parsed.getTime());
        	user.setU_birth(sql);
        	user.setU_phone(content.get("E"));
        	user.setU_email(content.get("F"));
        	user.setU_address(content.get("G"));
        	user.setU_jobPhone(content.get("H"));
        	user.setU_jobStatus(content.get("I"));
        	users.add(user);
        }
        
        return users;
	}
	
}
