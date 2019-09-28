package com.a528854.shop.dao;

import com.a528854.shop.constant.Constant;
import com.a528854.shop.domain.*;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

@Repository
public class OrderDao {
    @Autowired
    JdbcTemplate template;

    public void save(Order order) {
        String sql="insert into orders values(?,?,?,?,?,?,?,?)";
        template.update(sql,order.getOid(),order.getOrdertime(),order.getTotal(),order.getState()
        ,order.getAddress(),order.getName(),order.getTelephone(),order.getUser().getUid());
    }


    public void saveItem(OrderItem item) {
        String sql="insert into orderitem values(?,?,?,?,?)";
        template.update(sql,item.getItemid(),item.getCount(),item.getSubtotal(),item.getProduct().getPid()
        ,item.getOrder().getOid());

    }

    public Order findByUserId(User user) {
        String sql="SELECT * FROM orders WHERE uid=?";
        return template.query(sql,new BeanPropertyRowMapper<>(Order.class)
                ,user.getUid()).get(0);
    }

    public int getTotalRecord() {
        String sql="SELECT count(*) FROM orders";
        return template.queryForInt(sql);
    }

    public List<Order> findOrderBYPagers(PageBean<Order> pageBean, String uid) throws InvocationTargetException, IllegalAccessException {
        String sql="SELECT * FROM orders WHERE uid=? ORDER BY ordertime DESC LIMIT ?,?";
        List<Order> list = template.query(sql,new BeanPropertyRowMapper<Order>(Order.class),uid,pageBean.getStartIndex(),
                pageBean.getPageSize());
        for (Order order:list)
        {

            sql=" SELECT * FROM orderitem oi,product p WHERE oi.`pid`=p.`pid`\n" +
                    " AND oi.`oid`=?";
            List<Map<String,Object>> mapList = template.queryForList(sql,order.getOid());
            for (Map<String,Object> map: mapList)
            {
                OrderItem orderItem = new OrderItem();
                Product product = new Product();
                BeanUtils.populate(product,map);
                BeanUtils.populate(orderItem,map);
                orderItem.setProduct(product);
                order.getItems().add(orderItem);

            }
        }
        return list;
    }

    public void deleteOderByOid(String oid) {
        String sql1="DELETE FROM orderitem WHERE oid=?";
        template.update(sql1,oid);


        String sql2="DELETE FROM orders WHERE oid=?";
        template.update(sql2,oid);


    }

    public Order findOrderbyOid(String oid) throws InvocationTargetException, IllegalAccessException {
        String sql="SELECT * FROM orders WHERE oid=?";
        List<Order> list = template.query(sql,new BeanPropertyRowMapper<Order>(Order.class),oid);
        Order order=list.get(0);



        String sql1=" SELECT * FROM orderitem oi,product p WHERE oi.`pid`=p.`pid`\n" +
                " AND oi.`oid`=?";
         List<Map<String,Object>> mapList = template.queryForList(sql1,oid);
         for (Map<String,Object> map: mapList)
        {
            OrderItem orderItem = new OrderItem();
            Product product = new Product();
            BeanUtils.populate(product,map);
            BeanUtils.populate(orderItem,map);
            orderItem.setProduct(product);
            order.getItems().add(orderItem);
        }
        return order;


    }

    public void update(Order order) {
        String sql="UPDATE orders SET address=?,name=?,telephone=? WHERE oid=?";
        template.update(sql,order.getAddress(),order.getName(),order.getTelephone(),order.getOid());

    }

    public void updateState(String oid) {
        String sql="UPDATE orders SET state=? WHERE oid=?";
        template.update(sql, Constant.ORDER_YIFUKUAN,oid);
    }
}
