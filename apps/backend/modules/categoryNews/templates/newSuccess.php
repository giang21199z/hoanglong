<?php use_helper('I18N', 'Date') ?>
<?php include_partial('categoryNews/assets') ?>

<div id="sf_admin_container">
    <h1><?php echo __('New CategoryNews', array(), 'messages') ?></h1>

    <?php include_partial('categoryNews/flashes') ?>

    <div id="sf_admin_header">
        <?php include_partial('categoryNews/form_header', array('category_news' => $category_news, 'form' => $form, 'configuration' => $configuration)) ?>
    </div>

    <div id="sf_admin_content">
        <?php include_partial('categoryNews/form', array('category_news' => $category_news, 'form' => $form, 'configuration' => $configuration, 'helper' => $helper)) ?>
    </div>

    <div id="sf_admin_footer">
        <?php include_partial('categoryNews/form_footer', array('category_news' => $category_news, 'form' => $form, 'configuration' => $configuration)) ?>
    </div>
</div>
<script>
    $(document).ready(function () {
        var number_menu = <?php echo Constant::$Number_Menu?>;
        $('.list-group-item').click(function () {
            console.log($(this).text());
            if ($(this).text() == "Back to list" || $('#category_news_parent option').length < number_menu) {
                return true;
            }
            else {
                swal("Đã tạo quá số lượng menu cấp 1 cho phép", "", "error");
                return false;
            }
            return true;
        });
    });
</script>