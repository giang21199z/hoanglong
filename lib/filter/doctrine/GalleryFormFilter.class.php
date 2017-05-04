<?php

/**
 * Gallery filter form.
 *
 * @package    hoanglong
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class GalleryFormFilter extends BaseGalleryFormFilter
{
  public function configure()
  {
      $this->setWidgets(array(
          'name'       => new sfWidgetFormFilterInput(),
          'url'        => new sfWidgetFormFilterInput(),
      ));

      $this->setValidators(array(
          'name'       => new sfValidatorPass(array('required' => false)),
          'url'        => new sfValidatorPass(array('required' => false)),
      ));

      $this->widgetSchema->setNameFormat('gallery_filters[%s]');

      $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

      $this->setupInheritance();
  }
}
