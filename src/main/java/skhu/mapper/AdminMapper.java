package skhu.mapper;

import skhu.model.Admin;

public interface AdminMapper {
	Admin selectByLoginId(String a_loginId);
}
