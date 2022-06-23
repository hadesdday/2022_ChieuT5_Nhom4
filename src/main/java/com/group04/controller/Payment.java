package com.group04.controller;

import com.group04.beans.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Payment", value = "")
public class Payment extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
