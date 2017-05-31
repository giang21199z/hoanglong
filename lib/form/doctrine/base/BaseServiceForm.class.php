<?php

/**
 * Service form base class.
 *
 * @method Service getObject() Returns the current form's model object
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseServiceForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'idnews'                              => new sfWidgetFormInputHidden(),
      'images'                              => new sfWidgetFormInputText(),
      'title'                               => new sfWidgetFormTextarea(),
      'summary'                             => new sfWidgetFormTextarea(),
      'content'                             => new sfWidgetFormTextarea(),
      'created_at'                          => new sfWidgetFormDateTime(),
      'updated_at'                          => new sfWidgetFormDateTime(),
      'priority'                            => new sfWidgetFormInputText(),
      'category_service_idcategory_service' => new sfWidgetFormInputHidden(),
    ));

    $this->setValidators(array(
      'idnews'                              => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idnews')), 'empty_value' => $this->getObject()->get('idnews'), 'required' => false)),
      'images'                              => new sfValidatorString(array('max_length' => 120, 'required' => false)),
      'title'                               => new sfValidatorString(array('required' => false)),
      'summary'                             => new sfValidatorString(array('required' => false)),
      'content'                             => new sfValidatorString(array('required' => false)),
      'created_at'                          => new sfValidatorDateTime(),
      'updated_at'                          => new sfValidatorDateTime(),
      'priority'                            => new sfValidatorInteger(array('required' => false)),
      'category_service_idcategory_service' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('category_service_idcategory_service')), 'empty_value' => $this->getObject()->get('category_service_idcategory_service'), 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('service[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Service';
  }

}
