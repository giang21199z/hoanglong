<?php use_helper('I18N', 'Date') ?>
<?php include_partial('service/assets') ?>

<div id="sf_admin_container">
    <h1><?php echo __('New service', array(), 'messages') ?></h1>

    <?php include_partial('service/flashes') ?>

    <div id="sf_admin_header">
        <?php include_partial('service/form_header', array('service' => $service, 'form' => $form, 'configuration' => $configuration)) ?>
    </div>

    <div id="sf_admin_content">
        <?php include_partial('service/form', array('service' => $service, 'form' => $form, 'configuration' => $configuration, 'helper' => $helper)) ?>
    </div>

    <div id="sf_admin_footer">
        <?php include_partial('service/form_footer', array('service' => $service, 'form' => $form, 'configuration' => $configuration)) ?>
    </div>
</div>
<script type="text/javascript">
    CKEDITOR.replace("service_content",{
        filebrowserUploadUrl: "<?php echo url_for('upload_file')?>",
        "extraPlugins": "imagebrowser",
        "imageBrowser_listUrl": "<?php echo url_for('browser_image')?>"
    });
</script>