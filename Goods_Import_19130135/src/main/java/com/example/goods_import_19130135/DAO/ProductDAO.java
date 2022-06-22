package com.example.goods_import_19130135.DAO;

import com.example.goods_import_19130135.DB.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProductDAO {
  private static ProductDAO instance;

  Connection conn = null;
  PreparedStatement ps = null;
  ResultSet rs = null;

  private ProductDAO() {
  }

  public static ProductDAO getInstance() {
    if (instance == null) {
      instance = new ProductDAO();
    }
    return instance;
  }

  public void addProduct(String name, String brand, String prod, String typeProduct, String unit, String importPrice, String quantity, String totalPrice){
    String query = "insert into nhap_hang (`name`,`brand`,`prod`,`type_product`,`unit`,`import_price`,`quantity`,`total_price`) values(?,?,?,?,?,?,?,?)";
    try{
      conn = DBConnect.connect().getConnection();
      ps = conn.prepareStatement(query);
      ps.setString(1,name);
      ps.setString(2,brand);
      ps.setString(3,prod);
      ps.setString(4,typeProduct);
      ps.setString(5,unit);
      ps.setString(6,importPrice);
      ps.setString(7,quantity);
      ps.setString(8,totalPrice);
      ps.executeUpdate();
    }catch (Exception e){
      e.printStackTrace();
    }
  }

  public static void main(String[] args) {
    ProductDAO p1 = new ProductDAO();
    p1.addProduct("a","a", "a","as","asd","123","123","123");
  }

}
