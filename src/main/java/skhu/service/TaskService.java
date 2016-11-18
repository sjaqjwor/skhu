package skhu.service;

import skhu.model.User;
import skhu.mapper.UserMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TaskService {
    @Autowired
    UserMapper userMapper;

	public String validateBeforeUpdate(User user) {
        String s = user.getU_loginId();
        
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
	
}
