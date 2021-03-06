<!DOCTYPE html>
<!--[if IE 9]>
<html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <?php include_http_metas() ?>
    <?php include_metas() ?>
    <?php include_title() ?>
    <link rel="shortcut icon" href="/favicon.ico"/>
    <!-- Web Fonts -->
    <!-- Bootstrap core CSS -->
    <link href="/bootstrapi/css/bootstrap.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link href="/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
    <!-- Worthy core CSS file -->
    <link href="/cssi/style.css" rel="stylesheet">
    <link href="/css/sweetalert.css" rel="stylesheet">
    <!-- Custom css -->
    <link href="/cssi/custom.css" rel="stylesheet">
    <link href="/cssi/gallery.css" rel="stylesheet">
    <link href="/cssi/ip.css" rel="stylesheet">
    <link href="/css/megamenu.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/engine1i/style.css"/>
    <script type="text/javascript" src="/engine1i/jquery.js"></script>
    <script src="/jsi/jssor.slider-23.1.6.min.js" type="text/javascript"></script>
    <script src="/jsi/gallery.js" type="text/javascript"></script>
</head>
<body class="no-trans">
<!-- scrollToTop -->
<!-- ================ -->
<div class="scrollToTop"><i class="icon-up-open-big"></i></div>

<!-- header start -->
<!-- ================ -->
<header class="header fixed clearfix navbar navbar-fixed-top">
    <div class="row logo-header navigation">
        <div class="row content">
            <div class="col-xs-2 no-padding">
                <div class="logo smooth-scroll">
                    <img src="/images/logo.png" class="logo"> <br>
                    <img src="/images/text-logo.png" class="text-logo">
                </div>

            </div>
            <div class="col-xs-10 no-padding">
                <div class="row infomation">
                    <div class="col-xs-4 no-padding" style="width:30%; margin-left: 10%">
                        <div class="row">
                            <div class="col-xs-2 no-padding">
                                <img class="icon-location" src="/images/location.png">
                            </div>
                            <div class="col-xs-10 no-padding">
                                <b> ĐỊA CHỈ </b>

                                <p class="no-margin-bottom"> Tầng 10, tòa nhà VCCI <br>Số 9, Đào Duy Anh, Hà Nội
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-3 no-padding" style="width:20%;">
                        <div class="row">
                            <div class="col-xs-2 no-padding">
                                <img src="/images/clock.png">
                            </div>
                            <div class="col-xs-10 no-padding" style="padding-left: 20px">
                                <b> GIỜ MỞ CỬA  </b>

                                <p class="no-margin-bottom"> Thứ 2 - Thứ 7 </p>

                                <p class="no-margin-bottom"> 8:00 - 21:00 </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-5 no-padding" style="width:35%;">
                        <div class="row">
                            <div class="col-xs-2 no-padding">
                                <img src="/images/call.png">
                            </div>
                            <div class="col-xs-10 no-padding" style="padding-left: 15px">
                                <b> LIÊN HỆ </b>

                                <p class="no-margin-bottom"> 04 628 11 331 - 04 628 11 337 </p>

                                <p class="no-margin-bottom"> Hotline : 04 626 00 581 </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row menu-header">
        <div class="row content">
            <!-- header-right start -->
            <!-- ================ -->
            <div class="header-right clearfix">
                <!-- main-navigation start -->
                <!-- ================ -->
                <div class="main-navigation animated">
                    <nav class="navbar navbar-default" role="navigation">
                        <div class="container-fluid">
                            <div class="collapse navbar-collapse scrollspy smooth-scroll" id="navbar-collapse-1">
                                <ul class="nav navbar-nav navbar-left menu no-padding">
                                    <li class="dropdown mega-dropdown">
                                        <a href="<?php echo url_for('homepage_ip', array('xteam' => 'ipad')) ?>">TRANG
                                            CHỦ </a>
                                    </li>
                                    <li class="dropdown mega-dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">GIỚI THIỆU </a>
                                        <ul class="  dropdown-menu mega-dropdown-menu no-padding"
                                            style="border: 0px ; border-radius: 0px;">
                                            <?php
                                            $about_us = AboutUsTable::getAboutUsMenu();
                                            foreach ($about_us as $value): ?>
                                                <li class="col-xs-4 no-padding text-center"><a
                                                        href="<?php echo url_for('detail_about_us_ipad', array("idaboutus" => $value["idnews"], 'xteam' => 'ipad')) ?>">
                                                        <p class="text-uppercase"><?php echo $value['title'] ?></p></a>
                                                </li>
                                            <?php endforeach; ?>
                                            <?php
                                            $about_us = CategoryAboutUsTable::getAllCategoryExceptRoot();
                                            foreach ($about_us as $value):?>
                                                <li class="col-xs-4 no-padding text-center"><a
                                                        href="<?php echo url_for('list_about_us_ipad', array('idcategory' => $value['idcategory_about_us'], 'xteam' => 'ipad'))?>">
                                                        <p class="text-uppercase"><?php echo $value['name']?></p></a>
                                                </li>
                                            <?php endforeach; ?>
                                            <li class="col-xs-4 no-padding text-center"><a
                                                    href="<?php echo url_for('doctor_ipad',array('xteam' => 'ipad')) ?>">
                                                    <p>ĐỘI NGŨ BÁC SĨ</p></a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">DỊCH VỤ</a>
                                        <ul class="  dropdown-menu mega-dropdown-menu no-padding"
                                            style="border: 0px ; border-radius: 0px;">
                                            <?php
                                            $services = ServiceTable::getAllService();
                                            foreach ($services as $value):?>
                                                <li class="col-xs-4 no-padding text-center"><a
                                                        href="<?php echo url_for('detail_service_ipad', array('idservice' => $value['idnews'], 'title' => $value['title']))?>">
                                                        <p
                                                            class="text-uppercase"><?php echo $value['title']?></p></a>
                                                </li>
                                            <?php endforeach; ?>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-dropdown dropdown-toggle">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><p>TIN TỨC</p></a>
                                        <ul class="  dropdown-menu mega-dropdown-menu no-padding"
                                            style="border: 0px ; border-radius: 0px;">
                                            <?php
                                            $category_news = CategoryNewsTable::getAllCategory();
                                            foreach ($category_news as $value):?>
                                                <li class="col-xs-4 no-padding text-center">
                                                    <a href="<?php echo url_for('list_news_ipad', array('idcategory' => $value['idcategory_news'], 'name' => $value['name']))?>">
                                                        <p
                                                            class="text-uppercase"><?php echo $value['name']?></p></a>
                                                </li>
                                            <?php endforeach; ?>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">THƯ VIỆN</a>
                                        <ul class="  dropdown-menu mega-dropdown-menu no-padding"
                                            style="border: 0px ; border-radius: 0px;">
                                            <li class="col-xs-4 no-padding text-center">
                                                <a href="<?php echo url_for('list_gallery_ipad', array('xteam' => 'ipad')) ?>">
                                                    <p
                                                        class="text-uppercase">Thư viện ảnh</p></a>
                                            </li>
                                            <li class="col-xs-4 no-padding">
                                                <a href="<?php echo url_for('list_video', array('idvideo' => 1)) ?>">
                                                    <p
                                                        class="text-uppercase">Thư viện video</p></a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-dropdown">
                                        <a href="<?php echo url_for('contact_ipad', array('xteam' => 'ipad')) ?>">LIÊN HỆ </a>
                                    </li>
                                </ul>

                                <ul class="nav navbar-nav navbar-right">
                                    <li style="background-color: #86a92b; height: 50px; border-radius: 0px 0px 10px 10px">
                                        <a type="button" data-toggle="modal"
                                           data-target="#myModal"><span> Đặt lịch hẹn</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header end -->


