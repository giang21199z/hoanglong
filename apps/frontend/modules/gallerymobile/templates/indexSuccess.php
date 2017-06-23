<div class="content_page gallery">
    <div class="row">
        <p class="no-margin" style="vertical-align: middle">
            <span class="text-header ">Gallery</span>
            <span class="icon-contact" style="float: right">
              <i class="fa fa-facebook"></i>
              <i class="fa fa-twitter"></i>
              <i class="fa fa-youtube-play"></i>
              <i class="fa fa-google-plus"></i>
             </span>
        </p>

        <p class="sub-text-header">Home > Gallery > Photos </p>
    </div>
    <div class="row">
        <?php foreach ($categories as $value): ?>
            <div class="col-xs-6">

                <div class="row item-gallery">
                    <div class="row number-image text-center">
                        <p class="total-image">  <?php echo $value['number'] ?></p>
                    </div>

                    <img src="/uploads/gallery/<?php echo $value['images'][0]['url'] ?>" class="img-responsive">
                    <a href="<?php echo url_for('detail_list_gallery_mobile', array('id' => $value['idcategory_gallery'], 'total' => $value['number'])) ?>"

                    <p class="name-gallery"> <?php echo VtHelper::truncate($value['description'], 100) ?></p>
                    </a>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <div class="row text-center paginations" style="margin-top: 25px;">
        <?php for ($i = 1; $i <= $total / 5 + 1; $i++): ?>
            <button class="pa-active">
                <p class="no-margin">
                    <?php echo $i; ?>
                </p>
            </button>
        <?php endfor; ?>
    </div>

</div>