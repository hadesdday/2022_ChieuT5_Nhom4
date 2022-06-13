package com.group04.services;

import com.group04.beans.Customer;
import com.group04.beans.Order;
import com.group04.beans.OrderDetails;
import com.group04.beans.Product;
import com.group04.dao.OrderDAO;

public class OrderServices {
    private static OrderServices instance;

    private OrderServices() {
    }

    public static OrderServices getInstance() {
        if (instance == null) {
            instance = new OrderServices();
        }
        return instance;
    }

    public Product getProduct(String id) {
        return OrderDAO.getInstance().getProduct(id);
    }

    public boolean addOrder(Order o) {
        return OrderDAO.getInstance().addOrder(o);
    }

    public boolean addOrderDetails(OrderDetails d) {
        return OrderDAO.getInstance().addOrderDetails(d);
    }

    public Customer getCustomer(String id) {
        return OrderDAO.getInstance().getCustomer(id);
    }

    public String addCustomer(Customer c) {
        return OrderDAO.getInstance().addCustomer(c);
    }

    public Customer getCustomerByPhoneNumber(String phoneNum) {
        return OrderDAO.getInstance().getCustomerByPhoneNumber(phoneNum);
    }
}
