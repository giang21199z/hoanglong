﻿<!-- banner start -->
<!-- ================ -->
<div class="row" style="height: 510px">
    <img src="/images/slide-danh-sach-bac-si.jpg" style="height: 510px; width: 100%">
</div>
<!-- banner end -->

<!-- section start -->
<!-- ================ -->
<div class="row new-detail2" data-animation-effect="fadeIn">
    <div class="container">
        <div class="row" style="width: 1170px">
            <div class="left-content">
                <div class="row new-title">
                    <div class="row">
                        <div class="col-xs-10 no-padding">
                            <h1 class="no-padding" style="margin-top: 22px">HOANG LONG NEWS </h1>
                        </div>
                        <div class="col-xs-2 no-padding" style="font-size: 20px; margin-top: 30px; color: #6f6f6f">
                            <i class="fa fa-facebook" style="margin-right: 10px;"></i>
                            <i class="fa fa-twitter" style="margin-right: 10px;"></i>
                            <i class="fa fa-youtube-play" style="margin-right: 10px;"></i>
                            <i class="fa fa-google-plus"></i>
                        </div>
                    </div>
                    <p style="font-size: 18px ; color: #85a92a ;">Home > Hoang Long News > Lorem Ipsum is ...</p>
                </div>
                <div class="row">
                    <p class="tille">
                        <?php echo $news->getTitle() ?>
                    </p>

                    <p class="date">
                        <?php echo $news->getUpdatedAt() ?>
                    </p>
                    <?php echo VtHelper::htmlToView($news->getContent()) ?>
                </div>
                <div class="row pre">
                    <div class="col-md-5 col-md-offset-1 arr-left">
                        <img class="arrow-img" src="/images/left.png">
                        <span>
                            <?php echo substr($news_related[0]['title'], 0, 25) ?>
                            <br><?php echo substr($news_related[0]['title'], 25, 30) ?>...
                        </span>
                    </div>
                    <div class="col-md-5 arr-right">
                        <img class="arrow-img" src="/images/right.png">
                        <span>
                            <?php echo VtHelper::truncate($news_related[1]['title']) ?>
                        </span>
                    </div>
                </div>

            </div>
            <div class="right-menu">
                <div class="row" style="background:#f6f6f6 ">
                    <p class=""
                       style=" letter-spacing: 1px; color:#ffffff ;height: 60px ; width:330px;padding-left: 15px ; font-size: 22px ;display: table-cell; vertical-align: middle; background: #b9d96a">
                        RELATED NEWS </p>
                    <?php foreach ($news_related as $value): ?>
                        <div class="right-menu right-item">
                            <div class="row item">
                                <div class="col-md-4 no-padding">
                                    <img src="/uploads/news/<?php echo $value['images'] ?>" class="img-new">
                                </div>
                                <div class="col-md-8 no-padding-left">
                            <span>
                             <?php echo $value['title'] ?>
                              </span>

                                    <p class="date">
                                        <?php echo $value['updated_at'] ?>
                                    </p>
                                </div>
                            </div>
                        </div>
                    <?php endforeach ?>
                </div>
                <div class="row make-shu" style=" background: #b9d96a">
                    <p style=" color :#ffffff;padding-top: 25px ; padding-left: 10px ; letter-spacing: 2px; font-size: 26px">
                        Đặt lịch hẹn</p>

                    <div class="row"
                         style="font-size: 16px;padding-left: 25px;padding-right: 25px ; letter-spacing: 1px;">
                        <p style="color: #ffffff">
                            Hân hạnh phục vụ quý khách
                        </p>
                        <input type="text" class="form-control" id="fullname" placeholder="Full Name">
                        <input type="text" class="form-control" id="age" placeholder="Age">
                        <input type="number" class="form-control" id="phone" placeholder="Phone Number">
                        <input type="text" class="form-control" id="date" placeholder="Date">
                        <textarea class="form-control" style="height: 140px" id="description"
                                  placeholder="Description"></textarea>

                        <div class="row text-center ">
                            <button class="btn text-center schedule-btn" id="btn-make-schedule">
                                <p class="text-center">SCHEDULE</p>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- section end -->