<?php echo $sf_content ?>
<!-- footer start -->
<!-- ================ -->
<footer id="footer">
    <!-- .subfooter start -->
    <!-- ================ -->
    <div class="row" style="background: #343434">
        <div class="row content">
            <div class="col-xs-7 no-padding-left ft-left">
                <div class="row">
                    <p class="title">
                        Phòng khám Hoàng Long
                    </p>
                    <hr>
                    <p class="description">
                        Phòng khám Hoàng Long là phòng khám Đa khoa nhưng chuyên sâu về Tiêu Hóa & Gan Mật. Phòng khám
                        được sáng lập bởi giáo sư Đào Văn Long - chuyên gia hàng đầu trong lĩnh vực tiêu hóa. Đây là
                        phòng khám sở hữu dàn máy nội soi và siêu âm nội soi hiện đại và tiên tiến bậc nhất hiện nay tại
                        Việt Nam.
                    </p>
                </div>
                <div class="row icon-contact text-center">
                    <div class="fb">
                        <p>
                            <i class="fa fa-facebook"></i>
                        </p>
                    </div>
                    <div class="tw">
                        <p>
                            <i class="fa fa-twitter"></i>
                        </p>
                    </div>
                    <div class="yt">
                        <p>
                            <i class="fa fa-youtube-play"></i>
                        </p>
                    </div>
                    <div class="g">
                        <p>
                            <i class="fa fa-google-plus-square"></i>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 col-md-offset-1 no-padding">
                <p style="font-size: 18px">
                    Liên hệ
                </p>
                <hr>
                <div class="row list-contact">
                    <div class="row">
                        <div class="col-xs-2 no-padding">
                            <img src="/imagesi/location.png" class="img-location">
                        </div>
                        <div class="col-xs-10 no-padding ">
                            <p class="text">Tầng 10, Tòa nhà VCCI <br> Số 9, Đào Duy Anh, Hà Nội</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-2 no-padding">
                            <img src="/imagesi/clock.png" class="img-clock">
                        </div>
                        <div class="col-xs-10 no-padding ">
                            <p class="text">MON - SAT <br> 08:00 - 21:00
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-2 no-padding">
                            <img src="/imagesi/call.png" class="img-call">
                        </div>
                        <div class="col-xs-10 no-padding ">
                            <p class="text">
                                04 628 11 331 - 04 628 11 337 <br>
                                Hotline: 04 626 00 581
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- .subfooter end -->
</footer>
<!-- footer end -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="row make-shu" style=" background: #b9d96a; width: 360px ; margin: 0px auto; border-radius: 10px">
            <p style=" color :#ffffff;padding-top: 25px ; padding-left: 20px ; letter-spacing: 2px; font-size: 26px">
                Đặt lịch hẹn</p>

            <div class="row"
                 style="font-size: 16px;padding-left: 25px;padding-right: 25px ; letter-spacing: 1px;">
                <p style="color: #ffffff">
                    Hân hạnh phục vụ quý khách
                </p>
                <input type="text" class="form-control" id="fullname_" placeholder="Họ tên">
                <input type="number" class="form-control" id="age_" placeholder="Tuổi">
                <input type="text" class="form-control" id="phone_" placeholder="Số điện thoại">
                <input type="text" class="form-control" id="address_" placeholder="Địa chỉ">
                <input type="text" class="form-control" id="date_"
                       placeholder="Ngày bạn có thể tới khám.VD: 02/01/2017">
                <textarea class="form-control" style="height: 120px" id="description_"
                          placeholder="Miêu tả triệu chứng"></textarea>

                <div class="row text-center ">
                    <button class="btn text-center schedule-btn" id="btn-make-schedule_">
                        <p class="text-center">ĐẶT LỊCH KHÁM</p>
                    </button>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- JavaScript files placed at the end of the document so the pages load faster
