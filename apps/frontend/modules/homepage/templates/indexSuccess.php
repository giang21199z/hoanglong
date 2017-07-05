﻿<!-- banner start -->
<!-- ================ -->
<div id="banner" class="banner">
    <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
    <div id="wowslider-container1">
        <div class="ws_images">
            <ul>
                <li><img src="/data1/images/<?php echo $slides[0]['images'] ?>" alt="hoanglonghospital.vn" title=""
                         id="wows1_0"/></li>
                <li><img src="/data1/images/<?php echo $slides[1]['images'] ?>" alt="hoanglonghospital.vn" title=""
                         id="wows1_1"/></li>
                <li><img src="/data1/images/<?php echo $slides[2]['images'] ?>" alt="hoanglonghospital.vn" title=""
                         id="wows1_2"/></li>
            </ul>
        </div>
    </div>
    <script type="text/javascript" src="/engine1/wowslider.js"></script>
    <script type="text/javascript" src="/engine1/script.js"></script>
</div>
<!-- banner end -->

<!-- section start -->
<!-- ================ -->
<div class="section   ">
    <div class="container">
        <div class="row" style="margin-bottom: 50px">
            <a style="text-decoration: none"
               href="<?php echo url_for('detail_about_us', array('idaboutus' => $about_us->getIdnews(), 'title' => $about_us->getTitle())) ?>">
                <div class="col-md-6">
                    <h2 class="no-margin-bottom" style="font-size: 42px ; color: #4b4b4b;letter-spacing: 2px">
                        GIỚI THIỆU CHUNG
                    </h2>
                    <a style="text-decoration: none"
                       href="<?php echo url_for('detail_about_us', array('idaboutus' => $about_us->getIdnews(), 'title' => $about_us->getTitle())) ?>">
                        <!--                    <p style=" margin-top: 10px; font-size: 16px ; color: #85a92a ;padding-bottom: 20px;">-->
                        <!--                        --><?php //echo $about_us->getTitle() ?>
                        <!--                    </p>-->
                    </a>
                    <hr style="width: 342px;margin-left: 0px; border-bottom-color: #d2d2d2">
                    <p style="line-height: 30px; margin-top: 40px">
                        <?php echo $about_us->getSummary() ?>
                    </p>
                </div>
            </a>

            <div class="col-md-6">
                <img class="img-responsive" src="/images/image_about.PNG">
            </div>
        </div>
    </div>
</div>


<div class="section   " style="background: #f5f5f5">
    <div class="container" style="margin-bottom: 50px">
        <div class="row">
            <h2 class="no-margin-bottom" style="font-size: 42px ; color: #4b4b4b;">
                <?php echo sfConfig::get('app_why_choose_us') ?>
            </h2>

            <!--            <p style="font-size: 16px ; color: #85a92a ; margin-top: 10px;margin-bottom: 30px;">-->
            <!--                ĐIỂM MẠNH CỦA CHÚNG TÔI-->
            <!--            </p>-->
            <hr style="border-bottom-color: #cacaca; width: 342px ; margin-left: 0px ; margin-top: 10px">

        </div>
        <div class="row" style=" margin-top: 30px">
            <?php $count = 0;
            foreach ($why_choose_us as $value): ?>
                <a href="<?php echo $count == 0 ? url_for('doctor') : url_for('detail_news', array('idnews' => $value['idnews'], 'title' => $value['title'])) ?>"
                   style="color: #000000">
                    <div
                        class="col-md-4 no-padding-left" <?php if ($count++ >= 3) { ?> style="margin-top: 40px; height: auto" <?php } else { ?> style="height: 220px;" <?php } ?>>
                        <div class="row">
                            <img src="/uploads/news/<?php echo $value['images'] ?>" class="img img-responsive "
                                 style="height: 120px; margin: 0px auto; border-radius: 5px; box-shadow: 7px 7px 14px;">
                        </div>
                        <div class="row">
                            <p style="font-size: 18px ; margin-top: 30px ; color:#85a92a; text-align: center">
                                <?php echo $value['title'] ?>
                            </p>

                            <!--                        <p>-->
                            <!--                            --><?php //echo VtHelper::truncate($value['summary'], 100) ?>
                            <!--                        </p>-->
                            <!--                        <button style="background: #ffffff; border:  1px solid #85a92a">-->
                            <!--                            <a href="-->
                            <?php //echo url_for('detail_news', array('idnews' => $value['idnews'], 'title' => $value['title'])) ?><!--">-->
                            <!--                                <p class="no-margin" style="color: #85a92a ; font-size: 10px;">-->
                            <!--                                    READ MORE-->
                            <!--                                </p>-->
                            <!--                            </a>-->
                            <!--                        </button>-->
                        </div>
                    </div>
                </a>
            <?php endforeach ?>
        </div>
    </div>
