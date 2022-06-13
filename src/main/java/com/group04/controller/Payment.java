package com.group04.controller;

import com.group04.beans.Customer;
import com.group04.beans.Order;
import com.group04.beans.OrderDetails;
import com.group04.beans.Product;
import com.group04.services.OrderServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Payment", value = "")
public class Payment extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        Customer de = new Customer("hieu", "adaw", "123123", "123123");
//        String c = OrderServices.getInstance().addCustomer(de);
//        System.out.println("add customer return id " + c);
//        Order o = new Order("123", c, "awd", "online banking", 123123, 1);
//
//        boolean a = OrderServices.getInstance().addOrder(o);
//        System.out.println("add order " + a);
//        Product s = OrderServices.getInstance().getProduct("sp1");
//        System.out.println("get product " + s.getId());
//
//        OrderDetails od = new OrderDetails(o.getOrderId(), s.getId(), 1, "L");
//
//        boolean b = OrderServices.getInstance().addOrderDetails(od);
//        System.out.println("add order details" + b);
//        Customer d = OrderServices.getInstance().getCustomer(c);
//        System.out.println("get customer by id" + d.getCustomerId());
//
//        Customer e = OrderServices.getInstance().getCustomerByPhoneNumber(de.getPhoneNum());
//        System.out.println("get customer by phone " + e.getCustomerId());


        List<Product> cart = new ArrayList<>();
        Product p1 = new Product("sp1", "Bạc Xỉu", "Đồ uống", 199999, "The Coffee House", 1);
        p1.setSize("L");

        cart.add(p1);
        cart.add(p1);
        cart.add(p1);

        int totalPrice = 0;
        int totalPriceWithoutFee = 0;

        for (Product p : cart) {
            totalPrice += p.getPrice();
            totalPriceWithoutFee += p.getPrice();
        }

        int shippingFee = 30000;
        totalPrice += shippingFee;
        int vat = (totalPrice * 10) / 100;
        totalPrice += vat;

        HttpSession session = request.getSession();
        session.setAttribute("cart", cart);

        request.setAttribute("totalPrice", totalPrice);
        request.setAttribute("shippingFee", shippingFee);
        request.setAttribute("vat", vat);
        request.setAttribute("totalPriceWithoutFee", totalPriceWithoutFee);
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
    }
}
