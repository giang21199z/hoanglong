<div class="content_page about-us">
    <div class="row">
        <p class="no-margin" style="vertical-align: middle">
            <span class="text-header "> About Clinic</span>
            <span class="icon-contact" style="float: right">
              <i class="fa fa-facebook"></i>
              <i class="fa fa-twitter"></i>
              <i class="fa fa-youtube-play"></i>
              <i class="fa fa-google-plus"></i>
             </span>
        </p>
        <p class="sub-text-header">Home > <?php echo $news->getTitle()?>  </p>
    </div>
    <div class="row">
        <p class="description">
            <?php echo html_entity_decode($news->getContent()) ?>
        </p>
    </div>

</div>