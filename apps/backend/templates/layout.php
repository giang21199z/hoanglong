<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <?php
    if (!($sf_user->getAttribute('USER_BE'))) {
        header('Location: ' . url_for('login'));
        exit;
    } ?>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <?php sfContext::getInstance()->getResponse()->removeStylesheet('/sfDoctrinePlugin/css/global.css'); ?>
    <?php sfContext::getInstance()->getResponse()->removeStylesheet('/sfDoctrinePlugin/css/default.css'); ?>
    <?php include_javascripts() ?>
    <?php include_stylesheets() ?>

</head>
<body>
<nav class="navbar navbar-default navbar-static-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle navbar-toggle-sidebar collapsed">
                MENU
            </button>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
                Administrator
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown ">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        hoanglonghospital.vn
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li class="dropdown-header">
                            Xin chào
                        </li>
                        <li class="divider"></li>
                        <li class="" id="change-pass"><a href="#" data-toggle="modal" data-target="#changePass">Đổi mật
                                khẩu</a></li>
                        <li class="divider"></li>
                        <li><a href="<?php echo url_for('logout') ?>">Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
<div class="container-fluid main-container">
    <div class="col-md-2 sidebar">
        <div class="row">
            <!-- uncomment code for absolute positioning tweek see top comment in css -->
            <div class="absolute-wrapper"></div>
            <!-- Menu -->
            <div class="side-menu">
                <nav class="navbar navbar-default" role="navigation">
                    <!-- Main Menu -->
                    <div class="side-menu-container">
                        <ul class="nav navbar-nav">
                            <li id="slide"><a href="<?php echo url_for('homepage') ?>"><span
                                        class="glyphicon glyphicon-menu-hamburger"></span> Dashboard</a>
                            </li>
                            <li id="slide"><a href="<?php echo url_for('schedule') ?>"><span
                                        class="glyphicon glyphicon-time"></span> Khách hàng đặt lịch</a>
                            </li>
                            <li class="dropdown ">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="true">
                                    <span
                                        class="glyphicon glyphicon-list-alt"></span>Quản lý tin tức
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li id="tour"><a href="<?php echo url_for('news') ?>"><span
                                                class="glyphicon glyphicon-list-alt"></span> Tin tức</a></li>

                                    <li id="book-tour">
                                        <a href="<?php echo url_for('category_news') ?>"><span
                                                class="glyphicon glyphicon-calendar"></span> Danh mục tin tức
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <li class="dropdown ">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="true">
                                    <span
                                        class="glyphicon glyphicon-usd"></span>Quản lý dịch vụ khám chữa bệnh
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li id="tour"><a href="<?php echo url_for('service') ?>"><span
                                                class="glyphicon glyphicon-search"></span> Dịch vụ</a></li>
                                    <li id="book-tour">
                                        <a href="<?php echo url_for('category_service') ?>"><span
                                                class="glyphicon glyphicon-th"></span> Chuyên khoa
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown ">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="true">
                                    <span
                                        class="glyphicon glyphicon-plus-sign"></span>Quản lý bác sĩ
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li id="tour"><a href="<?php echo url_for('doctor') ?>"><span
                                                class="glyphicon glyphicon-plus"></span> Bác sĩ</a></li>
                                    <li id="book-tour">
                                        <a href="<?php echo url_for('specialist') ?>"><span
                                                class="glyphicon glyphicon-record"></span> Chuyên khoa
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown ">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="true">
                                    <span
                                        class="glyphicon glyphicon-plus-sign"></span>Thông tin giới thiệu
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li id="slide"><a href="<?php echo url_for('about_us') ?>"><span
                                                class="glyphicon glyphicon-film"></span> Các bài viết giới thiệu</a>
                                    </li>
                                    <li id="book-tour">
                                        <a href="<?php echo url_for('category_about_us') ?>"><span
                                                class="glyphicon glyphicon-record"></span> Category
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown ">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="true">
                                    <span
                                        class="glyphicon glyphicon-picture"></span>Quản lý ảnh
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li id="slide"><a href="<?php echo url_for('gallery') ?>"><span
                                                class="glyphicon glyphicon-picture"></span> Thư viện ảnh</a>
                                    </li>
                                    <li id="book-tour">
                                        <a href="<?php echo url_for('category_gallery') ?>"><span
                                                class="glyphicon glyphicon-record"></span> Quản lý thư mục ảnh
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown ">
                                <a href="<?php echo url_for('video') ?>">
                                    <span
                                        class="glyphicon glyphicon-film"></span>Quản lý video
                                </a>
                            </li>
                            <li id="slide"><a href="<?php echo url_for('feed_back') ?>"><span
                                        class="glyphicon glyphicon-comment"></span> Quản lý nhận xét khách hàng</a>
                            </li>
                            <li id="slide"><a href="<?php echo url_for('slide') ?>"><span
                                        class="glyphicon glyphicon-heart"></span> Quản lý Slide</a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>

            </div>
        </div>
    </div>
    <div class="col-md-10 content">
        <div class="panel panel-default">
            <div class="panel-heading">
                <marquee><b>Welcome to hoanglonghospital.com</b></marquee>
            </div>
            <div class="panel-body">
                <?php echo $sf_content ?>
            </div>
        </div>
    </div>
    <footer class="pull-left footer">
        <p class="col-md-12">
        <hr class="divider">
        Copyright &COPY; 2017 <a href="https://www.facebook.com/nguyendg21199z">Giang Nguyen. SMVC-SEV</a>
        </p>
    </footer>
</div>
<div id="changePass" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Đổi mật khẩu</h4>
            </div>
            <div class="modal-body">
                <input type="password" class="form-control" name="password" id="password">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="update-pass" data-dismiss="modal">Save and close
                </button>
            </div>
        </div>

    </div>
</div>
<script>
    $("#update-pass").click(function () {
        var username = '<?php echo $sf_user->getAttribute('USER_BE')->getUsername();?>';
        var password = $("#password").val();
        $.ajax({
            type: 'POST',
            url: '<?php echo url_for("ajax_change_pass")?>',
            data: {
                username: username,
                password: password
            }
        }).done(function () {
            swal("Cập nhật mật khẩu thành công", "", "success");
        });
    });
</script>
</body>
</html>