<!-- banner start -->
<!-- ================ -->
<div id="banner" class="banner">
    <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
    <div id="wowslider-container1">
        <div class="ws_images">
            <ul>
                <li><img src="data1/images/1911920.jpg" alt="191-1920" title="" id="wows1_0"/></li>
                <li><a href="#"><img src="data1/images/sinhvienit.netanhthiennhienfullhd1.jpg"
                                                           alt="hoanglonghospital.vn"
                                                           title=""
                                                           id="wows1_1"/></a></li>
                <li><img src="data1/images/ti_xung.jpg" alt="hoanglonghospital.vn" title="" id="wows1_2"/></li>
            </ul>
        </div>
    </div>
    <script type="text/javascript" src="engine1/wowslider.js"></script>
    <script type="text/javascript" src="engine1/script.js"></script>
</div>
<!-- banner end -->

<!-- section start -->
<!-- ================ -->
<div class="section   "  >
    <div class="container">
        <div class="row" style="margin-bottom: 50px">
            <div class="col-md-6">
                <h2 class="no-margin-bottom" style="font-size: 42px ; color: #4b4b4b;letter-spacing: 2px">
                    About Clinic
                </h2>

                <p style=" margin-top: 10px; font-size: 16px ; color: #85a92a ;padding-bottom: 20px;">
                    <?php echo $about_us->getTitle() ?>
                    </p>
                <hr style="width: 342px;margin-left: 0px; border-bottom-color: #d2d2d2">
                <p style="line-height: 30px; margin-top: 40px">
                    <?php echo $about_us->getSummary() ?>
                </p>
            </div>
            <div class="col-md-6">
                <img class="img-responsive" src="images/image_about.PNG">
            </div>
        </div>
    </div>
</div>


<div class="section   "   style="background: #f5f5f5">
    <div class="container" style="margin-bottom: 50px">
        <div class="row">
            <h2 class="no-margin-bottom" style="font-size: 42px ; color: #4b4b4b">
                Why Chose Us ?
            </h2>

            <p style="font-size: 16px ; color: #85a92a ; margin-top: 10px;margin-bottom: 30px;">
                OUR STRENGTHS
            </p>
            <hr style="border-bottom-color: #cacaca; width: 342px ; margin-left: 0px ; margin-top: 10px">

        </div>
        <div class="row" style=" margin-top: 30px">
            <?php foreach($why_choose_us as $value):?>
            <div class="col-md-4 no-padding-left">
                <div class="row">
                    <img src="/uploads/news/<?php echo $value['images']?>" class="img-responsive" style="height: 375px">
                </div>
                <div class="row">
                    <p style="font-size: 18px ; margin-top: 30px ; color:#85a92a">
                        <?php echo VtHelper::truncate($value['title'])?>
                    </p>

                    <p>
                        <?php echo VtHelper::truncate($value['summary'],100)?>
                    </p>
                    <button style="background: #ffffff; border:  1px solid #85a92a">
                        <p class="no-margin" style="color: #85a92a ; font-size: 10px;">
                            READ MORE
                        </p>
                    </button>
                </div>
            </div>
            <?php endforeach?>
        </div>
    </div>
</div>


