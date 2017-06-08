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
                            <h1 class="no-padding" style="margin-top: 22px">HOANG LONG NEWS </h1>
                        </div>
                        <div class="col-xs-2 no-padding" style="font-size: 20px; margin-top: 30px; color: #6f6f6f">
                            <i class="fa fa-facebook" style="margin-right: 10px;"></i>
                            <i class="fa fa-twitter" style="margin-right: 10px;"></i>
                            <i class="fa fa-youtube-play" style="margin-right: 10px;"></i>
                            <i class="fa fa-google-plus"></i>
                        </div>
                    </div>
                    <p style="font-size: 18px ; color: #85a92a ;">Home > <?php echo $category?></p>
                </div>
                <?php foreach ($news as $value): ?>
                    <div class="row items-new">
                        <div class="img-items">
                            <img src="/uploads/news/<?php echo $value['images'] ?>"
                                 style="width: 220px; height: 220px"/>
                        </div>
                        <div class="content-items" style="position: relative;">
                            <a style="text-decoration: none; color: black"
                               href="<?php echo url_for('detail_news', array('idnews' => $value['idnews'], 'title' => $value['title'])) ?>">
                                <p style="font-size: 20px ; color: #85a92a ;">
                                    <?php echo $value['title'] ?>
                                </p>
                            </a>

                            <p style="letter-spacing: 1px;font-size: 14px;line-height: 25px;">
                                <?php echo VtHelper::truncate($value['summary'], 200) ?>
                            </p>
                            <i style=" position: absolute;bottom: 0;left: 0; font-size: 16px; font-weight: bold">
                                <?php echo $value['updated_at'] ?>
                            </i>
                        </div>
                    </div>
                <?php endforeach ?>
                <div class="row text-center">
                    <?php for ($i = 1; $i <= $total / 5 + 1; $i++): ?>
                        <button style="background: #85a92a; border:  1px solid #85a92a;margin: 3px">
                            <p class="no-margin" style="color: #ffffff ; font-size: 12px;">
                                <?php echo $i; ?>
                            </p>
                        </button>
                    <?php endfor; ?>
                </div>
            </div>
            <div class="right-menu">
                <div class="row" style="background:#f6f6f6 ">
                    <p class=""
                       style=" letter-spacing: 1px; color:#ffffff ;height: 60px ; width:330px;padding-left: 15px ; font-size: 22px ;display: table-cell; vertical-align: middle; background: #b9d96a">
                        Tin tức </p>
                    <?php foreach ($category_news as $value): ?>
                        <div class="right-menu right-item">
                            <p class=" "
                               style="border-bottom : 1px solid #a0a0a0;letter-spacing: 1px; color:#4b4b4b ;height: 60px ; width:330px;padding-left: 15px ; font-size: 18px ;display: table-cell; vertical-align: middle;">
                                <a href="<?php echo url_for('list_news', array('idcategory' => $value['idcategory_news'], 'name' => $value['name'])) ?>"
                                   style="text-decoration: none; color: #000000"><?php echo $value['name'] ?></a>
                            </p>
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

<!-- section end -->
<script>
    $(".mega-dropdown").removeClass('menu-active');
    $(".mega-dropdown:nth-child(4)").addClass('menu-active');
    $(".mega-dropdown:nth-child(4)").click();
</script>