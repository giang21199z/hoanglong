<!-- banner start -->
<!-- ================ -->
<div class="banner row" style="height: 375px">
    <img src="/images/slide-danh-sach-bac-si.jpg" style="height: 375px; width: 100%">
</div>
<div class="row ip-content">
    <div class="row new-title">
        <div class="row">
            <div class="col-xs-8 no-padding">
                <h1 class="title-header">Thư viện ảnh</h1>
            </div>
            <div class="col-xs-4 no-padding list-icon" style="">
                <i class="fa fa-google-plus"></i>
                <i class="fa fa-youtube-play"></i>
                <i class="fa fa-twitter"></i>
                <i class="fa fa-facebook"></i>
            </div>
        </div>
        <p class="sub-title">
            Home > Thư viện ảnh
        </p>
    </div>
    <div class="row list-news">
        <?php foreach ($categories as $value): ?>
            <div class="col-xs-6 no-padding-left" style="margin-bottom: 10px">
                <a href="<?php echo url_for('detail_list_gallery_ipad', array('id' => $value['idcategory_gallery'], 'total' => $value['number'])) ?>"
                   style="text-decoration: none">
                    <div class="row" style="border-radius: 4px;border: 1px solid #ddd">
                        <div class="row"
                             style="width: 35px; height: 35px; background: #FFFFFF ; position: absolute; z-index: 9999; right: 15px">
                            <p style="font-size: 18px ; color: #85a92a ; margin-top: 4px"
                               class="text-center no-margin"> <?php echo $value['number'] ?></p>
                        </div>
                        <img src="/uploads/gallery/<?php echo $value['images'][0]['url'] ?>"
                             class="img-responsive" style="height: 240px">

                        <p style="font-size: 18px ; padding-top: 15px ; padding-bottom: 30px ; padding-left: 20px ; color: #a8cf45">
                            <?php echo VtHelper::truncate($value['description'], 100) ?></p>
                    </div>
                </a>
            </div>
        <?php endforeach; ?>
        <div class="row text-center paginations" style="margin-top: 25px;">
            <?php for ($i = 1; $i <= $total / 5 + 1; $i++): ?>
                <button class="pa-active">
                    <p class="no-margin">
                        <?php echo $i; ?>
                    </p>
                </button>
            <?php endfor; ?>
        </div>
    </div>
</div>
<!-- section end -->
