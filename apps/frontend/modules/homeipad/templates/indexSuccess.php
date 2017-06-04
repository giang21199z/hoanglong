<!-- banner start -->
<!-- ================ -->
<div class="banner">
    <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
    <div id="wowslider-container1">
        <div class="ws_images">
            <ul>
                <li><img src="/data1/images/1911920.jpg" alt="191-1920" title="191-1920" id="wows1_0"/></li>
                <li><img src="/data1/images/sinhvienit.netanhthiennhienfullhd1.jpg" alt="slider"
                         title="SinhVienIT.Net---anh-thien-nhien-full-hd-1" id="wows1_1"/></a></li>
                <li><img src="/data1/images/ti_xung.jpg" alt="tải xuống" title="tải xuống" id="wows1_2"/></li>
            </ul>
        </div>
    </div>
    <script type="text/javascript" src="/engine1i/wowslider.js"></script>
    <script type="text/javascript" src="/engine1/script.js"></script>
</div>
<!-- banner end -->
<!-- section start -->
<!-- ================ -->
<div class="section " data-animation-effect="fadeIn" style="margin-top: 105px">
    <div class="container">
        <div class="row about-clinic">
            <div class="row">
                <h2 class="no-margin-bottom title-h2">
                    About Clinic
                </h2>

                <p class="title-p">
                    <?php echo $about_us->getTitle() ?>
                </p>
                <hr class="hr">
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <p class="description-detail">
                        <?php echo VtHelper::truncate($about_us->getSummary(), 200) ?>
                    </p>
                </div>
                <div class="col-xs-6">
                    <img class="img-responsive" src="/imagesi/image_about.PNG">
                </div>
            </div>
        </div>
    </div>
</div>


