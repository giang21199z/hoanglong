<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <script>
        var is_iPad = navigator.userAgent.match(/iPad/i) != null;
        if (is_iPad) {
            window.location.replace("<?php echo url_for('homepage_ip') ?>");
        }
        else if (navigator.userAgent.match(/Android/i)
            || navigator.userAgent.match(/webOS/i)
            || navigator.userAgent.match(/iPhone/i)
            || navigator.userAgent.match(/BlackBerry/i)
            || navigator.userAgent.match(/Windows Phone/i)
        ) {
            window.location.replace("<?php echo url_for('homepage_m')?>");
        }
    </script>
    <?php include_http_metas() ?>
    <?php include_metas() ?>
    <?php include_title() ?>
    <link rel="shortcut icon" href="/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="/css/daterangepicker.css"/>
    <?php include_stylesheets() ?>
    <?php include_javascripts() ?>
    <script>
        $(document).ready(function () {
            $(window).scroll(function () {
                if ($('body').scrollTop() < 100) {
                    $('.logo-header').show();

                } else {
                    $('.logo-header').hide();
                }
            });
        });
    </script>
</head>
<body class="no-trans">
<!-- scrollToTop -->
<!-- ================ -->
<div class="scrollToTop"><i class="icon-up-open-big"></i></div>

<!-- header start -->
<!-- ================ -->
<header class="header fixed clearfix navbar navbar-fixed-top">

    <div class="row logo-header">
        <div class="row content">
            <div class="col-md-4">
                <div class="logo smooth-scroll">
                    <a href="<?php echo url_for('homepage') ?>">
                        <img src="/images/logo.png" alt="logo hoàng long hospital"
                             style="margin-left: 15px; width: 60px ; height: 50px;margin-bottom: 10px; margin-top: 8px">
                        <img src="/images/text-logo.png" style="width: 75px; height: 26px ; margin-left: 20px"
                             alt="logo hoàng long hospital">
                    </a>
                </div>

            </div>
            <div class="col-md-8">
                <div class="row infomation">
                    <div class="col-xs-4">
                        <div class="row">
                            <div class="col-xs-2 no-padding">
                                <img src="/images/call.png" alt="call hoàng long">
                            </div>
                            <div class="col-xs-10 no-padding" style="padding-left: 15px">
                                <b> LIÊN HỆ </b>

                                <p class="no-margin-bottom"> 024 628 11 331</p>

                                <p class="no-margin-bottom"> 024 628 11 337 </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="row">
                            <div class="col-xs-2 no-padding">
                                <img src="/images/clock.png" alt="thời gian hoàng long">
                            </div>
                            <div class="col-xs-10 no-padding" style="padding-left: 20px">
                                <b> GIỜ MỞ CỬA </b>

                                <p class="no-margin-bottom"> Thứ 2 - Thứ 7 </p>

                                <p class="no-margin-bottom"> 7:30 - 17:30 </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <div class="row">
                            <div class="col-xs-2 no-padding">
                                <img class="icon-location" src="/images/location.png" alt="địa chỉ hoàng long">
                            </div>
                            <div class="col-xs-10 no-padding">
                                <b> ĐỊA CHỈ </b>

                                <p class="no-margin-bottom"> Tầng 10, tháp VCCI <br>Số 9, Đào Duy Anh, HN
                                </p>
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
                                        <a href="<?php echo url_for('homepage') ?>">TRANG CHỦ </a>
                                    </li>
                                    <li class="dropdown mega-dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">GIỚI THIỆU </a>
                                        <ul class="  dropdown-menu mega-dropdown-menu no-padding"
                                            style="border: 0px ; border-radius: 0px;">
                                            <?php
                                            $about_us = AboutUsTable::getAboutUsMenu();
                                            foreach ($about_us as $value): ?>
                                                <li class="col-xs-3 no-padding"><a
                                                        href="<?php echo url_for('detail_about_us', array("idaboutus" => $value["idnews"], "title" => VtHelper::write_url_english($value['title']))) ?>">
                                                        <p class="text-uppercase"><?php echo $value['title'] ?></p></a>
                                                </li>
                                            <?php endforeach; ?>
                                            <?php
                                            $about_us = CategoryAboutUsTable::getAllCategoryExceptRoot();
                                            foreach ($about_us as $value):?>
                                                <li class="col-xs-3 no-padding"><a
                                                        href="<?php echo url_for('list_about_us', array('idcategory' => $value['idcategory_about_us']))?>">
                                                        <p class="text-uppercase"><?php echo $value['name']?></p></a>
                                                </li>
                                            <?php endforeach; ?>
                                            <li class="col-xs-3 no-padding"><a href="<?php echo url_for('doctor') ?>">
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
                                                <li class="col-xs-3 no-padding"><a
                                                        href="<?php echo url_for('detail_service', array('idservice' => $value['idnews'], 'title' => VtHelper::write_url_english($value['title'])))?>">
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
                                                <li class="col-xs-3 no-padding">
                                                    <a href="<?php echo url_for('list_news', array('idcategory' => $value['idcategory_news'], 'name' => VtHelper::write_url_english($value['name'])))?>">
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
                                            <li class="col-xs-3 no-padding">
                                                <a href="<?php echo url_for('list_gallery') ?>">
                                                    <p
                                                        class="text-uppercase">Thư viện ảnh</p></a>
                                            </li>
                                            <li class="col-xs-3 no-padding">
                                                <a href="<?php echo url_for('list_video', array('idvideo' => 1)) ?>">
                                                    <p
                                                        class="text-uppercase">Thư viện video</p></a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-dropdown">
                                        <a href="<?php echo url_for('contact') ?>">LIÊN
                                            HỆ </a>
                                    </li>
                                </ul>

                                <ul class="nav navbar-nav navbar-right">
                                    <li style="background-color: #86a92b; height: 70px; border-radius: 0px 0px 10px 10px">

                                        <a type="button" data-toggle="modal" style="margin-top: 8px"
                                           data-target="#myModal"><span
                                                class="glyphicon glyphicon-calendar"></span><span> ĐẶT LỊCH KHÁM</span></a>
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