</div>


<div class="section   ">
    <div class="container">
        <div class="row infomation_doctor" style="/*margin-top: 40px*/">
            <h2 class="no-margin-bottom" style="font-size: 42px ; color: #4b4b4b ; letter-spacing: 2px">
                <a href="<?php echo url_for('doctor') ?>"
                   style="color: #000000; text-decoration: none"><?php echo sfConfig::get('app_our_doctors') ?></a>
            </h2>

            <!--            <p style="font-size: 16px ; color: #85a92a ; margin-top: 10px;margin-bottom: 30px;">-->
            <!--                BÁC SĨ NHƯ MẸ HIỀN-->
            <!--            </p>-->
            <hr style="border-bottom-color: #cacaca; width: 342px ; margin-left: 0px ; margin-top: 10px">
        </div>
        <div class="row">
            <?php foreach ($doctor as $value): ?>
                <div class="col-xs-3" style="width: 20%;">
                    <div class="row">
                        <div class="col-xs-10 col-xs-offset-1">
                            <img src="/uploads/doctors/<?php echo $value['avatar'] ?>" class="img-circle img-responsive"
                                 style="height: auto">
                        </div>
                    </div>
                    <div class="row text-center">
                        <p class=" no-margin" style="color: #85a92a ; margin-top: 10px ; font-size: 17px">
                            <?php echo $value['name'] ?>
                        </p>

                        <p style="color: #4b4b4b">
                            <?php echo $value['degree'] ?>
                        </p>

                        <!--                        <p>-->
                        <!--                            --><?php //echo VtHelper::truncate($value['summary'], 95) ?>
                        <!--                        </p>-->
                        <button style="background: #ffffff; border:  1px solid #85a92a">
                            <a href="<?php echo url_for('detail_doctor', array("iddoctor" => $value['iddoctor'], "name" => $value['name'])) ?>">
                                <p class="no-margin" style="color: #85a92a ; font-size: 10px;">
                                    XEM THÊM
                                </p>
                            </a>
                        </button>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <!--        <div class="row text-center" style="margin-top: 25px; margin-top: 25px">-->
        <!--            --><?php //for ($i = 1; $i < $doctor_pages / 4 + 1; $i++): ?>
        <!--                <button style="background: #85a92a; border:  1px solid #85a92a;margin: 3px">-->
        <!--                    <p class="no-margin" style="color: #ffffff ; font-size: 12px;">-->
        <!--                        --><?php //echo $i ?>
        <!--                    </p>-->
        <!--                </button>-->
        <!--            --><?php //endfor ?>
        <!--        </div>-->

    </div>
</div>

