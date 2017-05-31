<?php

/**
 * CategoryGallery form base class.
 *
 * @method CategoryGallery getObject() Returns the current form's model object
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseCategoryGalleryForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'idcategory_gallery' => new sfWidgetFormInputHidden(),
      'name'               => new sfWidgetFormInputText(),
      'created_at'         => new sfWidgetFormDateTime(),
      'updated_at'         => new sfWidgetFormDateTime(),
    ));

    $this->setValidators(array(
      'idcategory_gallery' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idcategory_gallery')), 'empty_value' => $this->getObject()->get('idcategory_gallery'), 'required' => false)),
      'name'               => new sfValidatorString(array('max_length' => 45, 'required' => false)),
      'created_at'         => new sfValidatorDateTime(array('required' => false)),
      'updated_at'         => new sfValidatorDateTime(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('category_gallery[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'CategoryGallery';
  }

}
