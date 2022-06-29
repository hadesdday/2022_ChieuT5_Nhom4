package com.example.goods_import_19130135.Controller;

import com.example.goods_import_19130135.DAO.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "nhapHangController", value = "/nhapHangController")
public class NhapHangController extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    HttpSession session = request.getSession();
    request.getRequestDispatcher("index.jsp").forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String brand = request.getParameter("brand");
    String prod = request.getParameter("prod");
    String typeProduct = request.getParameter("typeProduct");
    String unit = request.getParameter("unit");
    String importPrice = request.getParameter("importPrice");
    String quantity = request.getParameter("quantity");
    String totalPrice = request.getParameter("totalPrice");

    ProductDAO.getInstance().addProduct(name,brand,prod,typeProduct,unit,importPrice,quantity,totalPrice);
    request.setAttribute("message", "Lưu hàng hóa thành công !");
    request.getRequestDispatcher("index.jsp").forward(request, response);

  }
}
