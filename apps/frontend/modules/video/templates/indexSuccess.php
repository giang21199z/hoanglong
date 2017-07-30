<style>
    .ytplayer {
        pointer-events: none;
    }
</style>
<!-- banner start -->
<!-- ================ -->
<div class="row" style="height: 510px">
    <img src="/images/slide-danh-sach-bac-si.jpg" style="height: 510px; width: 100%">
</div>
<!-- banner end -->

<!-- section start -->
<!-- ================ -->
<div class="row" >
    <div class="container">
        <div class="row" style="width: 1170px">
            <div class="left-content">
                <div class="row new-title">
                    <div class="row">
                        <div class="col-xs-10 no-padding">
                            <h1 class="no-padding" style="margin-top: 22px">Thư viện </h1>
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
                    <p style="font-size: 18px ; color: #85a92a ;">Thư viện > Video </p>
                </div>
                <div class="row text-center">
                    <iframe width="500" height="281"
                            src="https://www.youtube-nocookie.com/embed/<?php echo VideoHelper::getIdVideoYoube($video->getUrl()) ?>"
                            frameborder="0"
                            allowfullscreen></iframe>
                    <p style="font-size: 18px ; padding-top: 15px ; padding-bottom: 30px ; padding-left: 20px ; color: #a8cf45">
                        <?php echo $video->getName() ?></p>
                </div>
            </div>
            <div class="right-menu">
                <div class="row" style="background:#f6f6f6 ">
                    <p class=""
                       style=" letter-spacing: 1px; color:#ffffff ;height: 60px ; width:330px;padding-left: 15px ; font-size: 22px ;display: table-cell; vertical-align: middle; background: #b9d96a">
                        VIDEO HOẠT ĐỘNG KHÁC </p>
                    <?php foreach ($videos as $value): ?>
                        <div class="right-menu" style=" margin-bottom: 10px; ">
                            <iframe width="200" height="113" class="ytplayer"
                                    src="https://www.youtube-nocookie.com/embed/<?php echo VideoHelper::getIdVideoYoube($value['url']) ?>"
                                    frameborder="0"
                                    allowfullscreen></iframe>
                            <a href="<?php echo url_for('list_video', array('idvideo' => $value['idvideo'])) ?>">
                                <p style="font-size: 14px ; padding-top: 15px ; padding-bottom: 30px ; padding-left: 20px ; color: #a8cf45; float: right; width: 130px; text-transform: lowercase">
                                    <?php echo $value['name'] ?>
                                </p>
                            </a>
                        </div>
                    <?php endforeach; ?>
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
            </div>
        </div>
    </div>
</div>

<!-- section end -->
<script>
    $(".mega-dropdown").removeClass('menu-active');
    $(".mega-dropdown:nth-child(5)").addClass('menu-active');
</script>