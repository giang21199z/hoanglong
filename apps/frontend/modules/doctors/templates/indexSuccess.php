<!-- banner start -->
<!-- ================ -->
<div class="row" style="height: 510px">
    <img src="images/slide-danh-sach-bac-si.jpg" style="height: 510px; width: 100%">
</div>
<!-- banner end -->

<!-- section start -->
<!-- ================ -->
<div class="row page-ourteam" data-animation-effect="fadeIn">
    <div class="container">
        <div class="row" style="width: 1170px">
            <div class="left-content">
                <div class="row new-title">
                    <div class="row">
                        <div class="col-xs-10 no-padding">
                            <h1 class="no-padding" style="margin-top: 22px"> OUR TEAM-OUR </h1>
                        </div>
                        <div class="col-xs-2 no-padding" style="font-size: 20px; margin-top: 30px; color: #6f6f6f">
                            <i class="fa fa-facebook" style="margin-right: 10px;"></i>
                            <i class="fa fa-twitter" style="margin-right: 10px;"></i>
                            <i class="fa fa-youtube-play" style="margin-right: 10px;"></i>
                            <i class="fa fa-google-plus"></i>
                        </div>
                    </div>
                    <p class="p-title">Home > Our Team > All</p>
                </div>

                <?php for ($i = 0; $i < count($doctors);): ?>
                    <div class="row list-mem">
                        <?php
                        $temp = $i;
                        for ($j = $temp; $j < $temp + 3 && $j < count($doctors); $j++, $i++):?>
                            <div class="col-xs-4">
                                <div class="row text-center">
                                    <img src="uploads/doctors/<?php echo $doctors[$j]['avatar']?>" class="img-circle">
                                </div>
                                <div class="row text-center">
                                    <p class=" no-margin name">
                                        <?php echo $doctors[$j]['name']?>
                                    </p>

                                    <p class="work">
                                        <?php echo $doctors[$j]['degree']?>
                                    </p>

                                    <p class="description">
                                        <?php echo VtHelper::truncate($doctors[$j]['summary'], 50)?>
                                    </p>
                                    <a href="<?php echo url_for('detail_doctor', array('iddoctor' => $doctors[$j]['iddoctor']))?>">
                                        <button style="background: #ffffff; border:  1px solid #85a92a">
                                            <p class="no-margin" style="color: #85a92a ; font-size: 12px;">
                                                READ MORE
                                            </p>
                                        </button>
                                    </a>
                                </div>
                            </div>
                        <?php endfor; ?>
                    </div>
                <?php endfor; ?>
            </div>
            <div class="right-menu">
                <div class="row" style="background:#f6f6f6 ">
                    <p class=""
                       style=" letter-spacing: 1px; color:#ffffff ;height: 60px ; width:330px;padding-left: 15px ; font-size: 22px ;display: table-cell; vertical-align: middle; background: #b9d96a">
                        OUR TEAM </p>

                    <div class="right-menu right-item">
                        <p class=" "
                           style="border-bottom : 1px solid #a0a0a0;letter-spacing: 1px; color:#4b4b4b ;height: 60px ; width:330px;padding-left: 15px ; font-size: 18px ;display: table-cell; vertical-align: middle;">
                            All </p>
                    </div>
                    <?php foreach ($spacialist as $value): ?>
                        <div class="right-menu right-item">
                            <p class=" "
                               style="border-bottom : 1px solid #a0a0a0;letter-spacing: 1px; color:#4b4b4b ;height: 60px ; width:330px;padding-left: 15px ; font-size: 18px ;display: table-cell; vertical-align: middle;">
                                <?php echo $value['name'] ?> </p>
                        </div>
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
                        <input type="text" class="form-control" id="fullname" placeholder="Full Name">
                        <input type="text" class="form-control" id="age" placeholder="Age">
                        <input type="number" class="form-control" id="phone" placeholder="Phone Number">
                        <input type="text" class="form-control" id="date" placeholder="Date">
                        <textarea class="form-control" style="height: 140px" id="description"
                                  placeholder="Description"></textarea>

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