<div class="row" style="position: fixed; top: 70%; right: 0px; z-index: 99999999">
    <a type="button" data-toggle="modal"  data-target="#myModal">
        <img src="/images/icon_hotline.png" style="width: 100px;" alt="Đặt lịch hoàng long"/>
    </a>
</div>

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
                <input type="text" class="form-control" id="date_" placeholder="Ngày bạn có thể tới khám">
                <textarea class="form-control" style="height: 140px" id="description_"
                          placeholder="Miêu tả triệu chứng"></textarea>

                <div class="row text-center ">
                    <button class="btn text-center schedule-btn" id="btn-make-schedule_">
                        <p class="text-center">Đặt lịch khám</p>
                    </button>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- header end -->
<?php echo $sf_content ?>
<!-- footer start -->
<!-- ================ -->
<footer id="footer">
    <!-- .subfooter start -->
    <!-- ================ -->
    <div class="subfooter" style="background: #343434">
        <div class="row content" style="margin-top: 75px; color: #ffffff">
            <div class="social-network">
                <div class="row">
                    <div class="row text-center">
                        <a href="#"><img src="/images/logo-ft.png" alt="hoàng long hospital"/></a>
                    </div>
                    <div class="row text-center" style="font-size: 23px; margin-top: 10px ">
                        <a href="https://www.facebook.com/phongkhamdakhoahoanglong/" style="color: white"><i
                                class="fa fa-facebook" style="margin-right: 10px;"></i></a>
                        <a href="https://www.youtube.com/channel/UCSY56RWgn7BsoWYcuneZJPw" style="color: white">
                            <i class="fa fa-youtube-play" style="margin-right: 10px;"></i></a>
                        <a href="https://plus.google.com/u/3/107088174740791028286?hl=vi" style="color: white"><i class="fa fa-google-plus"></i></a>
                        <a href="https://www.linkedin.com/in/hoanglongclinic/" style="color: white">
                            <i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
            </div>
            <div class="about-hoanglong">
                <div class="row">
                    <p style="font-size: 17px">
                        PHÒNG KHÁM ĐA KHOA HOÀNG LONG
                    </p>
                    <hr>
                    <p class="description">
                        Phòng khám Hoàng Long là phòng khám Đa khoa nhưng chuyên sâu về Tiêu Hóa & Gan Mật. Phòng khám
                        được sáng lập bởi giáo sư Đào Văn Long - chuyên gia hàng đầu trong lĩnh vực tiêu hóa. Đây là
                        phòng khám sở hữu dàn máy nội soi và siêu âm nội soi hiện đại và tiên tiến bậc nhất hiện nay tại
                        Việt Nam.
                    </p>
                </div>
            </div>
            <div class="contact-us">
                <p style="font-size: 18px">
                    LIÊN HỆ
                </p>
                <hr>
                <div class="row">
                    <div class="col-xs-2 no-padding">
                        <img src="/images/location.png" class="img-location" alt="location hoàng long">
                    </div>
                    <div class="col-xs-10 no-padding ">
                        <p class="text">Tầng 10, tháp VCCI <br> Số 9, Đào Duy Anh, Hà Nội</p>
                    </div>
                </div>
                <br>

                <div class="row">
                    <div class="col-xs-2 no-padding">
                        <img src="/images/clock.png" class="img-clock" alt="lịch khám hoàng long">
                    </div>
                    <div class="col-xs-10 no-padding ">
                        <p class="text">Thứ 2 - Thứ 7 <br> 7:30 - 17:30
                        </p>
                    </div>
                </div>
                <br>


                <div class="row">
                    <div class="col-xs-2 no-padding">
                        <img src="/images/call.png" class="img-call" alt="call hoàng long">
                    </div>
                    <div class="col-xs-10 no-padding ">
                        <p class="text">
                            024 628 11 331 <br>
                            Hotline: 024 628 11 337
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row copy-right text-center">
        <h6>© 2017 Hoang Long Hospital. All rights reserved.</h6>
    </div>
    <!-- .subfooter end -->

