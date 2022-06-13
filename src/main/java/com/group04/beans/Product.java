package com.group04.beans;

public class Product {
    private String id;
    private String name;
    private String category;
    private double price;
    private String brand;
    private int quantity;
    private String size;

    public Product() {
    }

    public Product(String id, String name, String category, double price, String brand, int quantity) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.price = price;
        this.brand = brand;
        this.quantity = quantity;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
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
