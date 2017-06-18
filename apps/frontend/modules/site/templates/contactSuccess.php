<!-- banner start -->
<!-- ================ -->
<div class="row" style="height: 510px">
    <img src="images/slide-danh-sach-bac-si.jpg" style="height: 510px; width: 100%">
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
                            <h1 class="no-padding" style="margin-top: 22px; text-transform: uppercase;"> <?php echo sfConfig::get("app_contact")?> </h1>
                        </div>
                        <div class="col-xs-2 no-padding" style="font-size: 20px; margin-top: 30px; color: #6f6f6f">
                            <i class="fa fa-facebook" style="margin-right: 10px;"></i>
                            <i class="fa fa-twitter" style="margin-right: 10px;"></i>
                            <i class="fa fa-youtube-play" style="margin-right: 10px;"></i>
                            <i class="fa fa-google-plus"></i>
                        </div>
                    </div>
                    <p style="font-size: 18px ; color: #85a92a ;">Home > Contact </p>
                </div>
                <div class="row">
                    <div class="col-sm-7">
                        <h2>Bản đồ</h2>
                        <hr>
                        <img src="/images/map.jpg" alt="Chỉ đường phòng khám hoàng long" class="img img-responsive">
                    </div>
                    <div class="col-sm-5">
                        <h2>Liên lạc</h2>
                        <hr>
                        <div class="row">
                            <div class="col-xs-1">
                                <span class="glyphicon glyphicon-envelope"></span>
                            </div>
                            <div class="col-xs-10">
                                <i>Email</i><br>
                                Hỗ trợ thông tin<br><span style="color: #d66941">info@hoanglonghospital.vn</span><br><br>
                                Cơ hội việc làm<br><span style="color: #d66941">info@hoanglonghospital.vn</span>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-xs-1">
                                <span class="glyphicon glyphicon-phone-alt"></span>
                            </div>
                            <div class="col-xs-10">
                                <i>Điện thoại</i><br>
                                04 628 11 331 - 04 628 11 337
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-xs-1">
                                <span class="glyphicon glyphicon-phone-alt"></span>
                            </div>
                            <div class="col-xs-10">
                                <i>Trụ sở</i><br>
                                Tầng 10, tòa nhà VCCI số 9 Đào Duy Anh, Hà Nội
                            </div>
                        </div>
                        <br><br>
                    </div>
                </div>
                <div class="row text-center">
                    <span>Châm ngôn của chúng tôi là <h3><i><b>"SỨC KHỎE LÀ KHỞI NGUỒN CỦA HẠNH PHÚC!"</b></i></h3></span>
                </div>
            </div>
            <div class="right-menu">
                <div class="row make-shu" style=" background: #b9d96a">
                    <p class="no-margin"
                       style=" color :#ffffff;padding-top: 20px ; padding-left: 25px ; letter-spacing: 2px; font-size: 26px">
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
<script>
    $(".mega-dropdown").removeClass('menu-active');
    $(".mega-dropdown:nth-child(6)").addClass('menu-active');
    $(".mega-dropdown:nth-child(6)").click();
</script>
