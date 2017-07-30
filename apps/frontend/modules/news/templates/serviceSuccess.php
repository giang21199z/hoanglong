<!-- banner start -->
<!-- ================ -->
<div class="row" style="height: 510px">
    <img src="/images/slide-danh-sach-bac-si.jpg" style="height: 510px; width: 100%">
</div>
<!-- banner end -->

<!-- section start -->
<!-- ================ -->
<div class="row new-detail2" >
    <div class="container">
        <div class="row" style="width: 1170px">
            <div class="left-content">
                <div class="row new-title">
                    <div class="row">
                        <div class="col-xs-10 no-padding">
                            <h1 class="no-padding" style="margin-top: 22px">DỊCH VỤ </h1>
                        </div>
                        <div class="col-xs-2 no-padding" style="font-size: 20px; margin-top: 30px; color: #6f6f6f">
                            <a href="https://www.facebook.com/phongkhamdakhoahoanglong/" style="color: black"><i
                                    class="fa fa-facebook" style="margin-right: 10px;"></i></a>
                            <a href="https://www.youtube.com/channel/UCSY56RWgn7BsoWYcuneZJPw" style="color: black">
                                <i class="fa fa-youtube-play" style="margin-right: 10px;"></i></a>
                            <a href="https://plus.google.com/u/3/107088174740791028286?hl=vi" style="color: black"><i class="fa fa-google-plus"></i></a>
                            <a href="https://www.linkedin.com/in/hoanglongclinic/" style="color: black">
                                <i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                    <p style="font-size: 18px ; color: #85a92a ;">Home > Dịch vụ
                        > <?php echo $news->getTitle() ?></p>
                </div>
                <div class="row">
                    <p class="tille">
                        <?php echo $news->getTitle() ?>
                    </p>

                    <p class="date">
                        <?php echo $news->getUpdatedAt() ?>&nbsp;&nbsp;&nbsp;
                        <span class="fa fa-eye"> <?php echo $news->getViews()?></span>
                    </p>
                    <?php echo html_entity_decode($news->getContent()) ?>
                    <p style="text-align:center"><span style="font-size:24px"><strong>"Sức khỏe là Khởi nguồn của hạnh
                                phúc"</strong></span></p>

                    <p style="text-align:center">THÔNG TIN LIÊN HỆ</p>

                    <p style="text-align:center">Phòng khám Đa Khoa Hoàng Long</p>

                    <p style="text-align:center">Địa chỉ: Tầng 10 Tòa tháp VCCI, số 9 Đào Duy Anh, Đống Đa,Hà Nội.</p>

                    <p style="text-align:center">Email:&nbsp;info@hoanglonghospital.vn</p>

                    <p style="text-align:center">Hotline :&nbsp;024 626 00 581</p>

                    <p style="text-align:center">Điện thoại:&nbsp;024 628 11 331</p>

                    <p style="text-align:center">Fanpage: <a href="https://www.facebook.com/phongkhamdakhoahoanglong">https://www.facebook.com/phongkhamdakhoahoanglong</a></p>

                    <p class="text-center">
                        <a type="button" data-toggle="modal" class="btn" style="background: #85A92A; color: white"
                           data-target="#myModal">ĐẶT LỊCH KHÁM</span></a>
                    </p>
                </div>
                <div class="row pre">
                    <div class="col-md-5 col-md-offset-1 arr-left">
                        <img class="arrow-img" src="/images/left.png">
                        <span>
                            <a style="text-decoration: none; color: #85A92A" href="<?php echo url_for('detail_service', array('idservice' => $news_related[0]['idnews'], 'title'=> $news_related[0]['title']))?>"><?php echo VtHelper::truncate($news_related[0]['title'],25) ?></a>
                        </span>
                    </div>
                    <div class="col-md-5 arr-right">
                        <img class="arrow-img" src="/images/right.png">
                        <span>
                            <a style="text-decoration: none; color: #85A92A" href="<?php echo url_for('detail_service', array('idservice' => $news_related[1]['idnews'], 'title'=> $news_related[1]['title']))?>"><?php echo VtHelper::truncate($news_related[1]['title'],25) ?></a>
                        </span>
                    </div>
                </div>

            </div>
            <div class="right-menu">
                <div class="row" style="background:#f6f6f6 ">
                    <p class=""
                       style=" letter-spacing: 1px; color:#ffffff ;height: 60px ; width:330px;padding-left: 15px ; font-size: 22px ;display: table-cell; vertical-align: middle; background: #b9d96a">
                        DỊCH VỤ KHÁC </p>
                    <?php foreach ($news_related as $value): ?>
                        <a href="<?php echo url_for('detail_service', array('idservice' => $value['idnews'], 'title' => $value['title'])) ?>"
                           style="text-decoration: none">
                            <div class="right-menu right-item">
                                <div class="row item">
                                    <div class="col-md-4 no-padding">
                                        <img src="/uploads/services/<?php echo $value['images'] ?>" class="img-new">
                                    </div>
                                    <div class="col-md-8 no-padding-left">
                                <span>
                                <?php echo $value['title'] ?>
                                </span>
                                        <br><br>

                                        <p class="date">
                                            <?php echo $value['updated_at'] ?>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </a>
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
                        <input type="text" class="form-control" id="fullname" placeholder="Họ tên">
                        <input type="text" class="form-control" id="age" placeholder="Tuổi">
                        <input type="number" class="form-control" id="phone" placeholder="Số điện thoại">
                        <input type="text" class="form-control" id="address" placeholder="Địa chỉ">
                        <input type="text" class="form-control" id="date" placeholder="Ngày đặt hẹn">
                        <textarea class="form-control" style="height: 140px" id="description"
                                  placeholder="Mô tả triệu chứng"></textarea>

                        <div class="row text-center ">
                            <button class="btn text-center schedule-btn" id="btn-make-schedule">
                                <p class="text-center">Đặt lịch hẹn</p>
                            </button>
                        </div>
                    </div>
                </div>
                <a href="<?php echo url_for('detail_news',array('idnews' => $sales->getIdnews(), 'title' => 'tin-tuc-khuyen-mai-'.VtHelper::write_url_english($sales->getTitle())))?>" style="text-decoration: none">
                    <div class="row" style="background:#F6F6F6">
                        <p class=""
                           style="letter-spacing: 1px; color:#ff0000 ;height: 60px ; width:330px;padding-left: 15px ; font-size: 22px ;display: table-cell; vertical-align: middle; text-align: center">
                            <marquee><?php echo $sales->getTitle() ?> </marquee>
                        </p>
                        <div class="row">
                            <img src="/uploads/news/<?php echo $sales->getImages() ?>" class="img img-thumbnail" alt="<?php echo $sales->getTitle()?>">
                        </div>
                        <div class="row">
                            <p style="color:red ;height: 60px ; width:330px; padding-left: 15px ; font-size: 18px ;display: table-cell; vertical-align: middle; text-align: center"><?php echo $sales->getSummary() ?></p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>

<!-- section end -->
<script>
    $(".mega-dropdown").removeClass('menu-active');
    $(".mega-dropdown:nth-child(3)").addClass('menu-active');
</script>