================================================== -->
<!-- Jquery and Bootstap core js files -->
<script type="text/javascript" src="/plugins/jquery.min.js"></script>
<script type="text/javascript" src="/bootstrapi/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/sweetalert.min.js"></script>
<!-- Custom Scripts -->
<script>
    $(document).ready(function () {
        $('#btn-make-schedule').click(function () {
            var fullname = $("#fullname").val();
            var age = $("#age").val();
            var phone = $("#phone").val();
            var address = $("#address").val();
            var date = $("#date").val();
            var description = $("#description").val();
            var is_validate = true;
            if (fullname.length == 0) {
                $("#fullname").val('');
                $("#fullname").prop({'placeholder': 'Vui lòng nhập đúng tên'});
                is_validate = false;
            }
            if (age < 0 || age > 150) {
                $("#age").val('');
                $("#age").prop({'placeholder': 'Vui lòng nhập đúng tuổi'});
                is_validate = false;
            }
            if (phone.length < 10 || !/\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/.test(phone)) {
                $("#phone").val('');
                $("#phone").prop({'placeholder': 'Vui lòng nhập đúng số điện thoại'});
                is_validate = false;
            }
            if (address.length == 0) {
                $("#address").val('');
                $("#address").prop({'placeholder': 'Vui lòng nhập đúng địa chỉ'});
                is_validate = false;
            }
            if (!is_validate) {
                return;
            }
            swal({
                title: "Đặt lịch hẹn",
                text: "Bạn có chắc chắn muốn đặt lịch hẹn không?",
                type: "info",
                showCancelButton: true,
                closeOnConfirm: false,
                showLoaderOnConfirm: true
            }, function () {
                var data = {
                    fullname: fullname,
                    age: age,
                    phone: phone,
                    address: address,
                    date: date,
                    description: description
                };
                $.ajax({
                    type: 'POST',
                    url: '<?php echo url_for("make_schedue")?>',
                    data: data
                }).done(function ($msg) {
                    swal(JSON.parse($msg).message, "", "success");
                });
            });
        });
        $('#btn-make-schedule_').click(function () {
            var fullname = $("#fullname_").val();
            var age = $("#age_").val();
            var phone = $("#phone_").val();
            var address = $("#address_").val();
            var date = $("#date_").val();
            var description = $("#description_").val();
            var is_validate = true;
            if (fullname.length == 0) {
                $("#fullname_").val('');
                $("#fullname_").prop({'placeholder': 'Vui lòng nhập đúng tên'});
                is_validate = false;
            }
            if (age < 0 || age > 150) {
                $("#age_").val('');
                $("#age_").prop({'placeholder': 'Vui lòng nhập đúng tuổi'});
                is_validate = false;
            }
            if (phone.length < 10 || !/\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/.test(phone)) {
                $("#phone_").val('');
                $("#phone_").prop({'placeholder': 'Vui lòng nhập đúng số điện thoại'});
                is_validate = false;
            }
            if (address.length == 0) {
                $("#address_").val('');
                $("#address_").prop({'placeholder': 'Vui lòng nhập đúng địa chỉ'});
                is_validate = false;
            }
            if (!is_validate) {
                return;
            }
            swal({
                title: "Đặt lịch hẹn",
                text: "Bạn có chắc chắn muốn đặt lịch hẹn không?",
                type: "info",
                showCancelButton: true,
                closeOnConfirm: false,
                showLoaderOnConfirm: true
            }, function () {
                var data = {
                    fullname: fullname,
                    age: age,
                    phone: phone,
                    address: address,
                    date: date,
                    description: description
                };
                $.ajax({
                    type: 'POST',
                    url: '<?php echo url_for("make_schedue")?>',
                    data: data
                }).done(function ($msg) {
                    swal(JSON.parse($msg).message, "", "success");
                    $('#myModal').modal('hide');
                    $("#fullname_").val("");
                    $("#age_").val("");
                    $("#phone_").val("");
                    $("#address_").val("");
                    $("#description_").val("");
                });
            });
        });
    });
    (function ($) {

        var nav = $("#navbar-collapse-1");

        nav.find("li").each(function () {
            if ($(this).find("ul").length > 0) {

                //show subnav on hover
                $(this).mouseover(function () {
                    $(this).find("ul").slideDown(300);
                });
                //hide submenus on exit
                $(this).mouseleave(function () {
                    $(this).find("ul").stop(true).slideUp(300);
                });
            }
        });

    })(jQuery);
</script>
</body>
</html>
