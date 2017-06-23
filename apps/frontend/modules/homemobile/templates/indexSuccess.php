<div id="wowslider-container1">
    <div class="ws_images">
        <ul>
            <li><img src="data1/images/<?php echo $slides[0]['images'] ?>" alt="hoanglonghospital.vn" title=""
                     id="wows1_0"/></li>
            <li><img src="data1/images/<?php echo $slides[1]['images'] ?>" alt="hoanglonghospital.vn" title=""
                     id="wows1_1"/></li>
            <li><img src="data1/images/<?php echo $slides[2]['images'] ?>" alt="hoanglonghospital.vn" title=""
                     id="wows1_2"/></li>
        </ul>
    </div>
    <div class="ws_shadow"></div>
</div>
<script type="text/javascript" src="/engine1/wowslider.js"></script>
<script type="text/javascript" src="/engine1/script.js"></script>

<div class="row content">
    <div class="row">
        <p class="text-header"> About Clinic </p>

        <p class="sub-text-header"> <?php echo $about_us->getTitle() ?> </p>
        <hr>
    </div>
    <p class="description">
        <?php echo VtHelper::truncate($about_us->getSummary(), 150) ?>
    </p>
    <img src="images/image_about.PNG" class="img-responsive">
</div>
<div class="row content ">
    <div class="row">
        <p class="text-header"> Why Choise Us</p>

        <p class="sub-text-header"> OUR STRENGTHS </p>
        <hr>
    </div>
    <?php foreach ($why_choose_us as $value): ?>
        <div class="row item-chooise-us">
            <div class="col-xs-5 no-padding-left">
                <img src="/uploads/news/<?php echo $value['images'] ?>" class="img-responsive">
            </div>

            <p class="home-sub-text-header">
                <?php echo VtHelper::truncate($value['title'], 20) ?>
            </p>

            <p class="description">
                <?php echo VtHelper::truncate($value['summary'], 100) ?>
            </p>
        </div>

    <?php endforeach; ?>
</div>
<div class="row content">
    <div class="row">
        <p class="text-header"> What Customers Say</p>

        <p class="sub-text-header"> FEEDBACK OF CUSTOMERS </p>
        <hr>
    </div>
    <div class="row feedback">
        <div class="col-xs-8 col-xs-offset-2 ">
            <?php foreach ($feed_backs as $value): ?>
                <div class="col-xs-4  text-center ">
                    <img src="/uploads/feedback/<?php echo $value['avatar'] ?>" class="img-circle img-responsive">
                </div>
            <?php endforeach; ?>
        </div>
    </div>
    <br>

    <div class="row say-detail">
        <div class="col-xs-1 no-padding" style="width: 7%">
            <img src="/images/keo_mo.png">
        </div>
        <div class="col-xs-10 no-padding text-center" style="width: 86%">
            <p style="font-size: 13px ;line-height: 27px">
                <?php echo $feed_backs[0]['content'] ?>
            </p>

            <p class="no-margin" style="font-size: 16px ; color: #85a92a ;">
                <?php echo $feed_backs[0]['name_customer'] ?>
            </p>

            <p style="font-size: 13px">
                <?php echo $feed_backs[0]['address'] ?>
            </p>
        </div>
        <div class="col-xs-1 no-padding" style="width: 7%">
            <img src="/images/keo_dong.png" style="float: right;">
        </div>
    </div>
</div>
<div class="row content last-news">
    <div class="row">
        <p class="text-header">Latest News</p>

        <p class="sub-text-header">NEWS OF HOANG LONG CLINIC, MEDICAL ... </p>
        <hr>
    </div>
    <?php foreach ($news as $value): ?>
        <div class="row new-item">
            <div class="col-xs-4 no-padding-left">
                <img src="/uploads/news/<?php echo $value['images'] ?>" class="img-responsive">
            </div>

            <p class="home-sub-text-header no-margin">
                <?php echo VtHelper::truncate($value['title'], 20) ?>
            </p>

            <p class="date-title">
                <?php echo $value['updated_at'] ?>
            </p>

            <p class="description">
                <?php echo VtHelper::truncate($value['summary'], 100) ?>
            </p>
        </div>
    <?php endforeach ?>
</div>