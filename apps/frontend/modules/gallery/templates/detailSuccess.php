<!-- banner start -->
<!-- ================ -->
<div class="row" style="height: 510px">
    <img src="/images/slide-danh-sach-bac-si.jpg" style="height: 510px; width: 100%">
</div>
<!-- banner end -->

<!-- section start -->
<!-- ================ -->
<div class="row" data-animation-effect="fadeIn">
    <div class="container">
        <div class="row" style="width: 1170px">
            <div class="left-content">
                <div class="row new-title">
                    <div class="row">
                        <div class="col-xs-10 no-padding">
                            <h1 class="no-padding" style="margin-top: 22px">Thư viện </h1>
                        </div>
                        <div class="col-xs-2 no-padding" style="font-size: 20px; margin-top: 30px; color: #6f6f6f">
                            <i class="fa fa-facebook" style="margin-right: 10px;"></i>
                            <i class="fa fa-twitter" style="margin-right: 10px;"></i>
                            <i class="fa fa-youtube-play" style="margin-right: 10px;"></i>
                            <i class="fa fa-google-plus"></i>
                        </div>
                    </div>
                    <p style="font-size: 18px ; color: #85a92a ;">Thư viện > Ảnh
                        > <?php echo $category->getName() ?> </p>
                </div>
                <p style="line-height: 24px;letter-spacing: 2px; font-size: 17px;">
                    <?php echo $category->getDescription() ?>
                </p>

                <div class="row" style="margin-top: 15px">
                    <?php foreach ($galleries as $value): ?>
                        <div class="col-xs-4 no-padding-left" style="margin-top: 15px">
                            <img src="/uploads/gallery/<?php echo $value['url'] ?>" class="img-responsive"
                                 style="height: 130px; width: 100%" onclick="detailImage(this)"
                                 alt="<?php echo $value['name'] ?>">
                        </div>
                    <?php endforeach ?>
                </div>
                <div class="row text-center">
                    <?php for ($i = 1; $i <= $total / $page_size + 1; $i++): ?>
                        <a href="<?php echo url_for('detail_list_gallery', array('id' => $value['id'],'page' => $i - 1, 'total' => $total))?>">
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
            <div class="right-menu">
                <div class="row" style="background:#f6f6f6 ">
                    <p class=""
                       style=" letter-spacing: 1px; color:#ffffff ;height: 60px ; width:330px;padding-left: 15px ; font-size: 22px ;display: table-cell; vertical-align: middle; background: #b9d96a">
                        INTRODUCTION </p>

                    <div class="right-menu right-item">
                        <p class=" "
                           style="border-bottom : 1px solid #a0a0a0;letter-spacing: 1px; color:#4b4b4b ;height: 60px ; width:330px;padding-left: 15px ; font-size: 18px ;display: table-cell; vertical-align: middle;">
                            Lorem ipsum </p>
                    </div>
                    <div class="right-menu right-item">
                        <p class=" "
                           style="border-bottom : 1px solid #a0a0a0;letter-spacing: 1px; color:#4b4b4b ;height: 60px ; width:330px;padding-left: 15px ; font-size: 18px ;display: table-cell; vertical-align: middle;">
                            Lorem ipsum </p>
                    </div>
                    <div class="right-menu right-item">
                        <p class=" "
                           style="border-bottom : 1px solid #a0a0a0;letter-spacing: 1px; color:#4b4b4b ;height: 60px ; width:330px;padding-left: 15px ; font-size: 18px ;display: table-cell; vertical-align: middle; ">
                            Lorem ipsum </p>
                    </div>
                    <div class="right-menu right-item">
                        <p class=" "
                           style="letter-spacing: 1px; color:#4b4b4b ;height: 60px ; width:330px;padding-left: 15px ; font-size: 18px ;display: table-cell; vertical-align: middle; ">
                            Lorem ipsum </p>
                    </div>
                </div>
                <div class="row make-shu" style=" background: #b9d96a">
                    <p style=" color :#ffffff;padding-top: 25px ; padding-left: 10px ; letter-spacing: 2px; font-size: 26px">
                        Đặt lịch hẹn</p>

                    <div class="row"
                         style="font-size: 16px;padding-left: 25px;padding-right: 25px ; letter-spacing: 1px;">
                        <p style="color: #ffffff">
                            Hân hạnh phục vụ quý khách
                        </p>
                        <input type="text" class="form-control" id="fullname" placeholder="Họ tên">
                        <input type="text" class="form-control" id="age" placeholder="Tuổi">
                        <input type="number" class="form-control" id="phone" placeholder="Số điện thoại">
                        <input type="text" class="form-control" id="address" placeholder="Địa chỉ">
                        <input type="text" class="form-control" id="date" placeholder="Ngày đặt hẹn">
                        <textarea class="form-control" style="height: 140px" id="description"
                                  placeholder="Mô tả triệu chứng"></textarea>

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
<!-- Modal detail image -->
<div id="detail-image" class="modal fade" role="dialog">
    <div class="modal-dialog text-center">

        <!-- Modal content-->

        <img src="" id="detail-src">
        <h3 id="name-img" class="text-uppercase" style="color: white"></h3>
    </div>
</div>
<script>
    function detailImage(img) {
        $('#detail-image').modal('toggle');
        $('#detail-src').attr('src', $(img).attr('src'));
        $('#name-img').text($(img).attr('alt'));
    }
</script>