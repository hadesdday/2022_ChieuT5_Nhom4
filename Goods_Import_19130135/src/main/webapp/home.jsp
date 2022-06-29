<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 15/06/2022
  Time: 10:31 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Trang chủ</title>

  <!-- Bootstrap -->
  <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- NProgress -->
  <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
  <!-- iCheck -->
  <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
  <!-- bootstrap-wysiwyg -->
  <link href="vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
  <!-- Select2 -->
  <link href="vendors/select2/dist/css/select2.min.css" rel="stylesheet">
  <!-- Switchery -->
  <link href="vendors/switchery/dist/switchery.min.css" rel="stylesheet">
  <!-- starrr -->
  <link href="vendors/starrr/dist/starrr.css" rel="stylesheet">
  <!-- bootstrap-daterangepicker -->
  <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

  <!-- Custom Theme Style -->
  <link href="build/css/custom.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
  <div class="main_container">
    <div class="col-md-3 left_col">
      <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
          <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>MANAGER PAGE</span></a>
        </div>

        <div class="clearfix"></div>

        <!-- menu profile quick info -->
        <div class="profile clearfix">
          <div class="profile_pic">
            <img src="images/BOX TEAM.png" alt="..." class="img-circle profile_img">
          </div>
          <div class="profile_info">
            <span>Welcome,</span>
            <h2>Nguyen Nhat Minh</h2>
          </div>
        </div>
        <!-- /menu profile quick info -->

        <br />

        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
          <div class="menu_section">
            <h3>Chức năng</h3>
            <ul class="nav side-menu">
              <li><a><i class="fa fa-home"></i> Trang chủ <span class="fa fa-chevron-down"></span></a>

              </li>
              <li><a href="index.jsp"><i class="fa fa-edit"></i> Nhập hàng hóa <span class="fa fa-chevron-down"></span></a>
              </li>
              <li><a><i class="fa fa-desktop"></i> Quản lý kho <span class="fa fa-chevron-down"></span></a>

              </li>
              <li><a><i class="fa fa-table"></i> Kiểm kê hàng hóa <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                  <li><a href="tables.html">Định kì</a></li>
                  <li><a href="tables_dynamic.html">Yêu cầu</a></li>
                </ul>
              </li>
              <li><a><i class="fa fa-bar-chart-o"></i> Cơ sở vật chất <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                  <li><a href="#">Hiện trạng</a></li>
                  <li><a href="#">Yêu cầu sửa chữa</a></li>
                  <li><a href="#">Yêu cầu thay mới</a></li>
                  <li><a href="#">Chi tiết toàn bộ CSVC</a></li>
                </ul>
              </li>
              <li><a><i class="fa fa-clone"></i>Quản lý nhân sự<span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                  <li><a href="#">Danh sách NV full-time</a></li>
                  <li><a href="#">Danh sách NV part-time</a></li>
                </ul>
              </li>
              <li><a><i class="fa fa-clone"></i>Quản lý nhà cung cấp<span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                  <li><a href="#">Nhà cung cấp dài hạn</a></li>
                  <li><a href="#">Nhà cung cấp ngắn hạn</a></li>
                </ul>
              </li>
            </ul>
          </div>


        </div>
        <!-- /sidebar menu -->

        <!-- /menu footer buttons -->
        <div class="sidebar-footer hidden-small">
          <a data-toggle="tooltip" data-placement="top" title="Settings">
            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
          </a>
          <a data-toggle="tooltip" data-placement="top" title="FullScreen">
            <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
          </a>
          <a data-toggle="tooltip" data-placement="top" title="Lock">
            <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
          </a>
          <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
            <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
          </a>
        </div>
        <!-- /menu footer buttons -->
      </div>
    </div>

    <!-- top navigation -->
    <div class="top_nav">
      <div class="nav_menu" style="width: 97.3%">
        <div class="nav toggle">
          <a id="menu_toggle"><i class="fa fa-bars"></i></a>
        </div>
        <nav class="nav navbar-nav" style="margin-right: 0px">
          <ul class=" navbar-right">
            <li class="nav-item dropdown open" style="padding-left: 15px;">
              <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                <img src="images/BOX TEAM.png" alt="">Nguyen Nhat Minh
              </a>
              <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="javascript:;"> Profile</a>
                <a class="dropdown-item" href="javascript:;">
                  <span class="badge bg-red pull-right">50%</span>
                  <span>Settings</span>
                </a>
                <a class="dropdown-item" href="javascript:;">Help</a>
                <a class="dropdown-item" href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
              </div>
            </li>

            <li role="presentation" class="nav-item dropdown open">
              <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
                <i class="fa fa-envelope-o"></i>
                <span class="badge bg-green">6</span>
              </a>
              <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                <li class="nav-item">
                  <a class="dropdown-item">
                    <span class="image"><img src="images/BOX TEAM.png" alt="Profile Image" /></span>
                    <span>
												<span>Quản trị viên</span>
												<span class="time">1 mins ago</span>
											</span>
                    <span class="message">
												Đăng nhập thành công !
											</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="dropdown-item">
                    <span class="image"><img src="images/BOX TEAM.png" alt="Profile Image" /></span>
                    <span>
												<span>Quản trị viên</span>
												<span class="time">10 mins ago</span>
											</span>
                    <span class="message">
                        Nhập thêm hàng hóa đợt mới vào kho.

											</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="dropdown-item">
                    <span class="image"><img src="images/BOX TEAM.png" alt="Profile Image" /></span>
                    <span>
												<span>Quản trị viên</span>
												<span class="time">2 hours ago</span>
											</span>
                    <span class="message">
												Cập nhật giá hàng hóa có mã ABC123.
											</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="dropdown-item">
                    <span class="image"><img src="images/BOX TEAM.png" alt="Profile Image" /></span>
                    <span>
												<span>Quản trị viên</span>
												<span class="time">3 hours ago</span>
											</span>
                    <span class="message">
												Lập bảng báo cáo thống kê chi phí hằng tháng.
											</span>
                  </a>
                </li>
                <li class="nav-item">
                  <div class="text-center">
                    <a class="dropdown-item">
                      <strong>See All Alerts</strong>
                      <i class="fa fa-angle-right"></i>
                    </a>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        </nav>
      </div>
    </div>
    <!-- /top navigation -->

    <!-- page content -->
    <div class="col-md-6 ">
      // Home page
      <div class="x_panel">
        <div class="x_title">
          <h2>Thông tin nhân viên <small>Chức vụ : Quản lý</small></h2>
          <ul class="nav navbar-right panel_toolbox">
            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                <a class="dropdown-item" href="#">Báo lỗi</a>
              </div>
            </li>
            <li><a class="close-link"><i class="fa fa-close"></i></a>
            </li>
          </ul>
          <div class="clearfix"></div>
        </div>
        <div class="x_content">
          <div class="col-md-3 col-sm-3  profile_left">
            <div class="profile_img">
              <div id="crop-avatar">
                <!-- Current avatar -->
                <img class="img-responsive avatar-view" src="images/BOX TEAM.png" alt="Avatar" title="Change the avatar">
              </div>
            </div>
            <h3>Nguyễn Nhật Minh</h3>

            <ul class="list-unstyled user_data">
              <li><i class="fa fa-map-marker user-profile-icon"></i> Trường ĐH Nông Lâm TP.HCM
              </li>

              <li>
                <i class="fa fa-briefcase user-profile-icon"></i> Web Developer
              </li>

              <li class="m-top-xs">
                <i class="fa fa-external-link user-profile-icon"></i>
                <a href="facebook.com/boxdez.lol" target="_blank">Nguyễn Nguyễn</a>
              </li>
            </ul>

            <a class="btn btn-success"><i class="fa fa-edit m-right-xs"></i>Chỉnh sửa thông tin</a>
            <br />

            <!-- start skills -->
            <h4>Kỹ năng</h4>
            <ul class="list-unstyled user_data">
              <li>
                <p>Web Developer</p>
                <div class="progress progress_sm">
                  <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="50"></div>
                </div>
              </li>
              <li>
                <p>Website Design</p>
                <div class="progress progress_sm">
                  <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="70"></div>
                </div>
              </li>
              <li>
                <p>Java Developer</p>
                <div class="progress progress_sm">
                  <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="75"></div>
                </div>
              </li>
              <li>
                <p>C-Sharp Developer</p>
                <div class="progress progress_sm">
                  <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="50"></div>
                </div>
              </li>
            </ul>
            <!-- end of skills -->

          </div>
          <div class="col-md-9 col-sm-9 profile_right " style="width: 500px">

            <div class="profile_title">
              <div class="col-md-6">
                <h2>Báo cáo hoạt động nhân viên</h2>
              </div>
            </div>
            <!-- start of user-activity-graph -->
            <!-- end of user-activity-graph -->

            <div class="" role="tabpanel" data-example-id="togglable-tabs">
              <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Hoạt động thường xuyên</a>
                </li>
                <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Đồ án</a>
                </li>
                <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Thông tin</a>
                </li>
              </ul>
              <div id="myTabContent" class="tab-content">
                <div role="tabpanel" class="tab-pane active " id="tab_content1" aria-labelledby="home-tab">

                  <!-- start recent activity -->
                  <ul class="messages">
                    <li>
                      <img src="images/BOX TEAM.png" class="avatar" alt="Avatar">
                      <div class="message_date">
                        <h3 class="date text-info">30</h3>
                        <p class="month">June</p>
                      </div>
                      <div class="message_wrapper">
                        <h4 class="heading">Quản trị viên</h4>
                        <blockquote class="message">Cập nhật thông tin thành công !</blockquote>
                        <br />
                        <p class="url">
                          <span class="fs1 text-info" aria-hidden="true" data-icon=""></span>
                          <a href="#"><i class="fa fa-paperclip"></i> ThongTinNhanVienQL.doc </a>
                        </p>
                      </div>
                    </li>
                    <li>
                      <img src="images/BOX TEAM.png" class="avatar" alt="Avatar">
                      <div class="message_date">
                        <h3 class="date text-error">29</h3>
                        <p class="month">June</p>
                      </div>
                      <div class="message_wrapper">
                        <h4 class="heading">Quản trị viên</h4>
                        <blockquote class="message">Chỉnh sửa lịch làm việc</blockquote>
                        <br />
                        <p class="url">
                          <span class="fs1" aria-hidden="true" data-icon=""></span>
                          <a href="#" data-original-title="">Tải xuống</a>
                        </p>
                      </div>
                    </li>
                    <li>
                      <img src="images/BOX TEAM.png" class="avatar" alt="Avatar">
                      <div class="message_date">
                        <h3 class="date text-info">24</h3>
                        <p class="month">June</p>
                      </div>
                      <div class="message_wrapper">
                        <h4 class="heading">Quản trị viên</h4>
                        <blockquote class="message">Yêu cầu thêm mới hàng hóa</blockquote>
                        <br />
                        <p class="url">
                          <span class="fs1 text-info" aria-hidden="true" data-icon=""></span>
                          <a href="#"><i class="fa fa-paperclip"></i> DanhSachHangHoaMoi.doc </a>
                        </p>
                      </div>
                    </li>
                    <li>
                      <img src="images/BOX TEAM.png" class="avatar" alt="Avatar">
                      <div class="message_date">
                        <h3 class="date text-error">21</h3>
                        <p class="month">June</p>
                      </div>
                      <div class="message_wrapper">
                        <h4 class="heading">Quản trị viên</h4>
                        <blockquote class="message">Kiểm tra thông tin nhân viên mới</blockquote>
                        <br />
                        <p class="url">
                          <span class="fs1" aria-hidden="true" data-icon=""></span>
                          <a href="#" data-original-title="">Tải xuống</a>
                        </p>
                      </div>
                    </li>

                  </ul>
                  <!-- end recent activity -->

                </div>
                <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                  <!-- start user projects -->
                  <table class="data table table-striped no-margin">
                    <thead>
                    <tr>
                      <th>#</th>
                      <th>Project Name</th>
                      <th>Client Company</th>
                      <th class="hidden-phone">Hours Spent</th>
                      <th>Contribution</th>
                    </tr>
                    </thead>

                  </table>
                  <!-- end user projects -->

                </div>
                <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                  <p>Hổng có gì ở đây hết, em vui tính + dễ gần ạ <3</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /page content -->

    <!-- footer content -->
    <footer>
      <div class="pull-right">
        Phân quyền : Quản lý
      </div>
      <div class="clearfix" style="height: 96vh"></div>
    </footer>
    <!-- /footer content -->
  </div>
