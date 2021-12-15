package cn.smbms.service.impl.user;

import cn.smbms.dao.UserDao;
import cn.smbms.pojo.User;
import cn.smbms.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


/**
 * @author： 吕二宁
 * @date： 2021-12-07 22:05
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    @Qualifier("userDao")
    private UserDao userDao;

    @Override
    public User login(String userName, String password) {
        User user = userDao.login(userName, password);
        return user;
    }

    @Override
    public User userAJAX(String userName) {
        User user = userDao.userAJAX(userName);
        return user;
    }

    @Override
    public User insertUser(String userName, String password, String email) {
        User user = userDao.insertUser(userName, password, email);
        return user;
    }
}
