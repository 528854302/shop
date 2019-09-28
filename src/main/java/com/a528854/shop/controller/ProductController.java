package com.a528854.shop.controller;

import com.a528854.shop.domain.*;
import com.a528854.shop.service.ProductService;
import com.a528854.shop.utils.EmptyUtils;
import com.a528854.shop.utils.UUIDUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.*;


@Controller
public class ProductController {
//   HashSet<Product> viewedProducts=new HashSet<Product>();
    List<Product> viewedProducts=new LinkedList<Product>();
    @Autowired
    ProductService productService;

    @RequestMapping("cart")
    public String addCart(String pid,String count,HttpServletRequest request){
        Product product=productService.findByPid(pid);
        System.out.println(product);
        CartItem item=new CartItem(product,Integer.parseInt(count));
        HttpSession session = request.getSession();
        Cart cart= (Cart) session.getAttribute("cart");
        if (cart==null){
            cart=new Cart();
        }
        cart.add(item);
        session.setAttribute("cart",cart);
        return "jsp/cart";
    }



    @RequestMapping("showAllLatest")
    public String showAllLatest(HttpServletRequest request){
        Cart cart=new Cart();
        List<Product> latestProducts = productService.findAllLatest();
        PageBean pageBean=new PageBean(1,12);
        pageBean.setTotalRecord(productService.countProducts());
        pageBean.setData(latestProducts);
        request.setAttribute("pb",pageBean);

        return "jsp/product_list";
    }
    @RequestMapping("removeFromCart")
    public String removeFromCart(String pid,HttpServletRequest request){
        HttpSession session = request.getSession();
        Cart cart= (Cart) session.getAttribute("cart");
        cart.remove(pid);
        session.setAttribute("cart",cart);
        return "jsp/cart";
    }

    @RequestMapping("clearCart")
    public String clearCart(HttpServletRequest request){
        HttpSession session = request.getSession();
        Cart cart= (Cart) session.getAttribute("cart");
        cart.clear();
        session.setAttribute("cart",cart);
        return "jsp/cart";
    }


    @RequestMapping("loadProduct")
    public String loadProduct(String pname,
                              String marketPrice,
                              String shopPrice, String desc,
                              @RequestParam("img") MultipartFile img, String cid,
                              HttpServletRequest request) throws IOException {
        if (EmptyUtils.isNull(pname) || EmptyUtils.isNull(marketPrice)||EmptyUtils.isNull(shopPrice)
        || EmptyUtils.isNull(desc)||EmptyUtils.isNull(img)){
            return "500";
        }
        String realPath=request.getSession().getServletContext().getRealPath("/static/products/");
        System.out.println(realPath);
        String originalImgname=img.getOriginalFilename();
        String imgName=pname+ UUIDUtils.getId() +originalImgname.substring(originalImgname.lastIndexOf("."));
        File uploadImg = new File(realPath+imgName );
        img.transferTo(uploadImg);

        //上传数据库
        Product product=new Product();
        product.setPid(UUIDUtils.getId());
        Category pcategory=new Category();
        pcategory.setCid(cid);
        product.setCategory(pcategory);
        product.setPname(pname);
        product.setPimage("products/"+imgName);
        product.setMarket_price(Double.parseDouble(marketPrice));
        product.setShop_price(Double.parseDouble(shopPrice));
        product.setPdesc(desc);
        product.setPdate(new Date());
        if (productService.addProduct(product)>0){
            request.setAttribute("msg","添加商品成功");
            return "jsp/seller";
        }else {
            request.setAttribute("msg","添加商品操作失败，请重试");
            return "jsp/seller";
        }
    }



    @RequestMapping("index")
    public String index(HttpServletRequest request){
        List<Product> hotProducts = productService.findhot();
        List<Product> latestProducts = productService.findLatest();
        request.setAttribute("hotProducts",hotProducts);
        request.setAttribute("latestProducts",latestProducts);
        return "jsp/index";
    }




    @RequestMapping("search")
    public String searchProduct(String pname,String pageNum, HttpServletRequest request){
        System.out.println(pname);
        List<Product> products = productService.searchProduct(pname);
        if (pageNum==null||pageNum.equals("")){
            pageNum="1";
        }
        PageBean pageBean=new PageBean(Integer.parseInt(pageNum),12);
//        pageBean.getTotalPage();
//        pageBean.getPageSize();
        pageBean.setData(products);
        request.setAttribute("pb",pageBean);
        return "jsp/product_list";
    }

    @RequestMapping("product")
    public String showProduct(String cid, String pageNum, HttpServletRequest request){
        if (pageNum==null||pageNum.equals("")){
            pageNum="1";
        }
        PageBean pageBean=new PageBean(Integer.parseInt(pageNum),12);
        pageBean.setTotalRecord(productService.countProductsByCid(cid));
        List<Product> products = productService.showProductByPage(pageBean,cid);
        System.out.println(products);
        pageBean.setData(products);
        request.setAttribute("pb",pageBean);

        return "jsp/product_list";
    }

    @RequestMapping("findInfo")
    public String findProducetInfobyPid(String pid, HttpServletRequest request){

        List<Product> products=productService.findInfo(pid);
        Product product=null;
        product = products.get(0);
        request.setAttribute("bean",product);

        boolean isContain=false;
        for (Product p:viewedProducts){
            if (p.getPid().equals(product.getPid())){
                isContain=true;
            }
        }
        if (!isContain){
            viewedProducts.add(product);
        }
        isContain=false;
        request.getSession().setAttribute("viewedProducts",viewedProducts);
        return "jsp/product_info";
    }

    @RequestMapping("clearViewed")
    public String clearViewed(String cid , HttpServletRequest request, HttpServletResponse response) throws IOException {
        viewedProducts.clear();
        return null;
    }
}