<div class="section   ">
    <div class="container">
        <a href="<?php echo url_for('list_gallery', array('xteam' => 'hoanglong')) ?>" style="color: black; text-decoration: none;">
            <div class="row" style="/*margin-top: 40px*/">
                <h2 class="no-margin-bottom" style="font-size: 42px ; color: #4b4b4b ; letter-spacing: 2px">
                    Thư viện
                </h2>

                <p style="font-size: 16px ; color: #85a92a ; margin-top: 10px;margin-bottom: 30px;">
                    ẢNH NỔI BẬT
                </p>
                <hr style="border-bottom-color: #cacaca; width: 342px ; margin-left: 0px ; margin-top: 10px">
            </div>
        </a>

        <div class="row">

            <script type="text/javascript">
                $(document).ready(function () {
                    var carousel = $("#carousel").waterwheelCarousel({
                        flankingItems: 3,
                        movingToCenter: function ($item) {
                            $('#callback-output').prepend('movingToCenter: ' + $item.attr('id') + '<br/>');
                        },
                        movedToCenter: function ($item) {
                            $('#callback-output').prepend('movedToCenter: ' + $item.attr('id') + '<br/>');
                        },
                        movingFromCenter: function ($item) {
                            $('#callback-output').prepend('movingFromCenter: ' + $item.attr('id') + '<br/>');
                        },
                        movedFromCenter: function ($item) {
                            $('#callback-output').prepend('movedFromCenter: ' + $item.attr('id') + '<br/>');
                        },
                        clickedCenter: function ($item) {
                            $('#callback-output').prepend('clickedCenter: ' + $item.attr('id') + '<br/>');
                        }
                    });

                    $('#prev').bind('click', function () {
                        carousel.prev();
                        return false
                    });

                    $('#next').bind('click', function () {
                        carousel.next();
                        return false;
                    });

                    $('#reload').bind('click', function () {
                        newOptions = eval("(" + $('#newoptions').val() + ")");
                        carousel.reload(newOptions);
                        return false;
                    });

                });
            </script>
            <style type="text/css">

                #carousel {
                    width: 1140px;
                    height: 300px;
                    margin-top: 80px;
                }

                #carousel img {
                    visibility: hidden; /* hide images until carousel can handle them */
                    cursor: pointer; /* otherwise it's not as obvious items can be clicked */
                }

                .split-left {
                    width: 50px;
                    float: left;
                }

                .split-right {
                    width: 50px;
                    float: left;
                    margin-left: 10px;
                }

                #callback-output {
                    height: 250px;
                    overflow: scroll;
                }

                textarea#newoptions {
                    width: 430px;
                }
            </style>
            <div id="carousel">
                <a href="#"><img src="/images/gallery.jpg" id="item-1"/></a>
                <a href="#"><img src="/images/gallery2.jpg" id="item-2"/></a>
                <a href="#"><img src="/images/gallery3.jpg" id="item-3"/></a>
                <a href="#"><img src="/images/gallery4.jpg" id="item-4"/></a>
                <a href="#"><img src="/images/gallery5.jpg" id="item-5"/></a>

            </div>
        </div>
    </div>
</div>


<div class="section   ">
    <div class="container">
        <div class="row" style="margin-top: 40px">
            <h2 class="no-margin-bottom" style="font-size: 42px ; color: #4b4b4b ; letter-spacing: 2px">
                Phản hồi từ khách hàng
            </h2>
            <!---->
            <!--            <p style="font-size: 16px ; color: #85a92a ; margin-top: 10px;margin-bottom: 30px;">-->
            <!--                PHẢN HỒI TỪ KHÁCH HÀNG-->
            <!--            </p>-->
            <hr style="border-bottom-color: #cacaca; width: 342px ; margin-left: 0px ; margin-top: 10px">
        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <?php foreach ($feed_backs as $value): ?>
                    <div class="col-xs-4 no-padding-right">
                        <img src="/uploads/feedback/<?php echo $value['avatar'] ?>"
                             class="img-circle img-responsive customer-avatar"
                             id="customer-avatar-id-<?php echo $value['idfeed_back'] ?>"
                             style="height: 95px; width: 95px">
                    </div>
                <?php endforeach ?>
            </div>
        </div>
        <br><br>

        <div class="row" style="margin-left: 50px; margin-right: 50px">
            <div class="col-xs-1 no-padding" style="width: 5%">
                <img src="/images/keo_mo.png" style="margin-top: 5px">
            </div>
            <?php foreach ($feed_backs as $value): ?>
                <div class="col-xs-10 no-padding text-center idfeed_back"
                     id="idfeed_back-<?php echo $value['idfeed_back'] ?>">
                    <p style="font-size: 13px ;line-height: 27px">
                        <?php echo $value['content'] ?>
                    </p>

                    <p class="no-margin" style="font-size: 16px ; color: #85a92a ; text-transform: uppercase">
                        <b><?php echo $value['name_customer'] ?></b>
                    </p>

                    <p style="font-size: 13px">
                        <?php echo $value['address'] ?>
                    </p>
                </div>
            <?php endforeach ?>
            <div class="col-xs-1 no-padding" style="width: 5%">
                <img src="/images/keo_dong.png" style="margin-top: 5px">
            </div>
        </div>
    </div>
