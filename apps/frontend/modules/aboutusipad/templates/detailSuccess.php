<!-- banner start -->
<!-- ================ -->
<div class="banner row" style="height: 375px">
    <img src="/images/slide-danh-sach-bac-si.jpg" style="height: 375px; width: 100%">
</div>
<div class="row ip-content">
    <div class="row new-title about-us ">
        <div class="row">
            <div class="col-xs-8 no-padding">
                <h1 class="title-header" >GIỚI THIỆU </h1>
            </div>
            <div class="col-xs-4 no-padding list-icon" style="">
                <i class="fa fa-google-plus"></i>
                <i class="fa fa-youtube-play"></i>
                <i class="fa fa-twitter"  ></i>
                <i class="fa fa-facebook" ></i>
            </div>
        </div>
        <div class="row detail">
            <p class="tille">
                <?php echo $news->getTitle() ?>
            </p>

            <p class="date">
                <?php echo $news->getUpdatedAt() ?>
            </p>
            <?php echo html_entity_decode($news->getContent()) ?>
        </div>
    </div>
</div>
<!-- section end -->