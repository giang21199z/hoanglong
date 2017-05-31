<!-- banner start -->
<!-- ================ -->
<div id="banner" class="banner">
    <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
    <div id="wowslider-container1">
        <div class="ws_images">
            <ul>
                <li><img src="data1/images/1911920.jpg" alt="191-1920" title="191-1920" id="wows1_0"/></li>
                <li><a href="http://wowslider.com/vi"><img src="data1/images/sinhvienit.netanhthiennhienfullhd1.jpg"
                                                           alt="bootstrap carousel"
                                                           title="SinhVienIT.Net---anh-thien-nhien-full-hd-1"
                                                           id="wows1_1"/></a></li>
                <li><img src="data1/images/ti_xung.jpg" alt="tải xuống" title="tải xuống" id="wows1_2"/></li>
            </ul>
        </div>
        <div class="ws_bullets">
            <div>
                <a href="#" title="191-1920"><span><img src="data1/tooltips/1911920.jpg" alt="191-1920"/>1</span></a>
                <a href="#" title="SinhVienIT.Net---anh-thien-nhien-full-hd-1"><span><img
                            src="data1/tooltips/sinhvienit.netanhthiennhienfullhd1.jpg"
                            alt="SinhVienIT.Net---anh-thien-nhien-full-hd-1"/>2</span></a>
                <a href="#" title="tải xuống"><span><img src="data1/tooltips/ti_xung.jpg" alt="tải xuống"/>3</span></a>
            </div>
        </div>

    </div>
    <script type="text/javascript" src="engine1/wowslider.js"></script>
    <script type="text/javascript" src="engine1/script.js"></script>
</div>
<!-- banner end -->

<!-- section start -->
<!-- ================ -->
<div class="section clearfix object-non-visible" data-animation-effect="fadeIn">
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


<div class="section clearfix object-non-visible" data-animation-effect="fadeIn" style="background: #f5f5f5">
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


<div class="section clearfix object-non-visible" data-animation-effect="fadeIn">
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

<div class="section clearfix object-non-visible" data-animation-effect="fadeIn">
    <div class="container">
        <div class="row" style="margin-top: 40px">
            <h2 class="no-margin-bottom" style="font-size: 42px ; color: #4b4b4b ; letter-spacing: 2px">
                What Customers Say
            </h2>

            <p style="font-size: 16px ; color: #85a92a ; margin-top: 10px;margin-bottom: 30px;">
                THE MOMENTS OF THE CLINIC
            </p>
            <hr style="border-bottom-color: #cacaca; width: 342px ; margin-left: 0px ; margin-top: 10px">
        </div>
        <div class="row">
            <div id="jssor_1"
                 style="position:relative;margin:0 auto;top:0px;left:0px;width:1170px;height:250px;overflow:hidden;visibility:hidden;">
                <!-- Loading Screen -->
                <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
                    <div
                        style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                    <div
                        style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                </div>
                <div data-u="slides"
                     style="cursor:default;position:relative;top:0px;left:0px;width:809px;height:150px;overflow:hidden;">
                    <div>
                        <img data-u="image" src="img/005.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="img/006.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="img/011.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="img/013.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="img/014.jpg"/>
                    </div>

                    <div>
                        <img data-u="image" src="img/039.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="img/043.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="img/044.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="img/047.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="img/050.jpg"/>
                    </div>
                </div>
                <!-- Bullet Navigator -->
                <div data-u="navigator" class="jssorb03" style="bottom:10px;right:10px;">
                    <!-- bullet navigator item prototype -->
                    <div data-u="prototype" style="width:21px;height:21px;">
                        <div data-u="numbertemplate"></div>
                    </div>
                </div>
                <!-- Arrow Navigator -->
                <span data-u="arrowleft" class="jssora03l" style="top:0px;left:8px;width:55px;height:55px;"
                      data-autocenter="2"></span>
                <span data-u="arrowright" class="jssora03r" style="top:0px;right:8px;width:55px;height:55px;"
                      data-autocenter="2"></span>
            </div>
            <script type="text/javascript">jssor_1_slider_init();</script>
        </div>
    </div>
</div>


<div class="section clearfix object-non-visible" data-animation-effect="fadeIn">
    <div class="container">

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
<div class="section clearfix object-non-visible" data-animation-effect="fadeIn">
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