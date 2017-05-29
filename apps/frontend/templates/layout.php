<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
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
                                <ul class="nav navbar-nav navbar-left menu">
                                    <li class="dropdown mega-dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Giới thiệu <span
                                                class="caret"></span></a>
                                        <ul class="dropdown-menu mega-dropdown-menu">
                                            <li class="col-sm-3">Giới thiệu chung</li>
                                            <li class="col-sm-3">Cơ sở hạ tầng</li>
                                            <li class="col-sm-3"><a href="<?php echo url_for('doctor') ?>">Đội ngũ bác
                                                    sĩ</a></li>
                                            <li class="col-sm-3">Báo chí</li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dịch vụ<span
                                                class="caret"></span></a>
                                        <ul class="dropdown-menu mega-dropdown-menu">
                                            <li class="col-sm-3">Nội soi chẩn đoán bệnh</li>
                                            <li class="col-sm-3">Nội soi can thiệp</li>
                                            <li class="col-sm-3">Chuẩn đoán hình ảnh</li>
                                            <li class="col-sm-3">Thăm dò chức năng</li>
                                            <li class="col-sm-6">Xét nghiệm</li>
                                            <li class="col-sm-6">Liên kết bảo hiểm</li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-dropdown dropdown-toggle">
                                        <a href="<?php echo url_for('list_news') ?>">Tin tức <span
                                                class="caret" data-toggle="dropdown"></span></a>
                                        <ul class="dropdown-menu mega-dropdown-menu">
                                            <li class="col-sm-4">Tin tức chuyên môn</li>
                                            <li class="col-sm-4">Tin tức y khoa</li>
                                            <li class="col-sm-4">Hội thảo chuyên ngành</li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Thư viện <span
                                                class="caret"></span></a>
                                        <ul class="dropdown-menu mega-dropdown-menu">
                                            <li class="col-sm-6">Phòng khám</li>
                                            <li class="col-sm-6">Sự kiện</li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-dropdown">
                                        <a href="<?php echo url_for('contact') ?>">Liên hệ </a>
                                    </li>
                                </ul>

                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="#banner"><span> SCHEDULE</span></a></li>
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
    <div class="subfooter" style="background: #343434">
        <div class="row content" style="margin-top: 75px; color: #ffffff">
            <div class="map">
                <img src="/images/map.jpg">
            </div>
            <div class="about-hoanglong">
                <div class="row">
                    <p style="font-size: 18px">
                        HOANG LONG CLINIC
                    </p>
                    <hr>
                    <p class="description">
                        Hoang Long Clinic là phòng khám chuyên điều trị các liên quan tới đường tiêu hóa, …
                        Là một trong những phòng khám có uy tín và danh tiếng hiện nay tại TP Hà Nội.
                        Phòng khám luôn áp dụng những thành quả của khoa học kỹ thuật y khoa tiên tiến ở trong nước cũng
                        như trên thế giới.
                        Phòng khám là nơi quy tụ nhiều chuyên gia, bác sĩ giỏi về lĩnh vực y tế chuyên môn đầu ngành.
                    </p>
                </div>
                <div class="row icon-contact text-center" style="font-size: 20px">
                    <div class="fb" style="width: 30px;float: left;"><p
                            style="width: 30px; height: 30px ; vertical-align: middle; "><i class="fa fa-facebook"></i>
                        </p></div>
                    <div class="tw" style="width: 30px;float: left;"><p
                            style="width: 30px; height: 30px ; vertical-align: middle; "><i class="fa fa-twitter"></i>
                        </p></div>
                    <div class="yt" style="width: 30px;float: left;"><p
                            style="width: 30px; height: 30px ; vertical-align: middle; "><i
                                class="fa fa-youtube-play"></i></p></div>
                    <div class="g" style="width: 30px;float: left;"><p
                            style="width: 30px; height: 30px ; vertical-align: middle; "><i
                                class="fa fa-google-plus-square"></i></p></div>
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
    <!-- .subfooter end -->

</footer>
<!-- footer end -->

<!-- JavaScript files placed at the end of the document so the pages load faster
================================================== -->
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

<!-- Modernizr javascript -->
<script type="text/javascript" src="plugins/modernizr.js"></script>

<!-- Backstretch javascript -->
<script type="text/javascript" src="plugins/jquery.backstretch.min.js"></script>

<!-- Initialization of Plugins -->
<script type="text/javascript" src="js/template.js"></script>
<script type="text/javascript" src="plugins/jquery.appear.js"></script>

<!-- Custom Scripts -->

<!--Menu Scripts-->
<script type="text/javascript" src="js/megamenu.js"></script>

<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<script>
    $(document).ready(function () {
        $('#btn-make-schedule').click(function () {
            var fullname = $("#fullname").val();
            var age = $("#age").val();
            var phone = $("#phone").val();
            var date = $("#date").val();
            var description = $("#description").val();
            var data = {
                fullname: fullname,
                age: age,
                phone: phone,
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
        var now = moment();
        $('#date').daterangepicker({
            singleDatePicker: true,
            showDropdowns: true,
            minDate: now
        },
    });
</script>
</body>
</html>