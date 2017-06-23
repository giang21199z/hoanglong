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

        <p class="sub-text-header">Home > Our Team> All</p>
    </div>
    <div class="row list-doctor">
        <?php foreach ($doctors as $doctor): ?>
            <a href="<?php echo url_for('detail_doctor_mobile', array('iddoctor' => $doctor['iddoctor'], 'name' => $doctor['name'])) ?>" style="text-decoration: none; color: #000000">
                <div class="col-xs-4  doctor">
                    <img src="/uploads/doctors/<?php echo $doctor['avatar'] ?>" class="img-responsive img-circle">
                    <h4 class="doctor_name text-center">
                        <?php echo $doctor['name'] ?>
                    </h4>
                    <h5 class="pro text-center">
                        <?php echo $doctor['degree'] ?>
                    </h5>

                    <p class="description text-center">
                        <?php echo VtHelper::truncate($doctor['summary'], 50) ?>
                    </p>
                </div>
            </a>
        <?php endforeach ?>

    </div>
</div>
