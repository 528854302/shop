package com.a528854.shop.controller;

import com.a528854.shop.domain.Category;
import com.a528854.shop.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class PageController {
    @Autowired
    CategoryService categoryService;
    @RequestMapping("index2")
    public String index1(HttpServletRequest request){
        List<Category> category =categoryService.findCategory();
        request.getSession().setAttribute("category",category);
        return "index2";
    }
}
