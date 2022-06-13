package com.group04.dao;

import com.group04.beans.Customer;
import com.group04.beans.Order;
import com.group04.beans.OrderDetails;
import com.group04.beans.Product;
import com.group04.db.DbConnector;

import java.util.stream.Collectors;

public class OrderDAO {
    private static OrderDAO instance;

    private OrderDAO() {
    }

    public static OrderDAO getInstance() {
        if (instance == null) {
            instance = new OrderDAO();
        }
        return instance;
    }

    public Product getProduct(String id) {
        try {
            Product p = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from product where id = ?")
                            .bind(0, id)
                            .mapToBean(Product.class).stream().collect(Collectors.toList())
            ).get(0);
            return p;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public boolean addOrder(Order o) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("insert into `order`(id,customerId,voucher,paymentMethod,totalPrice,`status`) values(?,?,?,?,?,?)")
                            .bind(0, o.getOrderId())
                            .bind(1, o.getCustomerId())
                            .bind(2, o.getVoucher())
                            .bind(3, o.getPaymentMethod())
                            .bind(4, o.getTotalPrice())
                            .bind(5, o.getStatus())
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }

    public boolean addOrderDetails(OrderDetails d) {
        try {
            Product p = getProduct(d.getProductId());
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("insert into order_details(orderId, productId, quantity,size) values(?,?,?,?)")
                            .bind(0, d.getOrderId())
                            .bind(1, d.getProductId())
                            .bind(2, d.getQuantity())
                            .bind(3, d.getSize())
                            .execute()
            );
            int affected = DbConnector.get().withHandle(h ->
                    h.createUpdate("update product set quantity = ? where id = ?")
                            .bind(0, p.getQuantity() - d.getQuantity())
                            .bind(1, d.getProductId())
                            .execute()
            );
            return rowAffected == 1 && affected == 1;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }

    public String addCustomer(Customer c) {
        try {
            String insertedCustomerId = DbConnector.get().withHandle(h ->
                    h.createUpdate("insert into customer(customerId, name, address, phoneNum, email) values(?,?,?,?,?)")
                            .bind(0, c.getCustomerId())
                            .bind(1, c.getName())
                            .bind(2, c.getAddress())
                            .bind(3, c.getPhoneNum())
                            .bind(4, c.getEmail())
                            .executeAndReturnGeneratedKeys("customerId").mapTo(String.class).one());
            return insertedCustomerId;
        } catch (Exception e) {
            System.out.println(e);
            return "";
        }
    }

    public Customer getCustomer(String id) {
        try {
            Customer c = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from customer where customerId = ?")
                            .bind(0, id)
                            .mapToBean(Customer.class).stream().collect(Collectors.toList())
            ).get(0);
            return c;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public Customer getCustomerByPhoneNumber(String phoneNum) {
        try {
            Customer c = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from customer where phoneNum = ?")
                            .bind(0, phoneNum)
                            .mapToBean(Customer.class).stream().collect(Collectors.toList())
            ).get(0);
            return c;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }
}
