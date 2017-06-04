<!-- banner start -->
<!-- ================ -->
<div class="banner row" style="height: 375px">
    <img src="/images/slide-danh-sach-bac-si.jpg" style="height: 375px; width: 100%">
</div>
<div class="row ip-content">
    <div class="row new-title doctor-detail">
        <div class="row">
            <div class="col-xs-8 no-padding">
                <h1 class="title-header" >OUR TEAM </h1>
            </div>
            <div class="col-xs-4 no-padding list-icon" style="">
                <i class="fa fa-google-plus"></i>
                <i class="fa fa-youtube-play"></i>
                <i class="fa fa-twitter"  ></i>
                <i class="fa fa-facebook" ></i>
            </div>
        </div>
        <p class="sub-title">
            Home > Our Team > <?php echo $doctor->getName()?>
        </p>
        <div class="row history-doctor" style="margin-top: 30px">
            <div class="col-xs-5  no-padding">
                <img src="/uploads/doctors/<?php echo $doctor->getAvatar()?>" class="img-responsive img-circle img-doc">
            </div>
            <div class="col-xs-7 text-center">
                <p class="name-doc">
                    <?php echo $doctor->getName()?>
                </p>
                <p class="birth-day">
                    <?php echo $doctor->getSpecialist()->getName();?>
                </p>
                <p class="description" >
                    <?php echo $doctor->getSummary()?>
                </p>
            </div>
        </div>
        <div class="row detail-history">
            <?php echo VtHelper::htmlToView($doctor->getContent())?>
        </div>
    </div>
</div>
<!-- section end -->