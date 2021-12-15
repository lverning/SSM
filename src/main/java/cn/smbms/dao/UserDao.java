package cn.smbms.dao;

import cn.smbms.pojo.Book;
import cn.smbms.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author： 吕二宁
 * @date： 2021-12-07 22:05
 */
@Repository("userDao")
public interface UserDao {

    //AJAX
    User userAJAX(@Param("userName") String userName);

    //注册
    User insertUser(@Param("userName") String userName,
                    @Param("password") String password,
                    @Param("email") String email);

    //登录
    User login(@Param("userName") String userName, @Param("password") String password);

}
