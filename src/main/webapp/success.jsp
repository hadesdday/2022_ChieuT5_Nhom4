<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <title>Thanh toán thành công | Group04</title>
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
                    <a class="nav-link active" aria-current="page" href="#">
                        <i class="fa-solid fa-magnifying-glass" id="toggleSearch"></i>
                    </a>
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

<div class="container">
    <div class="row congrat-icon d-flex justify-content-center">
        <img src="images/congrat.png" id="congrat"/>
    </div>
    <div class="row text-center mt-5">
        <h2 class="fw-bold">Đặt hàng thành công</h2>
    </div>
    <div class="row text-center mt-3">
        <p class="fs-5">Đơn hàng của bạn đang được xử lý , vui lòng chờ trong giây
            lát</p>
    </div>
    <div class="row text-center">
        <a href="${pageContext.request.contextPath}/">
            <button class="back-to-home">
                <i class="fa-solid fa-arrow-left m-1"></i>
                Trở về trang chủ
            </button>
        </a>
    </div>
    <div class="row text-center mt-5">
        <p class="fw-bold fs-4">Khám Phá Ưu Đãi</p>
    </div>
    <div class="row mt-5">
        <div class="col text-center product__item" style="margin-right:30px;">
            <div class="row product__image">
                <img src="images/coff.png">
            </div>
            <div class="row">
                <p class="fs-3 text-secondary">Bạc Xỉu</p>
            </div>
            <div class="row">
                <div class="col">
                    <p class="text-decoration-line-through text-secondary">
                        99.000 đ
                    </p>
                </div>
                <div class="col">
                    <p class="text-secondary">
                        69.000 đ
                    </p>
                </div>
            </div>
        </div>
        <div class="col text-center product__item" style="margin-right:30px;">
            <div class="row product__image">
                <img src="images/coff.png">
            </div>
            <div class="row">
                <p class="fs-3 text-secondary">Bạc Xỉu</p>
            </div>
            <div class="row">
                <div class="col">
                    <p class="text-decoration-line-through text-secondary">
                        99.000 đ
                    </p>
                </div>
                <div class="col">
                    <p class="text-secondary">
                        69.000 đ
                    </p>
                </div>
            </div>
        </div>
        <div class="col text-center product__item" style="margin-right:30px;">
            <div class="row product__image">
                <img src="images/coff.png">
            </div>
            <div class="row">
                <p class="fs-3 text-secondary">Bạc Xỉu</p>
            </div>
            <div class="row">
                <div class="col">
                    <p class="text-decoration-line-through text-secondary">
                        99.000 đ
                    </p>
                </div>
                <div class="col">
                    <p class="text-secondary">
                        69.000 đ
                    </p>
                </div>
            </div>
        </div>
        <div class="col text-center product__item" style="margin-right:30px;">
            <div class="row product__image">
                <img src="images/coff.png">
            </div>
            <div class="row">
                <p class="fs-3 text-secondary">Bạc Xỉu</p>
            </div>
            <div class="row">
                <div class="col">
                    <p class="text-decoration-line-through text-secondary">
                        99.000 đ
                    </p>
                </div>
                <div class="col">
                    <p class="text-secondary">
                        69.000 đ
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="footer w-100 mt-5">
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

<script src="js/main.js"></script>
</body>

</html>