<div class="section   "  >
    <div class="container">
        <div class="row" style="margin-top: 40px">
            <h2 class="no-margin-bottom" style="font-size: 42px ; color: #4b4b4b ; letter-spacing: 2px">
                Our Doctor
            </h2>

            <p style="font-size: 16px ; color: #85a92a ; margin-top: 10px;margin-bottom: 30px;">
                DOCTOR IS GENTLE MOTHER
            </p>
            <hr style="border-bottom-color: #cacaca; width: 342px ; margin-left: 0px ; margin-top: 10px">
        </div>
        <div class="row">
            <?php foreach ($doctor as $value): ?>
                <div class="col-xs-3">
                    <div class="row">
                        <div class="col-xs-10 col-xs-offset-1">
                            <img src="/uploads/doctors/<?php echo $value['avatar'] ?>" class="img-circle img-responsive"
                                 style="height: 190px">
                        </div>
                    </div>
                    <div class="row text-center">
                        <p class=" no-margin" style="color: #85a92a ; margin-top: 10px ; font-size: 17px">
                            <?php echo $value['name'] ?>
                        </p>

                        <p style="color: #4b4b4b">
                            <?php echo $value['degree'] ?>
                        </p>

                        <p>
                            <?php echo VtHelper::truncate($value['summary'], 95) ?>
                        </p>
                        <button style="background: #ffffff; border:  1px solid #85a92a">
                            <p class="no-margin" style="color: #85a92a ; font-size: 10px;">
                                READ MORE
                            </p>
                        </button>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <div class="row text-center" style="margin-top: 25px; margin-top: 25px">
            <button style="background: #85a92a; border:  1px solid #85a92a;margin: 3px">
                <p class="no-margin" style="color: #ffffff ; font-size: 12px;">
                    1
                </p>
            </button>
            <button style="background: #ffffff; border:  1px solid #85a92a ;margin: 3px">
                <p class="no-margin" style="color: #85a92a ; font-size: 12px;">
                    2
                </p>
            </button>
            <button style="background: #ffffff; border:  1px solid #85a92a;margin: 3px">
                <p class="no-margin" style="color: #85a92a ; font-size: 12px;">
                    3
                </p>
            </button>
            <button style="background: #ffffff; border:  1px solid #85a92a;margin: 3px">
                <p class="no-margin" style="color: #85a92a ; font-size: 12px;">
                    4
                </p>
            </button>
            <button style="background: #ffffff; border:  1px solid #85a92a;margin: 3px">
                <p class="no-margin" style="color: #85a92a ; font-size: 12px;">
                    5
                </p>
            </button>
        </div>

    </div>
</div>

<div class="section   "  >
    <div class="container">
        <div class="row" style="margin-top: 40px">
            <h2 class="no-margin-bottom" style="font-size: 42px ; color: #4b4b4b ; letter-spacing: 2px">
                Gallery
            </h2>

            <p style="font-size: 16px ; color: #85a92a ; margin-top: 10px;margin-bottom: 30px;">
                THE MOMENTS OF THE CLINIC
            </p>
            <hr style="border-bottom-color: #cacaca; width: 342px ; margin-left: 0px ; margin-top: 10px">
        </div>
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
                    width:1140px;
                    height:300px;
                    position:relative;
                }
                #carousel img {
                    visibility:hidden; /* hide images until carousel can handle them */
                    cursor:pointer; /* otherwise it's not as obvious items can be clicked */
                }

                .split-left {
                    width:50px;
                    float:left;
                }
                .split-right {
                    width:50px;
                    float:left;
                    margin-left:10px;
                }
                #callback-output {
                    height:250px;
                    overflow:scroll;
                }
                textarea#newoptions {
                    width:430px;
                }
            </style>
            <div id="carousel">
                <a href="#"><img src="/images/gallery.jpg" id="item-1" /></a>
                <a href="#"><img src="/images/gallery2.jpg" id="item-2" /></a>
                <a href="#"><img src="/images/gallery3.jpg" id="item-3" /></a>
                <a href="#"><img src="/images/gallery4.jpg" id="item-4" /></a>
                <a href="#"><img src="/images/gallery5.jpg" id="item-5" /></a>

            </div>
        </div>
    </div>
</div>


