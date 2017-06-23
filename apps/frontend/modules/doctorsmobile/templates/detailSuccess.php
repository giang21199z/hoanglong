<div class="content_page ">
    <div class="row">
        <p class="no-margin" style="vertical-align: middle">
            <span class="text-header ">OUR TEAM </span>
            <span class="icon-contact" style="float: right">
              <i class="fa fa-facebook"></i>
              <i class="fa fa-twitter"></i>
              <i class="fa fa-youtube-play"></i>
              <i class="fa fa-google-plus"></i>
             </span>
        </p>

        <p class="sub-text-header">Home > Our Team> <?php echo $doctor->getName() ?></p>
    </div>
    <div class="row text-center doctor-details">
        <div class="col-xs-5 no-padding img-doctor text-center">
            <img src="/uploads/doctors/<?php echo $doctor->getAvatar() ?>" class="img-responsive text-center">
        </div>
        <div class="col-xs-7 doctor-detail">
            <h4 class="name-doctor no-margin">
                <?php echo $doctor->getName() ?>
            </h4>

            <p class="description">
                <?php echo $doctor->getSpecialist()->getName(); ?>
            </p>

            <p class="description">
                <?php echo $doctor->getSummary() ?>
            </p>
        </div>
    </div>
    <div class="row doctor-history">
        <p class="description">
            <?php echo VtHelper::htmlToView($doctor->getContent()) ?>
        </p>
    </div>


</div>
