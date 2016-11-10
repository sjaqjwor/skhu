package skhu.service;

import skhu.model.User;
import skhu.model.Admin;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
public class UserService {
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
	public boolean confirm_password(String p1,String p2){
		if(p1.equals(p2)){
			return true;
		}
		else{
			return false;
		}
	}
}
