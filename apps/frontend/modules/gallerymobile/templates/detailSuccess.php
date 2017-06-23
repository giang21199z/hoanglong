<div class="content_page glist-allery">
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

        <p class="sub-text-header">Home > Gallery > Photos > Hoang Long Beauty </p>
    </div>
    <div class="row">
        <p class="description">
            <?php echo $category->getDescription() ?>
        </p>

        <div class="row">
            <?php foreach ($galleries as $value): ?>
                <div class="col-xs-6">
                    <img src="/uploads/gallery/<?php echo $value['url'] ?>" class="img-responsive">
                </div>
            <?php endforeach; ?>
        </div>
        <div class="row text-center">
            <?php for ($i = 1; $i <= $total / $page_size + 1; $i++): ?>
                <a href="<?php echo url_for('detail_list_gallery_mobile', array('id' => $value['id'], 'page' => $i - 1, 'total' => $total)) ?>">
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

</div>
