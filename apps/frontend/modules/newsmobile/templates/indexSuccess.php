<div class="content_page ">
    <div class="row">
        <p class="no-margin" style="vertical-align: middle">
            <span class="text-header ">News</span>
            <span class="icon-contact" style="float: right">
              <i class="fa fa-facebook"></i>
              <i class="fa fa-twitter"></i>
              <i class="fa fa-youtube-play"></i>
              <i class="fa fa-google-plus"></i>
             </span>
        </p>
        <p class="sub-text-header">Home > News</p>
    </div>
    <div class="row news">
        <?php foreach ($news as $value): ?>
            <div class=" row item-news">
                <div class="col-xs-5 no-padding-left img-item-news">
                    <img src="/uploads/news/<?php echo $value['images'] ?>" class="img-responsive">
                </div>
                <div class="row ">
                    <p class="title-new">
                        <?php echo VtHelper::truncate($value['title'],30) ?>
                    </p>
                    <p class="description">
                        <?php echo VtHelper::truncate($value['summary'], 200) ?>
                    </p>
                    <p class="date-title" style="float: right;">
                        <?php echo $value['updated_at'] ?>
                    </p>
                </div>
            </div>
        <?php endforeach;?>
    </div>
    <div class="row text-center paginations" >
        <?php for ($i = 1; $i <= $total / $page_size + 1; $i++): ?>
            <a href="<?php echo url_for('list_about_us_mobile',array('page' => $i-1))?>">
                <button
                    <?php if ($i == $active + 1): ?>class="pagination-active" <?php else: ?> class="pagination-deactive"<?php endif; ?>>
                    <p class="no-margin" style=" font-size: 12px;">
                        <?php echo $i; ?>
                    </p>
                </button>
            </a>
        <?php endfor; ?>
    </div>
</div>
<div class="row icon-book"   data-toggle="modal" data-target="#myModal" >
    <img src="/images/chat.png">
</div>
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog booking">
        <!-- Modal content-->
        <div class="modal-content text-center">
            <div class="row">
                <p class="modal-tille">
                    Đặt lịch hẹn
                </p>
                <p class="modal-sub-title">
                    Hân hạnh phục vụ quý khách
                </p>
            </div>
            <div class="row">
                <div class="col-xs-10 col-xs-offset-1">
                    <input type="text" class="form-control" id="fullname_" placeholder="Họ tên">
                    <input type="number" class="form-control" id="age_" placeholder="Tuổi">
                    <input type="text" class="form-control" id="phone_" placeholder="Số điện thoại">
                    <input type="text" class="form-control" id="address_" placeholder="Địa chỉ">
                    <input type="text" class="form-control" id="date_" placeholder="Ngày bạn có thể tới khám">
                    <textarea class="form-control" style="height: 140px" id="description_"
                              placeholder="Miêu tả triệu chứng"></textarea>

                    <div class="row text-center ">
                        <button class="btn text-center schedule-btn" id="btn-make-schedule">
                            <p class="text-center no-margin">Đặt lịch hẹn</p>
                        </button>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>