</div>
<div class="section   ">
    <div class="container">
        <div class="row" style="/*margin-top: 40px*/">
            <h2 class="no-margin-bottom"
                style="font-size: 42px ; color: #4b4b4b ; letter-spacing: 2px; margin-bottom: 30px;">
                Tin tức mới nhất
            </h2>
            <!---->
            <!--            <p style="font-size: 16px ; color: #85a92a ; margin-top: 10px;margin-bottom: 30px;">-->
            <!--                TIN TỨC SỰ KIỆN, Y KHOA, HỘI THẢO, CHUYÊN MÔN-->
            <!--            </p>-->
            <!--            <hr style="border-bottom-color: #cacaca; width: 342px ; margin-left: 0px ; margin-top: 10px">-->
        </div>
        <div class="row">
            <?php foreach ($news as $value): ?>
                <div class="col-xs-3 no-padding-right">
                    <img src="/uploads/news/<?php echo $value['images'] ?>" class=" img-responsive"
                         style="height: 245px; width: 285px">

                    <div class="row" style="margin-left: 5px">
                        <p class="no-margin"
                           style="font-size: 16px ; color: #85a92a ; margin-top: 15px ; height: 50px;">
                            <?php echo VtHelper::truncate($value['title'], 100) ?>
                        </p>

                        <p style="font-size: 14px">
                            <?php echo $value['updated_at'] ?>
                        </p>

                        <!--                        <p style="font-size: 14px">-->
                        <!--                            --><?php //echo VtHelper::truncate($value['summary'], 100) ?>
                        <!--                        </p>-->
                        <button style="background: #ffffff; border:  1px solid #85a92a">
                            <a href="<?php echo url_for('detail_news', array('idnews' => $value['idnews'], 'title' => $value['title'])) ?>">
                                <p class="no-margin" style="color: #85a92a ; font-size: 10px;">
                                    XEM THÊM
                                </p>
                            </a>
                        </button>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
        <br>

        <!--        <div class="row text-center">-->
        <!--            <button style="background: #85a92a; border:  1px solid #85a92a;margin: 3px">-->
        <!--                <p class="no-margin" style="color: #ffffff ; font-size: 12px;">-->
        <!--                    1-->
        <!--                </p>-->
        <!--            </button>-->
        <!--            <button style="background: #ffffff; border:  1px solid #85a92a ;margin: 3px">-->
        <!--                <p class="no-margin" style="color: #85a92a ; font-size: 12px;">-->
        <!--                    2-->
        <!--                </p>-->
        <!--            </button>-->
        <!--            <button style="background: #ffffff; border:  1px solid #85a92a;margin: 3px">-->
        <!--                <p class="no-margin" style="color: #85a92a ; font-size: 12px;">-->
        <!--                    3-->
        <!--                </p>-->
        <!--            </button>-->
        <!--            <button style="background: #ffffff; border:  1px solid #85a92a;margin: 3px">-->
        <!--                <p class="no-margin" style="color: #85a92a ; font-size: 12px;">-->
        <!--                    4-->
        <!--                </p>-->
        <!--            </button>-->
        <!--            <button style="background: #ffffff; border:  1px solid #85a92a;margin: 3px">-->
        <!--                <p class="no-margin" style="color: #85a92a ; font-size: 12px;">-->
        <!--                    5-->
        <!--                </p>-->
        <!--            </button>-->
        <!--        </div>-->
    </div>
</div>

<!-- section end -->
<script>
    $(document).ready(function () {
        $(".mega-dropdown").removeClass('menu-active');
        $(".mega-dropdown:nth-child(1)").addClass('menu-active');
        $(".idfeed_back:nth-child(2)").hide();
        $(".idfeed_back:nth-child(3)").hide();
        $(".customer-avatar").click(function () {
            var id = $(this).attr('id').split("-")[3];
            $('.idfeed_back').hide();
            $("#idfeed_back-" + id).show();
        });
    });
</script>