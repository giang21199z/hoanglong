<?php use_helper('I18N', 'Date') ?>
<?php include_partial('categoryNews/assets') ?>

<div id="sf_admin_container">
  <h1><?php echo __('Edit CategoryNews', array(), 'messages') ?></h1>

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
    $(document).ready(function(){
        if($("#category_news_name").val() == "Thư mục gốc"){
            $("#category_news_name").prop({disabled: true});
        }
        if($("#category_news_parent").val() == "1"){
            $("#category_news_parent").prop({disabled: true});
        }
    });

</script>