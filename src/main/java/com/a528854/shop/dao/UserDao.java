package com.a528854.shop.dao;

import com.a528854.shop.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDao {


    @Autowired
    JdbcTemplate template;
    public List<User> findUser(String username, String pwd){
        String sql="select * from user where username=? and password=?";
        template.query(sql,new BeanPropertyRowMapper<User>(User.class),username,pwd);
        return template.query(sql,new BeanPropertyRowMapper<User>(User.class),username,pwd);
    }

    public void updateUser(User user) {


    }

    public int insertUser(User user) {
        String sql="insert into user(uid,username,password,name,email) values (?,?,?,?,?)";
        return template.update(sql,user.getUid(),user.getUsername(),user.getPassword(),user.getName(),user.getEmail());
    }
}
