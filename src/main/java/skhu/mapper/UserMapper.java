package skhu.mapper;

import skhu.model.User;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    User selectByLoginId(String u_loginId);
    List<User> selectAll();
    User selectForEmail(@Param("u_loginId")String id,@Param("u_email")String email);
    void update(@Param("u_loginId")String id,@Param("u_count") boolean count,@Param("u_password") String u_password);
    void myUpdate(User user);
    void userUpdateByAdmin(User user);
}

