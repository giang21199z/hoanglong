<link href="https://cdn.rawgit.com/sachinchoolur/lightgallery.js/master/dist/css/lightgallery.css" rel="stylesheet">
<style type="text/css">
    .demo-gallery > ul {
        margin-bottom: 0;
    }

    .demo-gallery > ul > li {
        float: left;
        margin-bottom: 15px;
        width: 50%;
    }

    .demo-gallery > ul > li a {
        border: 3px solid #FFF;
        border-radius: 3px;
        display: block;
        overflow: hidden;
        position: relative;
        float: left;
    }

    .demo-gallery > ul > li a > img {
        -webkit-transition: -webkit-transform 0.15s ease 0s;
        -moz-transition: -moz-transform 0.15s ease 0s;
        -o-transition: -o-transform 0.15s ease 0s;
        transition: transform 0.15s ease 0s;
        -webkit-transform: scale3d(1, 1, 1);
        transform: scale3d(1, 1, 1);
        height: 100%;
        width: 100%;
    }

    .demo-gallery > ul > li a:hover > img {
        -webkit-transform: scale3d(1.1, 1.1, 1.1);
        transform: scale3d(1.1, 1.1, 1.1);
    }

    .demo-gallery > ul > li a:hover .demo-gallery-poster > img {
        opacity: 1;
    }

    .demo-gallery > ul > li a .demo-gallery-poster {
        background-color: rgba(0, 0, 0, 0.1);
        bottom: 0;
        left: 0;
        position: absolute;
        right: 0;
        top: 0;
        -webkit-transition: background-color 0.15s ease 0s;
        -o-transition: background-color 0.15s ease 0s;
        transition: background-color 0.15s ease 0s;
    }

    .demo-gallery > ul > li a .demo-gallery-poster > img {
        left: 50%;
        margin-left: -10px;
        margin-top: -10px;
        opacity: 0;
        position: absolute;
        top: 50%;
        -webkit-transition: opacity 0.3s ease 0s;
        -o-transition: opacity 0.3s ease 0s;
        transition: opacity 0.3s ease 0s;
    }

    .demo-gallery > ul > li a:hover .demo-gallery-poster {
        background-color: rgba(0, 0, 0, 0.5);
    }

    .demo-gallery .justified-gallery > a > img {
        -webkit-transition: -webkit-transform 0.15s ease 0s;
        -moz-transition: -moz-transform 0.15s ease 0s;
        -o-transition: -o-transform 0.15s ease 0s;
        transition: transform 0.15s ease 0s;
        -webkit-transform: scale3d(1, 1, 1);
        transform: scale3d(1, 1, 1);
        height: 100%;
        width: 100%;
    }

    .demo-gallery .justified-gallery > a:hover > img {
        -webkit-transform: scale3d(1.1, 1.1, 1.1);
        transform: scale3d(1.1, 1.1, 1.1);
    }

    .demo-gallery .justified-gallery > a:hover .demo-gallery-poster > img {
        opacity: 1;
    }

    .demo-gallery .justified-gallery > a .demo-gallery-poster {
        background-color: rgba(0, 0, 0, 0.1);
        bottom: 0;
        left: 0;
        position: absolute;
        right: 0;
        top: 0;
        -webkit-transition: background-color 0.15s ease 0s;
        -o-transition: background-color 0.15s ease 0s;
        transition: background-color 0.15s ease 0s;
    }

    .demo-gallery .justified-gallery > a .demo-gallery-poster > img {
        left: 50%;
        margin-left: -10px;
        margin-top: -10px;
        opacity: 0;
        position: absolute;
        top: 50%;
        -webkit-transition: opacity 0.3s ease 0s;
        -o-transition: opacity 0.3s ease 0s;
        transition: opacity 0.3s ease 0s;
    }

    .demo-gallery .justified-gallery > a:hover .demo-gallery-poster {
        background-color: rgba(0, 0, 0, 0.5);
    }

    .demo-gallery .video .demo-gallery-poster img {
        height: 48px;
        margin-left: -24px;
        margin-top: -24px;
        opacity: 0.8;
        width: 48px;
    }

    .demo-gallery.dark > ul > li a {
        border: 3px solid #04070a;
    }

    .home .demo-gallery {
        padding-bottom: 80px;
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
                    <p style="font-size: 18px ; color: #85a92a ; margin-top: 10px;"><a
                            href="<?php echo url_for('homepage') ?>" style="text-decoration: none; color: #8DAF39">
                            Trang chủ
                        </a> > <a href="<?php echo url_for('list_gallery') ?>"
                                  style="text-decoration: none; color: #8DAF39">
                            Thư viện ảnh
                        </a>
                        > <?php echo $category->getName() ?> </p>
                </div>
                <p style="line-height: 24px;letter-spacing: 2px; font-size: 17px; text-align: center">
                    <?php echo $category->getDescription() ?>
                </p>

                <div class="row home" style="margin-top: 15px">
                    <div class="demo-gallery">
                        <ul id="lightgallery" class="list-unstyled row">
                            <?php foreach ($galleries as $value): ?>
                                <li class="col-xs-6 col-sm-4 col-md-3"
                                    data-responsive="/uploads/gallery/<?php echo $value['url'] ?>"
                                    data-src="/uploads/gallery/<?php echo $value['url'] ?>"
                                    data-sub-html="<?php echo $value['name'] ?>"
                                    data-pinterest-text="Hoàng long hospital" data-tweet-text="Hoàng long hospital">
                                    <a href="">
                                        <img src="/uploads/gallery/<?php echo $value['url'] ?>" class="img-responsive"
                                             style="height: 200px; width: 100%"
                                             alt="<?php echo $value['name'] ?>">
                                    </a>
                                </li>
                            <?php endforeach ?>
                        </ul>
                    </div>
                </div>
                <div class="row text-center">
                    <?php for ($i = 1; $i <= $total / $page_size + 1; $i++): ?>
                        <a href="<?php echo url_for('detail_list_gallery', array('id' => $value['id'], 'page' => $i - 1, 'total' => $total)) ?>">
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
                        Thư viện </p>

                    <div class="right-menu right-item">
                        <a href="<?php echo url_for('list_gallery') ?>" style="text-decoration: none">
                            <p class=" "
                               style="border-bottom : 1px solid #a0a0a0;letter-spacing: 1px; color:#4b4b4b ;height: 60px ; width:330px;padding-left: 15px ; font-size: 18px ;display: table-cell; vertical-align: middle;">
                                Ảnh </p>
                        </a>
                    </div>
                    <div class="right-menu right-item">
                        <a href="<?php echo url_for('list_video', array('idvideo' => 1)) ?>" style="text-decoration: none">
                            <p class=" "
                               style="border-bottom : 1px solid #a0a0a0;letter-spacing: 1px; color:#4b4b4b ;height: 60px ; width:330px;padding-left: 15px ; font-size: 18px ;display: table-cell; vertical-align: middle;">
                                Video </p>
                        </a>
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
<script src="https://cdn.jsdelivr.net/picturefill/2.3.1/picturefill.min.js"></script>
<script src="https://cdn.rawgit.com/sachinchoolur/lightgallery.js/master/dist/js/lightgallery.js"></script>
<script src="https://cdn.rawgit.com/sachinchoolur/lg-pager.js/master/dist/lg-pager.js"></script>
<script src="https://cdn.rawgit.com/sachinchoolur/lg-autoplay.js/master/dist/lg-autoplay.js"></script>
<script src="https://cdn.rawgit.com/sachinchoolur/lg-fullscreen.js/master/dist/lg-fullscreen.js"></script>
<script src="https://cdn.rawgit.com/sachinchoolur/lg-zoom.js/master/dist/lg-zoom.js"></script>
<script src="https://cdn.rawgit.com/sachinchoolur/lg-hash.js/master/dist/lg-hash.js"></script>
<script src="https://cdn.rawgit.com/sachinchoolur/lg-share.js/master/dist/lg-share.js"></script>
<script>
    lightGallery(document.getElementById('lightgallery'), {
        thumbnail: true
    });
</script>
<!-- Modal detail image -->
<div id="detail-image" class="modal fade" role="dialog">
    <div class="modal-dialog text-center">

        <!-- Modal content-->

        <img src="" id="detail-src">

        <h3 id="name-img" class="text-uppercase" style="color: white"></h3>
    </div>
</div>
<!-- section end -->