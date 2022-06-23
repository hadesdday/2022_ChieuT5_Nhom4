package com.group04.controller;

import com.group04.beans.Customer;
import com.group04.beans.Order;
import com.group04.beans.OrderDetails;
import com.group04.beans.Product;
import com.group04.dao.OrderDAO;
import com.group04.helper.InvalidCheckHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Order", value = "/CreateOrder")
public class OrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String orderId = request.getParameter("orderId");
        String voucher = request.getParameter("voucher");
        int totalPrice = Integer.parseInt(request.getParameter("totalPrice"));
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phoneNum = request.getParameter("phoneNum");
        String paymentMethod = request.getParameter("paymentMethod");
        int status = Integer.parseInt(request.getParameter("status"));

        Customer c = OrderDAO.getInstance().getCustomerByPhoneNumber(phoneNum);
        if (c == null) {
            Customer newCustomer = new Customer(fullname, address, phoneNum, email);
            String newCustomerId = OrderDAO.getInstance().addCustomer(newCustomer);
            c = newCustomer;
            c.setCustomerId(newCustomerId);
        }

        String[] in = new String[]{orderId, c.getCustomerId(), fullname, address, phoneNum, paymentMethod};
        String[] newArr = setNullToEmptyString(in);

        boolean isError = false;
        if (InvalidCheckHelper.isEmpty(newArr)) isError = true;

        if (!isError) {
            Order order = new Order(orderId, c.getCustomerId(), voucher, paymentMethod, totalPrice, status);

            boolean isCreated = OrderDAO.getInstance().addOrder(order);

            HttpSession session = request.getSession();
            List<Product> cart = (List<Product>) session.getAttribute("cart");

            OrderDetails orderDetails = new OrderDetails();

            for (Product p : cart) {
                orderDetails = new OrderDetails(orderId, p.getId(), p.getQuantity(), p.getSize());
                OrderDAO.getInstance().addOrderDetails(orderDetails);
            }

            if (isCreated) {
                response.sendRedirect("success.jsp");
            }

        } else {
            response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
        }
    }

    private String[] setNullToEmptyString(String[] inp) {
        String[] re = new String[inp.length];
        for (int i = 0; i < inp.length; i++) {
            re[i] = inp[i] == null ? "" : inp[i];
        }
        return re;
    }
}
