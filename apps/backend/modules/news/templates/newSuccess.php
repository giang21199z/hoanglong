<?php use_helper('I18N', 'Date') ?>
<?php include_partial('news/assets') ?>

<div id="sf_admin_container">
    <h1><?php echo __('New News', array(), 'messages') ?></h1>

    <?php include_partial('news/flashes') ?>

    <div id="sf_admin_header">
        <?php include_partial('news/form_header', array('news' => $news, 'form' => $form, 'configuration' => $configuration)) ?>
    </div>

    <div id="sf_admin_content">
        <?php include_partial('news/form', array('news' => $news, 'form' => $form, 'configuration' => $configuration, 'helper' => $helper)) ?>
    </div>

    <div id="sf_admin_footer">
        <?php include_partial('news/form_footer', array('news' => $news, 'form' => $form, 'configuration' => $configuration)) ?>
    </div>
</div>
<script type="text/javascript">
    CKEDITOR.replace("news_content",{
        filebrowserUploadUrl: "<?php echo url_for('upload_file')?>",
        "extraPlugins": "imagebrowser",
        "imageBrowser_listUrl": "<?php echo url_for('browser_image')?>",
        resize_dir: 'vertical'
    });
</script>