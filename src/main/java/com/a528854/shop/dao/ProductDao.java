package com.a528854.shop.dao;

import com.a528854.shop.domain.PageBean;
import com.a528854.shop.domain.Product;
import com.sun.deploy.security.TrustDecider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductDao {
    @Autowired
    JdbcTemplate template;

    public List<Product> findProductByPage(PageBean pageBean,String cid) {
        String sql="SELECT * FROM product WHERE cid=? LIMIT ?,?";
        return template.query(sql,new BeanPropertyRowMapper<Product>(Product.class),
                cid,(pageBean.getPageNumber()-1)*12,pageBean.getPageSize());
    }

    public List<Product> findAll() {
        String sql="SELECT * FROM product";
        return template.query(sql,new BeanPropertyRowMapper<Product>(Product.class));
    }

    public List<Product> findProductByPId(String pid) {
        String sql="select * from product where pid=?";
        return template.query(sql,new BeanPropertyRowMapper<Product>(Product.class),pid);
    }

    public List<Product> findProductByPdesc(String pname) {
        String sql="SELECT * FROM product WHERE pdesc LIKE ?";
        return template.query(sql,new BeanPropertyRowMapper<Product>(Product.class),new String[]{"%"+pname+"%"});
    }

    public List<Product> findHot(int num) {
        String sql="SELECT * FROM product LIMIT ?,?";
        return template.query(sql,new BeanPropertyRowMapper<Product>(Product.class),
                num,9);
    }

    public List<Product> findLatest() {
        String sql="SELECT * FROM product ORDER BY pdate DESC LIMIT 0,9";
        return template.query(sql,new BeanPropertyRowMapper<Product>(Product.class));
    }

    public int insertProduct(Product product) {
        String sql="INSERT INTO product(pid,pname,market_price,shop_price,pimage,pdate,cid,pdesc) VALUES (?,?,?,?,?,?,?,?)";
        return template.update(sql,product.getPid(),product.getPname(),product.getMarket_price(),product.getShop_price(),product.getPimage(),product.getPdate(),product.getCategory().getCid(),product.getPdesc());
    }

    public List<Product> findAllLatest() {
        String sql="SELECT * FROM product ORDER BY pdate DESC ";
        return template.query(sql,new BeanPropertyRowMapper<Product>(Product.class));
    }

    public List<Product> countProductsByCid(String cid) {
        String sql="SELECT * FROM product where cid=?";
        return template.query(sql,new BeanPropertyRowMapper<Product>(Product.class),cid);
    }
}
