package com.a528854.shop.service;

import com.a528854.shop.dao.CategoryDao;
import com.a528854.shop.domain.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class CategoryService {
    @Autowired
    CategoryDao categoryDao;

    public List<Category> findCategory() {
        return categoryDao.findCategory();
    }
}
