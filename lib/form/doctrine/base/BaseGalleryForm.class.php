<?php

/**
 * Gallery form base class.
 *
 * @method Gallery getObject() Returns the current form's model object
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseGalleryForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'idgallery'                            => new sfWidgetFormInputHidden(),
      'name'                                 => new sfWidgetFormTextarea(),
      'url'                                  => new sfWidgetFormInputText(),
      'created_at'                           => new sfWidgetFormDateTime(),
      'updated_at'                           => new sfWidgetFormDateTime(),
      'category_gallery_idcategory_about_us' => new sfWidgetFormInputHidden(),
      'priority'                             => new sfWidgetFormInputText(),
    ));

    $this->setValidators(array(
      'idgallery'                            => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idgallery')), 'empty_value' => $this->getObject()->get('idgallery'), 'required' => false)),
      'name'                                 => new sfValidatorString(array('required' => false)),
      'url'                                  => new sfValidatorString(array('max_length' => 120, 'required' => false)),
      'created_at'                           => new sfValidatorDateTime(),
      'updated_at'                           => new sfValidatorDateTime(),
      'category_gallery_idcategory_about_us' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('category_gallery_idcategory_about_us')), 'empty_value' => $this->getObject()->get('category_gallery_idcategory_about_us'), 'required' => false)),
      'priority'                             => new sfValidatorInteger(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('gallery[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Gallery';
  }

}
