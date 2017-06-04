<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <script>
        var is_iPad = navigator.userAgent.match(/iPad/i) != null;
        if (is_iPad) {
            window.location.replace("<?php echo url_for('homepage_ip')?>");
        }
    </script>
    <?php include_http_metas() ?>
    <?php include_metas() ?>
    <?php include_title() ?>
    <link rel="shortcut icon" href="/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css"/>
    <?php include_stylesheets() ?>
    <?php include_javascripts() ?>
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
                        <img src="/images/logo.png"
                             style="margin-left: 15px; width: 60px ; height: 50px;margin-bottom: 10px; margin-top: 8px">
                        <br>
                        <img src="/images/text-logo.png" style="width: 75px; height: 26px">
                    </a>
                </div>

            </div>
            <div class="col-md-8">
                <div class="row infomation">
                    <div class="col-xs-4">
                        <div class="row">
                            <div class="col-xs-2 no-padding">
                                <img src="/images/call.png">
                            </div>
                            <div class="col-xs-10 no-padding" style="padding-left: 15px">
                                <b> CALL US NOW </b>

                                <p class="no-margin-bottom"> 04 628 11 331 - 04 628 11 337 </p>

                                <p class="no-margin-bottom"> Hotline : 04 626 00 581 </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="row">
                            <div class="col-xs-2 no-padding">
                                <img src="/images/clock.png">
                            </div>
                            <div class="col-xs-10 no-padding" style="padding-left: 20px">
                                <b> TIME OPEN </b>

                                <p class="no-margin-bottom"> MON - SAT </p>

                                <p class="no-margin-bottom"> 8:00 - 21:00 </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <div class="row">
                            <div class="col-xs-2 no-padding">
                                <img class="icon-location" src="/images/location.png">
                            </div>
                            <div class="col-xs-10 no-padding">
                                <b> OUR LOCATION </b>

                                <p class="no-margin-bottom"> 10th floor, VCCI building <br>9 Dao Duy Anh Str. Ha Noi
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
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">GIỚI THIỆU <span
                                                class="caret"></span></a>
                                        <ul class="  dropdown-menu mega-dropdown-menu no-padding"
                                            style="border: 0px ; border-radius: 0px;">
                                            <li class="col-xs-3 no-padding"><p>GIỚI THIỆU CHUNG</p></li>
                                            <li class="col-xs-3 no-padding"><p>CƠ SỞ HẠ TẦNG</p></li>
                                            <li class="col-xs-3 no-padding"><a href="<?php echo url_for('doctor') ?>">
                                                    <p>ĐỘI NGŨ BÁC SĨ</p></a></li>
                                            <li class="col-xs-3 no-padding"><p>BÁO CHÍ</p></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dịch vụ<span
                                                class="caret"></span></a>
                                        <ul class="  dropdown-menu mega-dropdown-menu no-padding"
                                            style="border: 0px ; border-radius: 0px;">
                                            <li class="col-xs-3 no-padding"><p>Nội soi chẩn đoán bệnh</p></li>
                                            <li class="col-xs-3 no-padding"><p>Nội soi can thiệp</p></li>
                                            <li class="col-xs-3 no-padding"><p>Chuẩn đoán hình ảnh</p></li>
                                            <li class="col-xs-3 no-padding"><p>Thăm dò chức năng</p></li>
                                            <li class="col-xs-3 no-padding"><p>Xét nghiệm</p></li>
                                            <li class="col-xs-3 no-padding"><p>Liên kết bảo hiểm</p></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-dropdown dropdown-toggle">
                                        <a href="<?php echo url_for('list_news') ?>"><p>Tin tức <span
                                                    class="caret" data-toggle="dropdown"></span></p></a>
                                        <ul class="  dropdown-menu mega-dropdown-menu no-padding"
                                            style="border: 0px ; border-radius: 0px;">
                                            <li class="col-xs-3 no-padding"><p>Tin tức chuyên môn</p></li>
                                            <li class="col-xs-3 no-padding"><p>Tin tức y khoa</p></li>
                                            <li class="col-xs-3 no-padding"><p>Hội thảo chuyên ngành</p></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Thư viện <span
                                                class="caret"></span></a>
                                        <ul class="  dropdown-menu mega-dropdown-menu no-padding"
                                            style="border: 0px ; border-radius: 0px;">
                                            <li class="col-xs-3 no-padding"><p>Phòng khám</p></li>
                                            <li class="col-xs-3 no-padding"><p>Sự kiện</p></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-dropdown">
                                        <a href="<?php echo url_for('contact') ?>">Liên hệ </a>
                                    </li>
                                </ul>

                                <ul class="nav navbar-nav navbar-right">
                                    <li style="background-color: #86a92b; "><a type="button" data-toggle="modal"
                                                                               data-target="#myModal"><span> SCHEDULE</span></a>
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
                <input type="text" class="form-control" id="fullname_" placeholder="Full Name">
                <input type="text" class="form-control" id="age_" placeholder="Age">
                <input type="number" class="form-control" id="phone_" placeholder="Phone Number">
                <input type="text" class="form-control" id="date_" placeholder="Date">
                <textarea class="form-control" style="height: 140px" id="description_"
                          placeholder="Description"></textarea>

                <div class="row text-center ">
                    <button class="btn text-center schedule-btn" id="btn-make-schedule_">
                        <p class="text-center">SCHEDULE</p>
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
                    <p style="font-size: 18px">
                        SOCIAL NETWORK
                    </p>
                    <hr>
                    <div class="description">
                        <div class="row">
                            <div class="col-xs-4">
                                <img src="/images/full-logo.png" alt="hoanglonghospital.vn"
                                     style="width: 100px; margin: 0px auto;"
                                     class="img img-responsive">
                            </div>
                            <div class="col-xs-2">
                                <i class="fa fa-facebook-official"></i>
                            </div>
                            <div class="col-xs-2">
                                <i class="fa fa-youtube"></i>
                            </div>
                            <div class="col-xs-2">
                                <i class="fa fa-google-plus-square"></i>
                            </div>
                            <div class="col-xs-2">
                                <i class="fa fa-instagram"></i>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="about-hoanglong">
                <div class="row">
                    <p style="font-size: 18px">
                        HOANG LONG CLINIC
                    </p>
                    <hr>
                    <p class="description">
                        Phòng khám Hoàng Long là phòng khám Đa khoa nhưng chuyên sâu về Tiêu Hóa & Gan Mật. Phòng khám được sáng lập bởi giáo sư Đào Văn Long - chuyên gia hàng đầu trong lĩnh vực tiêu hóa. Đây là phòng khám sở hữu dàn máy nội soi và siêu âm nội soi hiện đại và tiên tiến bậc nhất hiện nay tại Việt Nam.
                    </p>
                </div>
            </div>
            <div class="contact-us">
                <p style="font-size: 18px">
                    CONTACT US
                </p>
                <hr>
                <div class="row">
                    <div class="col-xs-2 no-padding">
                        <img src="/images/location.png" class="img-location">
                    </div>
                    <div class="col-xs-10 no-padding ">
                        <p class="text">10th floor, VCCI building <br> 9 Dao Duy Anh Str. Ha Noi</p>
                    </div>
                </div>
                <br>

                <div class="row">
                    <div class="col-xs-2 no-padding">
                        <img src="/images/clock.png" class="img-clock">
                    </div>
                    <div class="col-xs-10 no-padding ">
                        <p class="text">MON - SAT <br> 08:00 - 21:00
                        </p>
                    </div>
                </div>
                <br>


                <div class="row">
                    <div class="col-xs-2 no-padding">
                        <img src="/images/call.png" class="img-call">
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

<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<script>
    $(document).ready(function () {
        $('#btn-make-schedule').click(function () {
            swal({
                title: "Đặt lịch hẹn",
                text: "Bạn có chắc chắn muốn đặt lịch hẹn không?",
                type: "info",
                showCancelButton: true,
                closeOnConfirm: false,
                showLoaderOnConfirm: true
            }, function () {
                var fullname = $("#fullname").val();
                var age = $("#age").val();
                var phone = $("#phone").val();
                var address = $("#address").val();
                var date = $("#date").val();
                var description = $("#description").val();
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
            swal({
                title: "Đặt lịch hẹn",
                text: "Bạn có chắc chắn muốn đặt lịch hẹn không?",
                type: "info",
                showCancelButton: true,
                closeOnConfirm: false,
                showLoaderOnConfirm: true
            }, function () {
                var fullname = $("#fullname_").val();
                var age = $("#age_").val();
                var phone = $("#phone_").val();
                var address = $("#address_").val();
                var date = $("#date_").val();
                var description = $("#description_").val();
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
</script>
</body>
</html>