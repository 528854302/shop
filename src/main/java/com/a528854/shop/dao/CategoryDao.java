package com.a528854.shop.dao;

import com.a528854.shop.domain.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryDao {
    @Autowired
    JdbcTemplate template;

    public List<Category> findCategory() {
        String sql = "select * from category";
        return template.query(sql,new BeanPropertyRowMapper<Category>(Category.class));
    }
}