</div>

<!-- morris.js -->
<script src="vendors/raphael/raphael.min.js"></script>
<script src="vendors/morris.js/morris.min.js"></script>
<!-- jQuery -->
<script src="vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<!-- FastClick -->
<script src="vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="vendors/nprogress/nprogress.js"></script>
<!-- bootstrap-progressbar -->
<script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- iCheck -->
<script src="vendors/iCheck/icheck.min.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="vendors/moment/min/moment.min.js"></script>
<script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap-wysiwyg -->
<script src="vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
<script src="vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
<script src="vendors/google-code-prettify/src/prettify.js"></script>
<!-- jQuery Tags Input -->
<script src="vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
<!-- Switchery -->
<script src="vendors/switchery/dist/switchery.min.js"></script>
<!-- Select2 -->
<script src="vendors/select2/dist/js/select2.full.min.js"></script>
<!-- Parsley -->
<script src="vendors/parsleyjs/dist/parsley.min.js"></script>
<!-- Autosize -->
<script src="vendors/autosize/dist/autosize.min.js"></script>
<!-- jQuery autocomplete -->
<script src="vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
<!-- starrr -->
<script src="vendors/starrr/dist/starrr.js"></script>
<!-- Custom Theme Scripts -->
<script src="build/js/custom.min.js"></script>


</body></html>

