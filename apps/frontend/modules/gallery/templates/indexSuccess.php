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
                    <p style="font-size: 18px ; color: #85a92a ;">Thư viện > Ảnh </p>
                </div>
                <div class="row ">
                    <div class="row">
                        <?php foreach ($categories as $value): ?>
                            <div class="col-xs-6 no-padding-left" style="margin-bottom: 10px">
                                <a href="<?php echo url_for('detail_list_gallery', array('id' => $value['idcategory_gallery']))?>" style="text-decoration: none">
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
                    </div>
                </div>
                <div class="row text-center" style="margin-bottom: 50px ; margin-top: 20px">
                    <button style="background: #85a92a; border:  1px solid #85a92a;margin: 3px">
                        <p class="no-margin" style="color: #ffffff ; font-size: 12px;">
                            1
                        </p>
                    </button>
                    <button style="background: #ffffff; border:  1px solid #85a92a ;margin: 3px">
                        <p class="no-margin" style="color: #85a92a ; font-size: 12px;">
                            2
                        </p>
                    </button>
                    <button style="background: #ffffff; border:  1px solid #85a92a;margin: 3px">
                        <p class="no-margin" style="color: #85a92a ; font-size: 12px;">
                            3
                        </p>
                    </button>
                    <button style="background: #ffffff; border:  1px solid #85a92a;margin: 3px">
                        <p class="no-margin" style="color: #85a92a ; font-size: 12px;">
                            4
                        </p>
                    </button>
                    <button style="background: #ffffff; border:  1px solid #85a92a;margin: 3px">
                        <p class="no-margin" style="color: #85a92a ; font-size: 12px;">
                            5
                        </p>
                    </button>
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
                        MAKE SCHEDULE</p>

                    <div class="row"
                         style="font-size: 16px;padding-left: 25px;padding-right: 25px ; letter-spacing: 1px;">
                        <p style="color: #ffffff">
                            Lorem Ipsum is simply dummy text of the printing.
                        </p>
                        <input type="text" class="form-control" placeholder="Full Name">
                        <input type="text" class="form-control" placeholder="Age">
                        <input type="number" class="form-control" placeholder="Phone Number">

                        <div class="row">
                            <div class="col-xs-6 no-padding" style="padding-right: 4px">
                                <input type="number" class="form-control" placeholder="Date">
                            </div>
                            <div class="col-xs-6 no-padding" style="padding-left: 4px">
                                <input type="number" class="form-control" placeholder="Month">
                            </div>
                        </div>
                        <input type="text" class="form-control" placeholder="Title">
                        <textarea class="form-control" style="height: 140px" placeholder="Description"></textarea>

                        <div class="row text-center ">
                            <button class="btn text-center schedule-btn">
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
