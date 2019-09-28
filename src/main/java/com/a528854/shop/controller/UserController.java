package com.a528854.shop.controller;

import com.a528854.shop.domain.User;
import com.a528854.shop.service.UserService;
import com.a528854.shop.utils.UUIDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("login")
    public String login(String username, String password,Model model, HttpServletRequest request){
        List<User> users = userService.login(username,password);
        if (users.size()>0){
            User  user=users.get(0);
            request.getSession().setAttribute("user",user);
            return "jsp/index";
        }
        else {
            model.addAttribute("msg","登陆失败请重试");
            return "jsp/login";
        }
    }

    @RequestMapping("logout")
    public String logout(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return "jsp/index";
    }

    @RequestMapping("register")
    public String register(String username,String password,String name,String email,HttpServletRequest request){
        User user=new User();
        user.setUid(UUIDUtils.getId());
        user.setName(name);
        user.setUsername(username);
        user.setEmail(email);
        int num = userService.register(user);

        if (num>0) {
            request.setAttribute("msg","注册成功");
            request.getSession().setAttribute("user",user);
        }else {
            request.setAttribute("msg","注册失败");
        }
        return "jsp/msg";
    }
}
