package com.a528854.shop.service;

import com.a528854.shop.dao.UserDao;
import com.a528854.shop.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    UserDao dao;
    public List<User> login(String username, String password){
        return    dao.findUser(username,password);
    }

    public int register(User user) {
        return dao.insertUser(user);
    }
}
