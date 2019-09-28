package com.a528854.shop.service;

import com.a528854.shop.dao.OrderDao;
import com.a528854.shop.domain.Order;
import com.a528854.shop.domain.OrderItem;
import com.a528854.shop.domain.PageBean;
import com.a528854.shop.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import org.springframework.jdbc.datasource.DataSourceUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

@Service
public class OrderService {
    @Autowired
    OrderDao orderDao;

    @Autowired
    TransactionTemplate transactionTemplate ;

        //    TransactionTemplate封装了事务管理的功能，包括异常时的事务回滚，以及操作成功后的事务提交。
//    和JdbcTemplate一样，它使得我们无需在琐碎的try/catch/finally代码中徘徊。
//    在doInTransaction中进行的操作，如果抛出未捕获异常将被自动回滚，如果成功执行，则将被自动提交。

    public void save(final Order order) {
        transactionTemplate.execute(new TransactionCallback() {
            @Override
            public Object doInTransaction(TransactionStatus transactionStatus) {
                //向orders插入1条
                orderDao.save(order);
                //向orderitems插入n条
                for (OrderItem item : order.getItems()){
                    orderDao.saveItem(item);
                }

                return null;
            }
        });

    }



    public PageBean<Order> finMyOrderByPages(int pageNumber, int pageSize, User user) throws InvocationTargetException, IllegalAccessException {
        PageBean<Order> pageBean=new PageBean<>(pageNumber,pageSize);
        pageBean.setTotalRecord(orderDao.getTotalRecord());
        List<Order> orders = orderDao.findOrderBYPagers(pageBean,user.getUid());
        pageBean.setData(orders);
        return pageBean;
    }

    public void deleteOderByOid(String oid) {
        orderDao.deleteOderByOid(oid);
    }

    public Order findOrderById(String oid) throws InvocationTargetException, IllegalAccessException {
        return orderDao.findOrderbyOid(oid);
    }

    public void update(Order order) throws InvocationTargetException, IllegalAccessException {
        orderDao.update(order);

    }

    public void updateState(String oid) {
        orderDao.updateState(oid);
    }
}