</footer>
<!-- footer end -->

<!-- JavaScript files placed at the end of the document so the pages load faster
================================================== -->
<script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>

<!-- Modernizr javascript -->
<script type="text/javascript" src="/plugins/modernizr.js"></script>

<!-- Backstretch javascript -->
<script type="text/javascript" src="/plugins/jquery.backstretch.min.js"></script>

<!-- Initialization of Plugins -->
<script type="text/javascript" src="/js/template.js"></script>
<script type="text/javascript" src="/plugins/jquery.appear.js"></script>

<!-- Custom Scripts -->

<!--Menu Scripts-->
<script type="text/javascript" src="/js/megamenu.js"></script>

<script type="text/javascript" src="/js/moment.min.js"></script>
<script type="text/javascript" src="/js/daterangepicker.js"></script>
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
                $("#fullname").addClass("alert-danger");
                is_validate = false;
            }
            if (age < 0 || age > 150) {
                $("#age").val('');
                $("#age").prop({'placeholder': 'Vui lòng nhập đúng tuổi'});
                $("#age").addClass("alert-danger");
                is_validate = false;
            }
            if (phone.length < 10 || !/\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/.test(phone)) {
                $("#phone").val('');
                $("#phone").prop({'placeholder': 'Vui lòng nhập đúng số điện thoại'});
                $("#phone").addClass("alert-danger");
                is_validate = false;
            }
            if (address.length == 0) {
                $("#address").val('');
                $("#address").prop({'placeholder': 'Vui lòng nhập đúng địa chỉ'});
                $("#address").addClass("alert-danger");
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
                    data: data,
                    success: function ($msg) {
                        swal(JSON.parse($msg).message, "", "success");
                        $('#myModal').modal('hide');
                        $("#fullname_").val("");
                        $("#age_").val("");
                        $("#phone_").val("");
                        $("#address_").val("");
                        $("#description_").val("");
                    }
                }).done(function ($msg) {

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
                $("#fullname_").addClass("alert-danger");
                is_validate = false;
            }
            if (age.length == 0 || age < 0 || age > 150) {
                $("#age_").val('');
                $("#age_").prop({'placeholder': 'Vui lòng nhập đúng tuổi'});
                $("#age_").addClass("alert-danger");
                is_validate = false;
            }
            if (phone.length < 10 || !/\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/.test(phone)) {
                $("#phone_").val('');
                $("#phone_").prop({'placeholder': 'Vui lòng nhập đúng số điện thoại'});
                $("#phone_").addClass("alert-danger");
                is_validate = false;
            }
            if (address.length == 0) {
                $("#address_").val('');
                $("#address_").prop({'placeholder': 'Vui lòng nhập đúng địa chỉ'});
                $("#address_").addClass("alert-danger");
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
                    data: data,
                    success: function ($msg) {
                        console.log("msg",$msg);
                        swal(JSON.parse($msg).message, "", "success");
                        $('#myModal').modal('hide');
                        $("#fullname_").val("");
                        $("#age_").val("");
                        $("#phone_").val("");
                        $("#address_").val("");
                        $("#description_").val("");
                    }
                }).done(function ($msg) {

                });
            });
        });
        var now = moment();
        $('#date_').daterangepicker({
            singleDatePicker: true,
            showDropdowns: true,
            minDate: now
        });
        $('#date').daterangepicker({
            singleDatePicker: true,
            showDropdowns: true,
            minDate: now
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
<!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
    (function () {
        var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
        s1.async = true;
        s1.src = 'https://embed.tawk.to/591fac068028bb7327046d4c/default';
        s1.charset = 'UTF-8';
        s1.setAttribute('crossorigin', '*');
        s0.parentNode.insertBefore(s1, s0);
    })();
</script>
<!--End of Tawk.to Script-->
</body>
</html>