<?php use_helper('I18N', 'Date') ?>
<?php include_partial('categoryGallery/assets') ?>

<div id="sf_admin_container">
  <h1><?php echo __('New CategoryGallery', array(), 'messages') ?></h1>

  <?php include_partial('categoryGallery/flashes') ?>

  <div id="sf_admin_header">
    <?php include_partial('categoryGallery/form_header', array('category_gallery' => $category_gallery, 'form' => $form, 'configuration' => $configuration)) ?>
  </div>

  <div id="sf_admin_content">
    <?php include_partial('categoryGallery/form', array('category_gallery' => $category_gallery, 'form' => $form, 'configuration' => $configuration, 'helper' => $helper)) ?>
  </div>

  <div id="sf_admin_footer">
    <?php include_partial('categoryGallery/form_footer', array('category_gallery' => $category_gallery, 'form' => $form, 'configuration' => $configuration)) ?>
  </div>
</div>