<div class="section   "  >
    <div class="container">
        <div class="row" style="margin-top: 40px">
            <h2 class="no-margin-bottom" style="font-size: 42px ; color: #4b4b4b ; letter-spacing: 2px">
                What Customers Say
            </h2>

            <p style="font-size: 16px ; color: #85a92a ; margin-top: 10px;margin-bottom: 30px;">
                FEED OF CUSTOMER
            </p>
            <hr style="border-bottom-color: #cacaca; width: 342px ; margin-left: 0px ; margin-top: 10px">
        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <?php foreach ($feed_backs as $value): ?>
                    <div class="col-xs-4 no-padding-right">
                        <img src="/uploads/feedback/<?php echo $value['avatar']?>" class="img-circle img-responsive"
                             style="height: 95px; width: 95px">
                    </div>
                <?php endforeach ?>
            </div>
        </div>
        <br><br>

        <div class="row" style="margin-left: 50px; margin-right: 50px">
            <div class="col-xs-1 no-padding" style="width: 5%">
                <img src="images/keo_mo.png" style="margin-top: 5px">
            </div>
            <div class="col-xs-10 no-padding text-center">
                <p style="font-size: 13px ;line-height: 27px">
                    <?php echo $feed_backs[0]['content']?>
                </p>

                <p class="no-margin" style="font-size: 16px ; color: #85a92a ;">
                    <?php echo $feed_backs[0]['name_customer']?>
                </p>

                <p style="font-size: 13px">
                    <?php echo $feed_backs[0]['address']?>
                </p>
            </div>
            <div class="col-xs-1 no-padding" style="width: 5%">
                <img src="images/keo_dong.png" style="margin-top: 5px">
            </div>
        </div>

    </div>
</div>
<div class="section   "  >
    <div class="container">
        <div class="row" style="margin-top: 40px">
            <h2 class="no-margin-bottom" style="font-size: 42px ; color: #4b4b4b ; letter-spacing: 2px">
                Latest News
            </h2>

            <p style="font-size: 16px ; color: #85a92a ; margin-top: 10px;margin-bottom: 30px;">
                NEWS OF HOANG LONG CLINIC, MEDICAL ...
            </p>
            <hr style="border-bottom-color: #cacaca; width: 342px ; margin-left: 0px ; margin-top: 10px">
        </div>
        <div class="row">
            <?php foreach($news as $value):?>
            <div class="col-xs-3 no-padding-right">
                <img src="uploads/news/<?php echo $value['images']?>" class=" img-responsive" style="height: 245px; width: 285px">

                <div class="row" style="margin-left: 5px">
                    <p class="no-margin" style="font-size: 16px ; color: #85a92a ; margin-top: 15px ;">
                        <?php echo VtHelper::truncate($value['title'],50)?>
                    </p>

                    <p style="font-size: 14px">
                        <?php echo $value['updated_at']?>
                    </p>

                    <p style="font-size: 14px">
                        <?php echo VtHelper::truncate($value['summary'],100)?>
                    </p>
                    <button style="background: #ffffff; border:  1px solid #85a92a">
                        <p class="no-margin" style="color: #85a92a ; font-size: 10px;">
                            READ MORE
                        </p>
                    </button>
                </div>
            </div>
        <?php endforeach?>
        </div>
        <br>

        <div class="row text-center">
            <button style="background: #85a92a; border:  1px solid #85a92a;margin: 3px">
                <p class="no-margin" style="color: #ffffff ; font-size: 12px;">
                    1
                </p>
            </button>
            <button style="background: #ffffff; border:  1px solid #85a92a ;margin: 3px">
                <p class="no-margin" style="color: #85a92a ; font-size: 12px;">
                    2
                </p>
            </button>
            <button style="background: #ffffff; border:  1px solid #85a92a;margin: 3px">
                <p class="no-margin" style="color: #85a92a ; font-size: 12px;">
                    3
                </p>
            </button>
            <button style="background: #ffffff; border:  1px solid #85a92a;margin: 3px">
                <p class="no-margin" style="color: #85a92a ; font-size: 12px;">
                    4
                </p>
            </button>
            <button style="background: #ffffff; border:  1px solid #85a92a;margin: 3px">
                <p class="no-margin" style="color: #85a92a ; font-size: 12px;">
                    5
                </p>
            </button>
        </div>
    </div>
</div>

<!-- section end -->