<div class="section " data-animation-effect="fadeIn" style="background: #f5f5f5">
    <div class="container">
        <div class="row">
            <div class="row why-choise-us">
                <div class="row">
                    <h2 class="no-margin-bottom title-h2">
                        Why Chose Us ?
                    </h2>

                    <p class="title-p">
                        OUR STRENGTHS
                    </p>
                    <hr class="hr">
                    <div class="row list-item">
                        <?php foreach ($why_choose_us as $value): ?>
                            <div class="col-xs-4 no-padding-left">
                                <div class="row">
                                    <img src="/uploads/news/<?php echo $value['images'] ?>" class="img-responsive img">
                                </div>
                                <div class="row ">
                                    <p class="title">
                                        <?php echo VtHelper::truncate($value['title']) ?>
                                    </p>

                                    <p>
                                        <?php echo VtHelper::truncate($value['summary'], 100) ?>
                                    </p>
                                    <button class="btn-readmore">
                                        <p class="no-margin">
                                            READ MORE
                                        </p>
                                    </button>
                                </div>
                                `
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>


<div class="section " data-animation-effect="fadeIn">
    <div class="container">
        <div class="row our-doctor">
            <div class="row">
                <h2 class="title-h2">
                    Our Doctor
                </h2>

                <p class="title-p">
                    DOCTOR IS GENTLE MOTHER
                </p>
                <hr class="hr">
                <div class="row">
                    <?php foreach ($doctor as $value): ?>
                        <div class="col-xs-4 no-padding">
                            <div class="row">
                                <div class="col-md-12">
                                    <img src="/uploads/doctors/<?php echo $value['avatar'] ?>" class="img-circle img-responsive">
                                </div>
                            </div>
                            <div class="row text-center">
                                <p class="name-doctor no-margin">
                                    <?php echo $value['name'] ?>
                                </p>

                                <p style="color: #4b4b4b">
                                    <?php echo $value['degree'] ?>
                                </p>

                                <p class="description">
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
                <div class="row text-center paginations" style="margin-top: 25px;">
                    <button class="pa-active">
                        <p class="no-margin">
                            1
                        </p>
                    </button>
                    <button>
                        <p class="no-margin">
                            2
                        </p>
                    </button>
                    <button>
                        <p class="no-margin">
                            3
                        </p>
                    </button>
                    <button>
                        <p class="no-margin">
                            4
                        </p>
                    </button>
                    <button>
                        <p class="no-margin">
                            5
                        </p>
                    </button>

                </div>
            </div>
        </div>


    </div>
</div>

<div class="section " data-animation-effect="fadeIn">
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
            <div id="jssor_1"
                 style="position:relative;margin-top:10px; left:0px;width:1170px;height:250px;overflow:hidden;visibility:hidden;">
                <!-- Loading Screen -->
                <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
                    <div
                        style="filter: alpha(opacity=90); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                    <div
                        style="position:absolute;display:block;background:url('/img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                </div>
                <div data-u="slides"
                     style="cursor:default;position:relative;top:0px;left:0px;width:1170px;height:350px;overflow:hidden;">
                    <div>
                        <img data-u="image" src="/imgi/005.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="/imgi/006.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="/imgi/011.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="/imgi/013.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="/imgi/014.jpg"/>
                    </div>

                    <div>
                        <img data-u="image" src="/imgi/039.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="/imgi/043.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="/imgi/044.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="/imgi/047.jpg"/>
                    </div>
                    <div>
                        <img data-u="image" src="/imgi/050.jpg"/>
                    </div>
                </div>
                <style type="text/css   ">

                </style>
                <!-- Bullet Navigator -->
                <div data-u="navigator" class="jssorb03" style="bottom:10px;right:10px;">
                    <!-- bullet navigator item prototype -->
                    <div data-u="prototype" style="width:21px;height:21px;display: none">
                        <div data-u="numbertemplate"></div>
                    </div>
                </div>
                <!-- Arrow Navigator -->
                <span data-u="arrowleft" class="jssora03l" style="top:0px;left:8px;width:55px;height:55px;"
                      data-autocenter="2"> PREVIEW  </span>
                <span data-u="arrowright" class="jssora03r" style="top:0px;right:8px;width:55px;height:55px;"
                      data-autocenter="2"> NEXT</span>
            </div>
            <script type="text/javascript">jssor_1_slider_init();</script>
        </div>
    </div>
</div>


<div class="section " data-animation-effect="fadeIn">
    <div class="container">
        <div class="row cus-say">
            <div class="row">
                <h2 class="no-margin-bottom title-h2">
                    What Customers Say
                </h2>

                <p class="title-p">
                    FEED OF CUSTOMERS
                </p>
                <hr class="hr">
            </div>

            <div class="row">
                <div class="col-xs-6 col-xs-offset-3 ">
                    <?php foreach ($feed_backs as $value): ?>
                    <div class="col-xs-4 no-padding">
                        <img src="/uploads/feedback/<?php echo $value['avatar']?>" class="img-circle img-responsive">
                    </div>
                    <?php endforeach;?>
                </div>
            </div>
            <br><br>

            <div class="row say-detail">
                <div class="col-xs-1 no-padding" style="width: 7%">
                    <img src="/imagesi/keo_mo.png">
                </div>
                <div class="col-xs-10 no-padding text-center" style="width: 86%">
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
                <div class="col-xs-1 no-padding" style="width: 7%">
                    <img src="/imagesi/keo_dong.png" style="float: right;">
                </div>
            </div>
        </div>

    </div>
</div>
<div class="section " data-animation-effect="fadeIn" style="background: #f5f5f5">
    <div class="container">
        <div class="row new">
            <div class="row">
                <h2 class="title-h2">
                    Latest News
                </h2>

                <p class="title-p">
                    NEWS OF HOANG LONG CLINIC, MEDICAL ...
                </p>
                <hr class="hr">
            </div>
            <div class="row list-new">
                <?php foreach($news as $value):?>
                <div class="col-xs-4 no-padding-left">
                    <img src="uploads/news/<?php echo $value['images']?>" class=" img-responsive">

                    <div class="row description">
                        <p class="no-margin title">
                            <?php echo VtHelper::truncate($value['title'],50)?>
                        </p>

                        <p class="time">
                            <?php echo $value['updated_at']?>
                        </p>

                        <p class="detail" style="font-size: 14px">
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

            <div class="row text-center paginations" style="margin-top: 25px; margin-top: 25px">
                <button class="pa-active">
                    <p class="no-margin">
                        1
                    </p>
                </button>
                <button>
                    <p class="no-margin">
                        2
                    </p>
                </button>
                <button>
                    <p class="no-margin">
                        3
                    </p>
                </button>
                <button>
                    <p class="no-margin">
                        4
                    </p>
                </button>
                <button>
                    <p class="no-margin">
                        5
                    </p>
                </button>

            </div>
        </div>
    </div>
</div>

<!-- section end -->
