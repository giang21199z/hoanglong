<?php use_helper('I18N', 'Date') ?>
<?php include_partial('aboutus/assets') ?>

<div id="sf_admin_container">
  <h1><?php echo __('New Aboutus', array(), 'messages') ?></h1>

  <?php include_partial('aboutus/flashes') ?>

  <div id="sf_admin_header">
    <?php include_partial('aboutus/form_header', array('about_us' => $about_us, 'form' => $form, 'configuration' => $configuration)) ?>
  </div>

  <div id="sf_admin_content">
    <?php include_partial('aboutus/form', array('about_us' => $about_us, 'form' => $form, 'configuration' => $configuration, 'helper' => $helper)) ?>
  </div>

  <div id="sf_admin_footer">
    <?php include_partial('aboutus/form_footer', array('about_us' => $about_us, 'form' => $form, 'configuration' => $configuration)) ?>
  </div>
</div>
<script type="text/javascript">
    CKEDITOR.replace("about_us_content",{
        filebrowserUploadUrl: "<?php echo url_for('upload_file')?>",
        "extraPlugins": "imagebrowser",
        "imageBrowser_listUrl": "<?php echo url_for('browser_image')?>"
    });
</script>