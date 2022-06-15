package com.group04.beans;

import java.io.Serializable;

public class Order implements Serializable {
    private String orderId;
    private String customerId;
    private String voucher;
    private String paymentMethod;
    private int totalPrice;
    private int status;

    public Order() {
    }

    public Order(String orderId, String customerId, String voucher, String paymentMethod, int totalPrice, int status) {
        this.orderId = orderId;
        this.customerId = customerId;
        this.voucher = voucher;
        this.paymentMethod = paymentMethod;
        this.totalPrice = totalPrice;
        this.status = status;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getVoucher() {
        return voucher;
    }

    public void setVoucher(String voucher) {
        this.voucher = voucher;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
