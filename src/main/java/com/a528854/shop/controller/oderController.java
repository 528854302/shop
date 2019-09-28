package com.a528854.shop.controller;

import com.a528854.shop.constant.Constant;
import com.a528854.shop.domain.*;
import com.a528854.shop.service.OrderService;
import com.a528854.shop.utils.EmptyUtils;
import com.a528854.shop.utils.UUIDUtils;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;


@Controller
public class oderController {
    @Autowired
    OrderService orderService;

    @RequestMapping("order")
    public String order(HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
            request.setAttribute("msg", "提交订单失败，请先登录！亲");
            return "jsp/msg";
        }
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        Order order = new Order();
        order.setOid(UUIDUtils.getId());
        order.setState(Constant.ORDER_WEIFUKUAN);
        order.setUser(user);
        order.setTotal(cart.getTotal());
        order.setOrdertime(new Date());

        for (CartItem cartItem : cart.getItems()) {
            OrderItem orderItem = new OrderItem();
            orderItem.setItemid(UUIDUtils.getId());
            orderItem.setCount(cartItem.getCount());
            orderItem.setProduct(cartItem.getProduct());
            orderItem.setSubtotal(cartItem.getSubtotal());
            orderItem.setOrder(order);
            order.getItems().add(orderItem);
        }
        orderService.save(order);
        request.setAttribute("bean", order);
        session.removeAttribute("cart");


        return "jsp/order_info";
    }

    @RequestMapping("myOrder")
    public String MyOrder(String pageNumber, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            request.setAttribute("msg", "亲，请先登录！");
            return "jsp/msg";
        }
        PageBean<Order> bean = null;
        try {
            bean = orderService.finMyOrderByPages(Integer.parseInt(pageNumber),
                    3, user);
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("pb", bean);


        return "jsp/order_list";
    }

   @RequestMapping("deleteOrder")
    public String deleteOrder(String oid,String pageNumber,HttpServletRequest request){
        orderService.deleteOderByOid(oid);
       User user = (User) request.getSession().getAttribute("user");
       PageBean<Order> bean = null;
       try {
           bean = orderService.finMyOrderByPages(Integer.parseInt(pageNumber),
                   3, user);
       } catch (Exception e) {
           e.printStackTrace();
       }

       request.setAttribute("pb", bean);
       return "jsp/order_list";
   }

   @RequestMapping("orderInfo")
    public String orderInfo(String oid,HttpServletRequest request){
       Order order = null;
       try {
           order = orderService.findOrderById(oid);
       } catch (InvocationTargetException e) {
           e.printStackTrace();
       } catch (IllegalAccessException e) {
           e.printStackTrace();
       }
       request.setAttribute("bean", order);
        return "jsp/order_info";
   }


   @RequestMapping("pay")
    public ModelAndView pay(String oid,String address,String name,String telephone,HttpServletRequest request) throws InvocationTargetException, IllegalAccessException {
        if (EmptyUtils.isNull(oid) || EmptyUtils.isNull(address) || EmptyUtils.isNull(name)||EmptyUtils.isNull(telephone)){
            request.setAttribute("msg","请输入完整信息");
        }
        Order order=new Order();
        order.setOid(oid);
        order.setName(name);
        order.setTelephone(telephone);
        orderService.update(order);
        String url="http://localhost:8080/store/paying?oid="+oid+"&callback=http:localhost:8080/store/payResult"+"&money="+orderService.findOrderById(oid).getTotal();


        return new ModelAndView(new RedirectView(url));
   }

   @RequestMapping("paying")
    public String paying(String password,String oid,String callback,String money,HttpServletRequest request) throws IOException {

        if (!EmptyUtils.isNull(password)){
            if (password.equals("123456")){
                Properties pro = new Properties();
                URL url = getClass().getClassLoader().getResource("paycache.properties");
                FileInputStream in = new FileInputStream(url.getPath());
                pro.load(in);
                String oid1 = pro.getProperty("oid");
                String callback1=pro.getProperty("callback");

                return "forward:/payResult?oid="+oid1;
            }
        }
        if (!EmptyUtils.isNull(oid) && !EmptyUtils.isNull(money)){
            request.setAttribute("oid",oid);
            request.setAttribute("money",money);
            Properties pro = new Properties();
            URL url = getClass().getClassLoader().getResource("paycache.properties");
            FileOutputStream outputStream=new FileOutputStream(url.getPath());
            pro.setProperty("oid",oid);
            pro.setProperty("callback",callback);
            pro.setProperty("money",money);
            pro.store(outputStream,"new");
            return "jsp/wx_pay";
        }
        return "500";
   }


   @RequestMapping("payResult")
    public String payResult(String oid,HttpServletRequest request) throws InvocationTargetException, IllegalAccessException {

       orderService.updateState(oid);
       request.setAttribute("msg","您的订单："+oid+" 支付成功!请等待发货");
       return "jsp/msg";
   }



}
