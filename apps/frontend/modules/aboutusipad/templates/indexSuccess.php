﻿<!-- banner start -->
<!-- ================ -->
<div class="banner row" style="height: 375px">
    <img src="/images/slide-danh-sach-bac-si.jpg" style="height: 375px; width: 100%">
</div>
<div class="row ip-content">
    <div class="row new-title">
        <div class="row">
            <div class="col-xs-8 no-padding">
                <h1 class="title-header">About Hoang Long News</h1>
            </div>
            <div class="col-xs-4 no-padding list-icon" style="">
                <i class="fa fa-google-plus"></i>
                <i class="fa fa-youtube-play"></i>
                <i class="fa fa-twitter"></i>
                <i class="fa fa-facebook"></i>
            </div>
        </div>
        <p class="sub-title">
            Home > Hoang Long About
        </p>
    </div>
    <div class="row list-news">
        <?php foreach ($news as $value): ?>
        <div class="row items">
            <div class=" col-xs-4 no-padding img-items">
                <img src="/uploads/aboutus/<?php echo $value['images'] ?>" class="image"/>
            </div>
            <div class=" col-xs-8 no-padding content-items">
                <p class="title" ><?php echo $value['title'] ?></p>
                <p class="description">
                    <?php echo VtHelper::truncate($value['summary'], 200) ?>
                </p>
                <p class="date">
                    <?php echo $value['updated_at'] ?>
                </p>
            </div>
        </div>
        <?php endforeach ?>
    </div>
</div>
<!-- section end -->