package com.group04.beans;

import java.io.Serializable;

public class OrderDetails implements Serializable {
    private String orderId;
    private String productId;
    private int quantity;
    private String size;

    public OrderDetails() {
    }

    public OrderDetails(String orderId, String productId, int quantity, String size) {
        this.orderId = orderId;
        this.productId = productId;
        this.quantity = quantity;
        this.size = size;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }
}
