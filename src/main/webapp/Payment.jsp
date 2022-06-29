<%@ page import="java.util.Date" %>
<%@ page import="com.group04.helper.GenerateRandomString" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="cart" scope="request" type="java.util.List"/>
<jsp:useBean id="totalPrice" scope="request" type="java.lang.Integer"/>
<jsp:useBean id="totalPriceWithoutFee" scope="request" type="java.lang.Integer"/>
<jsp:useBean id="shippingFee" scope="request" type="java.lang.Integer"/>
<jsp:useBean id="vat" scope="request" type="java.lang.Integer"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <title>Thông tin hóa đơn</title>
</head>

<body>
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <div class="position-absolute top-50 start-50 translate-middle">
            <a class="navbar-brand fw-bold" href="#">GROUP 04</a>
        </div>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <span class="nav-link active">
                        <i class="fa-solid fa-magnifying-glass" id="toggleSearch"></i>
                    </span>
                </li>
                <form class="d-none" role="search" name="search-bar">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </ul>
            <div class="d-flex">
                <div class="cart"><i class="p-2 fa-solid fa-cart-shopping"></i></div>
                <div class="wishlist"><i class="p-2 fa-solid fa-heart"></i></div>
                <div class="my__profile"><i class="p-2 fa-solid fa-user"></i></div>
            </div>
        </div>
    </div>
</nav>
<nav class="navbar navbar-expand-lg mt-4">
    <div class="container-fluid">
        <div class="position-absolute top-50 start-50 translate-middle main__nav">
            <a class="text-decoration-none text-dark" href="#">trang chủ</a>
            <a class="text-decoration-none text-dark" href="#">về chúng tôi</a>
            <a class="text-decoration-none text-dark" href="#">menu</a>
            <a class="text-decoration-none text-dark" href="#">danh mục sản phẩm</a>
            <a class="text-decoration-none text-dark" href="#">đánh giá</a>
            <a class="text-decoration-none text-dark" href="#">liên hệ</a>
            <a class="text-decoration-none text-dark" href="#">blog</a>
        </div>
    </div>
</nav>

