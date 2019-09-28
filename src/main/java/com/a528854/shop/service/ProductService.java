package com.a528854.shop.service;

import com.a528854.shop.dao.ProductDao;
import com.a528854.shop.domain.PageBean;
import com.a528854.shop.domain.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;
import java.util.Random;

@Service
public class ProductService {
    @Autowired
    ProductDao productDao;

    public List<Product> showProductByPage(PageBean pageBean,String cid) {
        return productDao.findProductByPage(pageBean,cid);
    }

    public int countProducts() {
        return productDao.findAll().size();
    }

    public List<Product> findInfo(String pid) {
        return productDao.findProductByPId(pid);
    }

    public List<Product> searchProduct(String pname) {
        return productDao.findProductByPdesc(pname);
    }

    public List<Product> findhot() {
        int productNum = countProducts();
        Random random=new Random();
        int number = random.nextInt(productNum-6);
        return productDao.findHot(number);
    }

    public List<Product> findLatest() {
        return productDao.findLatest();
    }

    public int addProduct(Product product) {
        return productDao.insertProduct(product);
    }

    public List<Product> findAllLatest() {
        return productDao.findAllLatest();
    }

    public Product findByPid(String pid) {
        return productDao.findProductByPId(pid).get(0);
    }

    public int countProductsByCid(String cid) {
        return productDao.countProductsByCid(cid).size();
    }
}
