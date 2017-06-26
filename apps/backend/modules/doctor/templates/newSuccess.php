<?php use_helper('I18N', 'Date') ?>
<?php include_partial('doctor/assets') ?>

<div id="sf_admin_container">
  <h1><?php echo __('New Doctor', array(), 'messages') ?></h1>

  <?php include_partial('doctor/flashes') ?>

  <div id="sf_admin_header">
    <?php include_partial('doctor/form_header', array('doctor' => $doctor, 'form' => $form, 'configuration' => $configuration)) ?>
  </div>

  <div id="sf_admin_content">
    <?php include_partial('doctor/form', array('doctor' => $doctor, 'form' => $form, 'configuration' => $configuration, 'helper' => $helper)) ?>
  </div>

  <div id="sf_admin_footer">
    <?php include_partial('doctor/form_footer', array('doctor' => $doctor, 'form' => $form, 'configuration' => $configuration)) ?>
  </div>
</div>
<script type="text/javascript">
    CKEDITOR.replace("doctor_content",{
        filebrowserUploadUrl: "<?php echo url_for('upload_file')?>",
        "extraPlugins": "imagebrowser",
        "imageBrowser_listUrl": "<?php echo url_for('browser_image')?>"
    });
</script>