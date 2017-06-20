<!-- banner start -->
<!-- ================ -->
<div class="banner row" style="height: 375px">
    <img src="/images/slide-danh-sach-bac-si.jpg" style="height: 375px; width: 100%">
</div>
<div class="row ip-content">
    <div class="row new-title">
        <div class="row">
            <div class="col-xs-8 no-padding">
                <h1 class="title-header">HOANG LONG NEWS </h1>
            </div>
            <div class="col-xs-4 no-padding list-icon" style="">
                <i class="fa fa-google-plus"></i>
                <i class="fa fa-youtube-play"></i>
                <i class="fa fa-twitter"></i>
                <i class="fa fa-facebook"></i>
            </div>
        </div>
        <p class="sub-title">
            Home > Hoang Long News > <?php echo $news->getTitle() ?>
        </p>

        <div class="row  detail-new ">
            <p class="title">
                <?php echo $news->getTitle() ?>
            </p>

            <p class="date">
                <?php echo $news->getUpdatedAt() ?>
            </p>
            <?php echo html_entity_decode($news->getContent()) ?>
        </div>
        <div class="row pre-next">
            <div class="col-xs-4 col-md-offset-1 arr-left">
                <img class="arrow-img" src="/images/left.png">
                        <span>
                            <a style="text-decoration: none; color: #85A92A"
                               href="<?php echo url_for('detail_news_ipad', array('idnews' => $news_related[0]['idnews'], 'title' => $news_related[0]['title'])) ?>"><?php echo VtHelper::truncate($news_related[0]['title'], 25) ?></a>
                        </span>
            </div>
            <div class="col-xs-4 arr-right">
                <img class="arrow-img" src="/images/right.png">
                        <span>
                            <a style="text-decoration: none; color: #85A92A"
                               href="<?php echo url_for('detail_news_ipad', array('idnews' => $news_related[0]['idnews'], 'title' => $news_related[1]['title'])) ?>"><?php echo VtHelper::truncate($news_related[1]['title'], 25) ?></a>
                        </span>
            </div>
        </div>
    </div>
</div>
<!-- section end -->