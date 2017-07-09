<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Phòng khám Đa Khoa Hoàng Long: Sức khỏe là khởi nguồn của hạnh phúc</title>
    <link rel="stylesheet" href="/bootstrapm/css/bootstrap.css">
    <script type="text/javascript" src="/engine1m/jquery.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/engine1m/style.css"/>
    <link rel="stylesheet" href="/cssm/style.css">
</head>
<body>

<nav class=" phone-nav navbar navbar-default">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle text-center">
            <span class="sr-only">Hoàng Long hospital</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a href="<?php echo url_for('homepage_m', array('xteam' => 'mobile'))?>" class="navbar-brand">
            <img class="logo" src="/images/logo.png">
            <img class="text-logo" src="/images/text-logo.png">
        </a>
    </div>
    <!-- Collection of nav links, forms, and other content for toggling -->
    <div id="navbarCollapse" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Trang chủ</a></li>
            <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">Giới thiệu <b class="caret"></b></a>
                <ul class="dropdown-menu"
                    style="border: 0px ; border-radius: 0px;">
                    <?php
                    $about_us = AboutUsTable::getAboutUsMenu();
                    foreach ($about_us as $value): ?>
                        <li><a
                                href="<?php echo url_for('detail_about_us_mobile', array("idaboutus" => $value["idnews"])) ?>">
                                <p class="text-uppercase"><?php echo $value['title'] ?></p></a>
                        </li>
                    <?php endforeach; ?>
                    <?php
                    $about_us = CategoryAboutUsTable::getAllCategoryExceptRoot();
                    foreach ($about_us as $value):?>
                        <li><a
                                href="<?php echo url_for('list_about_us_mobile', array('idcategory' => $value['idcategory_about_us']))?>">
                                <p class="text-uppercase"><?php echo $value['name']?></p></a>
                        </li>
                    <?php endforeach; ?>
                    <li><a href="<?php echo url_for('doctor_mobile') ?>">
                            <p>ĐỘI NGŨ BÁC SĨ</p></a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">Dịch vụ <b class="caret"></b></a>
                <ul class="dropdown-menu"
                    style="border: 0px ; border-radius: 0px;">
                    <?php
                    $services = ServiceTable::getAllService();
                    foreach ($services as $value):?>
                        <li><a
                                href="<?php echo url_for('detail_service_mobile', array('idservice' => $value['idnews'], 'title' => $value['title']))?>">
                                <p
                                    class="text-uppercase"><?php echo $value['title']?></p></a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </li>
            <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">Tin tức <b class="caret"></b></a>
                <ul class="dropdown-menu"
                    style="border: 0px ; border-radius: 0px;">
                    <?php
                    $category_news = CategoryNewsTable::getAllCategory();
                    foreach ($category_news as $value):?>
                        <li >
                            <a href="<?php echo url_for('list_news_mobile', array('idcategory' => $value['idcategory_news'], 'name' => $value['name']))?>">
                                <p
                                    class="text-uppercase"><?php echo $value['name']?></p></a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </li>
            <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">Thư viện <b class="caret"></b></a>
                <ul class="dropdown-menu"
                    style="border: 0px ; border-radius: 0px;">
                    <li>
                        <a href="<?php echo url_for('list_gallery_mobile') ?>">
                            <p
                                class="text-uppercase">Thư viện ảnh</p></a>
                    </li>
                    <li>
                        <a href="<?php echo url_for('list_video') ?>">
                            <p
                                class="text-uppercase">Thư viện video</p></a>
                    </li>
                </ul>
            </li>
            <li><a href="<?php echo url_for('contact_mobile') ?>">Liên hệ</a></li>
        </ul>
    </div>
</nav>

<?php echo $sf_content ?>
<footer class="row">
    <div class="footer">
        <div class="row">
<!--            <div class="col-xs-6 no-padding-left left-ft">-->
<!--                <div class="row">-->
<!--                    <p class="title">-->
<!--                        Phòng khám Hoàng Long-->
<!--                    </p>-->
<!--                    <hr>-->
<!--                </div>-->
<!--                <div class="row">-->
<!--                    <h5 class="description">-->
<!--                        Phòng khám Hoàng Long là phòng khám Đa khoa nhưng chuyên sâu về Tiêu Hóa & Gan Mật. Phòng khám-->
<!--                        được sáng lập bởi giáo sư Đào Văn Long - chuyên gia hàng đầu trong lĩnh vực tiêu hóa. Đây là-->
<!--                        phòng khám sở hữu dàn máy nội soi và siêu âm nội soi hiện đại và tiên tiến bậc nhất hiện nay tại-->
<!--                        Việt Nam.-->
<!--                    </h5>-->
<!--                    <span class="icon-contact" style="float: left">-->
<!--              <i class="fa fa-facebook"></i>-->
<!--              <i class="fa fa-twitter"></i>-->
<!--              <i class="fa fa-youtube-play"></i>-->
<!--              <i class="fa fa-google-plus"></i>-->
<!--             </span>-->
<!--                </div>-->
<!--            </div>-->
            <div class="col-xs-12 no-padding right-ft">
                <div class="row">
                    <p class="title">
                        Liên hệ
                    </p>
                    <hr>
                </div>
                <div class="row list-contact">
                    <div class="row">
                        <div class="col-xs-2 no-padding">
                            <img src="/images/location.png" class="img-location">
                        </div>
                        <div class="col-xs-10 no-padding ">
                            <p class="text">Tầng 10, Tòa nhà VCCI <br> Số 9, Đào Duy Anh, Hà Nội</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-2 no-padding">
                            <img src="/images/clock.png" class="img-clock">
                        </div>
                        <div class="col-xs-10 no-padding ">
                            <p class="text">Thứ 2 - Thứ 7 <br> 07:30 - 17:30
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-2 no-padding">
                            <img src="/images/call.png" class="img-call">
                        </div>
                        <div class="col-xs-10 no-padding ">
                            <p class="text">
                                024 628 11 331 - 024 628 11 337 <br>
                                Hotline: 024 628 11 337
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
</body>
</html>