<!-- banner start -->
<!-- ================ -->
<div class="banner row" style="height: 375px">
    <img src="/images/slide-danh-sach-bac-si.jpg" style="height: 375px; width: 100%">
</div>
<div class="row ip-content">
    <div class="row new-title">
        <div class="row">
            <div class="col-xs-8 no-padding">
                <h1 class="title-header">Thư viện</h1>
            </div>
            <div class="col-xs-4 no-padding list-icon" style="">
                <i class="fa fa-google-plus"></i>
                <i class="fa fa-youtube-play"></i>
                <i class="fa fa-twitter"></i>
                <i class="fa fa-facebook"></i>
            </div>
        </div>
        <p class="sub-title">
            Home > Thư viện
        </p>
    </div>
    <div class="row list-news">
        <p style="line-height: 24px;letter-spacing: 2px; font-size: 17px;">
            <?php echo $category->getDescription() ?>
        </p>

        <div class="row" style="margin-top: 15px">
            <?php foreach ($galleries as $value): ?>
                <div class="col-xs-4 no-padding-left" style="margin-top: 15px">
                    <img src="/uploads/gallery/<?php echo $value['url'] ?>" class="img-responsive"
                         style="height: 130px; width: 100%" onclick="detailImage(this)"
                         alt="<?php echo $value['name'] ?>">
                </div>
            <?php endforeach ?>
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
</div>
<!-- section end -->
<!-- Modal detail image -->
<div id="detail-image" class="modal fade" role="dialog">
    <div class="modal-dialog text-center">

        <!-- Modal content-->

        <img src="" id="detail-src">

        <h3 id="name-img" class="text-uppercase" style="color: white"></h3>
    </div>
</div>
<script>
    function detailImage(img) {
        $('#detail-image').modal('toggle');
        $('#detail-src').attr('src', $(img).attr('src'));
        $('#name-img').text($(img).attr('alt'));
    }
</script>