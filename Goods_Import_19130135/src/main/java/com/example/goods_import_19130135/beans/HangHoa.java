package com.example.goods_import_19130135.beans;

public class HangHoa {
  private String name;
  private String brand;
  private String prod;
  private String typeProduct;
  private String unit;
  private double importPrice;
  private int quantity;
  private double totalPrice;

  public HangHoa(String name, String brand, String prod, String typeProduct, String unit, double importPrice, int quantity, double totalPrice) {
    this.name = name;
    this.brand = brand;
    this.prod = prod;
    this.typeProduct = typeProduct;
    this.unit = unit;
    this.importPrice = importPrice;
    this.quantity = quantity;
    this.totalPrice = totalPrice;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getBrand() {
    return brand;
  }

  public void setBrand(String brand) {
    this.brand = brand;
  }

  public String getProd() {
    return prod;
  }

  public void setProd(String prod) {
    this.prod = prod;
  }

  public String getTypeProduct() {
    return typeProduct;
  }

  public void setTypeProduct(String typeProduct) {
    this.typeProduct = typeProduct;
  }

  public String getUnit() {
    return unit;
  }

  public void setUnit(String unit) {
    this.unit = unit;
  }

  public double getImportPrice() {
    return importPrice;
  }

  public void setImportPrice(double importPrice) {
    this.importPrice = importPrice;
  }

  public int getQuantity() {
    return quantity;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }

  public double getTotalPrice() {
    return totalPrice;
  }

  public void setTotalPrice(double totalPrice) {
    this.totalPrice = totalPrice;
  }
}
