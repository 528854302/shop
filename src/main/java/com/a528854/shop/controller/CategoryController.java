package com.a528854.shop.controller;

import com.a528854.shop.domain.Category;
import com.a528854.shop.service.CategoryService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@Controller
public class CategoryController {
    @Autowired
    CategoryService categoryService;


    @RequestMapping("category")
    public String category(HttpServletResponse response) throws IOException {
        ObjectMapper mapper=new ObjectMapper();
        List<Category> category =categoryService.findCategory();
        mapper.writeValue(response.getWriter(),category);

        return null;
    }
}
