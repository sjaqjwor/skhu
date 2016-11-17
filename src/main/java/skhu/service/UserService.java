package skhu.service;

import skhu.model.User;
import skhu.model.Admin;

import java.util.Calendar;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	//User Service
	public User getCurrentUser() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication instanceof MyAuthenticationProvider.MyAuthenticaion)
			return ((MyAuthenticationProvider.MyAuthenticaion) authentication).getUser();
		return null;
	}

	public static void setCurrentUser(User user) {
		((MyAuthenticationProvider.MyAuthenticaion) SecurityContextHolder.getContext().getAuthentication())
				.setUser(user);
	}
	
	public boolean confirm_password(String p1,String p2){
		if(p1.equals(p2)){
			return true;
		}
		else{
			return false;
		}
	}
	
	//Admin Service
	public static Admin getCurrentAdmin() {
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication instanceof MyAuthenticationProvider.MyAuthenticaion_admin)
			return ((MyAuthenticationProvider.MyAuthenticaion_admin) authentication).getAdmin();
		return null;
	}

	public static void setCurrentAdmin(Admin admin) {
		((MyAuthenticationProvider.MyAuthenticaion_admin) SecurityContextHolder.getContext().getAuthentication())
				.setAdmin(admin);
	}
	
	// member Service
	public int getGisu() {
		Calendar c = Calendar.getInstance();
		String ntime = String.valueOf(c.get(Calendar.YEAR));
		int a = Integer.parseInt(ntime);
		int b = 2011; // 2000년도가 1기라고 가정하자
		int gisu = a - b + 1;
		return gisu;
	}

	public String modPhone(String searchtxt) { // -를 빼먹고 검색하는경우 -를 삽입하는
												// modPhone메소드
		if (searchtxt.length() >= 3) { // 우선3개 이상입력을 받은경우
			StringBuilder sb = new StringBuilder(searchtxt);
			if (sb.length() == 3) {
				return sb.toString();
			} else if (!searchtxt.substring(3, 4).equals("-")) {
				sb.insert(3, "-"); // -를 삽입
				if (sb.substring(0, 3).equals("010")) {
					if (sb.length() > 7)
						sb.insert(8, "-");
				} else { // 010을 이 아니면(019-111-2222처럼 폰번호가 10자리)
					if (sb.length() > 6)
						sb.insert(7, "-");
				}
				return sb.toString();
			} else {
				return sb.toString();
			}
		} else { // 2자리이하 입력을 받은경우는 그냥 모든사용자를 보여준다
			return "01";
		}
	}
}
