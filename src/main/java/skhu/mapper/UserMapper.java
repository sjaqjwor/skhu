package skhu.mapper;

import skhu.model.User;

import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    User selectByLoginId(String u_loginId);
    void update(@Param("u_loginId")String id,@Param("u_count") boolean count,@Param("u_password") String u_password);
}