<div class="container-fluid bg-light customer__information pb-5">
    <div class="payment__title w-50 pt-5">
        <div class="d-flex justify-content-center">
            <h4 class="fw-bold">Thông tin nhận hàng</h4>
        </div>
        <div class="d-flex justify-content-center continue__shopping">
            <p class="fw-bold cont__shopping-title">
                <i class="fa-solid fa-arrow-left"></i>
                <a href="${pageContext.request.contextPath}">
                    Tiếp tục mua sắm
                </a>
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col input-form">
            <div class="row mb-3 user-input" style="margin-left:35%;">
                <input type="text" class="form-control customer__input" placeholder="Họ và Tên*" name="fullname">
            </div>
            <div class="row mb-3 user-input" style="margin-left:35%;">
                <input type="email" class="form-control customer__input" placeholder="Email*"
                       name="email">
            </div>
            <div class="row mb-3 user-input" style="margin-left:35%;">
                <input type="text" class="form-control customer__input" placeholder="Địa chỉ*"
                       name="address">
            </div>
            <div class="row mb-3 user-input" style="margin-left:35%;">
                <input type="text" class="form-control customer__input" placeholder="Số điện thoại*"
                       name="phoneNum">
            </div>
            <div class="col-12 d-flex w-100 input-text d-flex justify-content-evenly required__label">
                <p class="required">*Bắt buộc</p>
            </div>
        </div>
        <div class="col-4 payment__method">
            <h2 class="fw-bold">Phương thức thanh toán</h2>
            <div class="row payment__item">
                <div class="col-2">
                    <img src="images/bank.png" width="50" height="50">
                    <input type="hidden" name="pMethod" value="online banking">
                </div>
                <div class="col-8">
                    <label for="onlineBanking" class="fw-bold">
                        Online Banking
                    </label>
                </div>
                <div class="col-2">
                    <input type="radio" name="paymentMethod" id="onlineBanking" value="online banking" checked>
                </div>
            </div>
            <div class="row payment__item pt-p13">
                <div class="col-2">
                    <img src="images/cod.png" width="50" height="50">
                </div>
                <div class="col-8">
                    <label for="cod" class="fw-bold">
                        Thanh toán khi nhận hàng
                    </label>
                </div>
                <div class="col-2">
                    <input type="radio" name="paymentMethod" id="cod" value="cod">
                </div>
            </div>
            <div class="row payment__item pt-p13">
                <form action="${pageContext.request.contextPath}/vnpay" id="frmCreateOrder" method="post">
                    <select name="ordertype" id="ordertype" class="form-control" hidden>
                        <option value="billpayment">Thanh toán hóa đơn</option>
                    </select>
                    <input class="form-control" data-val="true"
                           data-val-number="The field Amount must be a number."
                           data-val-required="The Amount field is required." id="amount" max="100000000" min="1"
                           name="amount" type="number" value="${totalPrice}" hidden/>
                    <textarea class="form-control" cols="20" id="vnp_OrderInfo" name="vnp_OrderInfo" rows="2" hidden>Thanh toan don hang <%=new Date()%></textarea>
                    <select name="bankcode" id="bankcode" class="form-control" hidden>
                        <option value="">Không chọn</option>
                    </select>
                    <select name="language" id="language" class="form-control" hidden>
                        <option value="vn">Tiếng Việt</option>
                    </select>
                    <span class="text-danger" style="font-size:12px" id="notify__message">Vui lòng nhập đầy đủ thông tin trước khi thanh toán</span>
                    <button type="submit" id="pay-action" disabled>thanh toán</button>
                </form>
            </div>
        </div>
        <div class="col product__list">
            <div class="row">
                <div class="col">
                    <p class="fw-bold">Sản phẩm</p>
                </div>
                <div class="col text-center">
                    <p class="fw-bold">Giá</p>
                </div>
            </div>
            <c:forEach var="p" items="${cart}">
                <div class="row">
                    <div class="col">
                        <img src="images/product.png" width="80" height="90">
                    </div>
                    <div class="col">
                        <p>${p.quantity}x</p>
                        <p class="fw-bold">${p.name}</p>
                        <p class="fw-bold">Size ${p.getSize()}</p>
                    </div>
                    <div class="col">
                        <fmt:setLocale value="vi-VN"/>
                        <fmt:formatNumber value="${p.price}" type="currency"/>
                    </div>
                </div>
            </c:forEach>
            <hr>
            <div class="row mt-4">
                <div class="row">
                    <div class="col">
                        <p class="fw-bold">
                            Tổng giá
                        </p>
                    </div>
                    <div class="col text-end">
                        <p class="fw-bold">
                            <fmt:formatNumber value="${totalPriceWithoutFee}" type="currency"/>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <p class="fw-bold text-secondary">
                            Phí vận chuyển
                        </p>
                    </div>
                    <div class="col text-end">
                        <p class="fw-bold text-secondary">
                            <fmt:formatNumber value="${shippingFee}" type="currency"/>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <p class="fw-bold text-secondary">
                            (Thời gian vận chuyển tùy khu vực)
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <p class="fw-bold text-secondary">VAT</p>
                    </div>
                    <div class="col text-end">
                        <p class="fw-bold text-secondary"><fmt:formatNumber value="${vat}" type="currency"/></p>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <p class="fw-bold">Tổng giá sau thuế</p>
                    </div>
                    <div class="col text-end">
                        <p class="fw-bold"><fmt:formatNumber value="${totalPrice}" type="currency"/></p>
                        <input type="hidden" name="orderStatus" value="${requestScope.get('orderStatus')}">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <p class="fw-bold">Tổng giá phải trả</p>
                    </div>
                    <div class="col text-end">
                        <input type="hidden" name="totalPrice" value="${totalPrice}">
                        <c:choose>
                            <c:when test="${requestScope.get('orderStatus').equals('paid')}">
                                <p class="fw-bold"><fmt:formatNumber value="0" type="currency"/></p>
                                <input type="hidden" name="status" value="1">
                            </c:when>
                            <c:when test="${!requestScope.get('orderStatus').equals('paid')}">
                                <p class="fw-bold"><fmt:formatNumber value="${totalPrice}" type="currency"/></p>
                                <input type="hidden" name="status" value="2">
                            </c:when>
                        </c:choose>
                    </div>
                </div>

                <div class="row mt-5">
                    <c:choose>
                        <c:when test="${requestScope.get('orderId').length() > 0}">
                            <input type="hidden" name="orderId" value="${requestScope.get('orderId')}">
                        </c:when>
                        <c:when test="${requestScope.get('orderId') == null}">
                            <input type="hidden" name="orderId"
                                   value="<%=GenerateRandomString.generateWithPrefixLength(8)%>">
                        </c:when>
                    </c:choose>
                    <form action="${pageContext.request.contextPath}/CreateOrder" id="order-form" hidden></form>
                    <form action="${pageContext.request.contextPath}/success.jsp" id="order-success" hidden></form>
                    <button class="submit-order">Đặt hàng</button>
                </div>
                <div class="row mt-3">
                    <div class="col">
                        <p class="text-secondary sm-90">Nhấn "Đặt hàng" đồng nghĩa với việc bạn đồng ý tuân theo
                            Điều
                            khoản của cửa hàng</p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<div class="footer w-100">
    <div class="row">
        <div class="col socials">
            <div class="row">
                <h1>GROUP 04</h1>
            </div>
            <div class="row mt-90">
                <div class="col-1">
                    <i class="fa-brands fa-facebook-f"></i>
                </div>
                <div class="col-1">
                    <i class="fa-brands fa-twitter"></i>
                </div>
                <div class="col-1">
                    <i class="fa-brands fa-instagram-square"></i>
                </div>
            </div>
            <div class="row mt-5 pr-5 w-120">
                <p>Copyright 2022 | All Rights Reserved.</p>
            </div>
        </div>
        <div class="col ml-p10">
            <div class="row">
                <p class="fw-bold">Sản Phẩm</p>
            </div>
            <div class="row">
                <p>Sản phẩm</p>
            </div>
            <div class="row">
                <p>Sản phẩm</p>
            </div>
        </div>
        <div class="col">
            <div class="row">
                <p class="fw-bold">Dịch vụ</p>
            </div>
            <div class="row">
                <p>Dịch vụ</p>
            </div>
            <div class="row">
                <p>Dịch vụ</p>
            </div>
        </div>
        <div class="col">
            <div class="row">
                <p class="fw-bold">Thông Tin Liên Hệ</p>
            </div>
            <div class="row">
                <p>Khu Phố 6 , Linh Trung , Thành Phố Thủ Đức , TP.HCM</p>
            </div>
            <div class="row">
                <p>0987654321</p>
            </div>
            <div class="row">
                <p>2022chieut5nhom4@gmail.com</p>
            </div>
        </div>

    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script src="js/main.js"></script>
<script>
    $(() => {
        function setPaidStatus() {
            $("input[name='paymentMethod']").attr("disabled", true);
            $("input[name='paymentMethod']").attr("disabled", true);
            $("#pay-action").attr("disabled", true);
            $("#pay-action").css("opacity", 0.5);
            $("#pay-action").text("BẠN ĐÃ THANH TOÁN HÓA ĐƠN NÀY");
        }

        function checkPaidStatus() {
            var orderStatus = $("input[name='orderStatus']").val();
            if (orderStatus === "paid") {
                return true;
            }
            return false;
        }

        if (checkPaidStatus()) {
            setPaidStatus();
        }
    });
</script>
</body>

</html>