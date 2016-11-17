package skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import skhu.model.User;

public interface MemberMapper {
	List<User> selectByGisuMng(int selgisu);
	List<User> selectByGisu(int selgisu);
	List<User> selectByName(String searchtxt);
	List<User> selectByPhone(String searchtxt);
	List<User> selectByStatus(String searchtxt);
}
