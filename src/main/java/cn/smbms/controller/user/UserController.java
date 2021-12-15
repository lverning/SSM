package cn.smbms.controller.user;


import cn.smbms.pojo.User;
import cn.smbms.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("userService")
    private UserService userService;

    //默认index页面跳转
    @RequestMapping("index.html")
    public String login() {
        return "login";
    }

    //用户名校验
    @RequestMapping(value = "userAJAX", produces = {"text/html;charset=UTF-8;", "application/json;"})
    @ResponseBody
    public String ajax(String userName) {
        User user = userService.userAJAX(userName);
        String msg = "";
        if (user != null) {
            msg = "OK";
        } else {
            msg = "用户名不存在！";
        }
        return msg;
    }

    //登录
    @RequestMapping("userLogin")
    public String login(String userName , String password){
        User user = userService.login(userName, password);
        if (user != null) {
            return "redirect:/book/getBookList";
        }else {
            return "redirect:/user/index.html";
        }
    }

    //退出系统
    @RequestMapping("break")
    public String breaks() {
        return "login";
    }
}




