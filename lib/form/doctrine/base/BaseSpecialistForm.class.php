<?php

/**
 * Specialist form base class.
 *
 * @method Specialist getObject() Returns the current form's model object
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseSpecialistForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'idspecialist' => new sfWidgetFormInputHidden(),
      'name'         => new sfWidgetFormTextarea(),
      'order_item'   => new sfWidgetFormInputText(),
      'created_at'   => new sfWidgetFormDateTime(),
      'updated_at'   => new sfWidgetFormDateTime(),
    ));

    $this->setValidators(array(
      'idspecialist' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idspecialist')), 'empty_value' => $this->getObject()->get('idspecialist'), 'required' => false)),
      'name'         => new sfValidatorString(array('required' => false)),
      'order_item'   => new sfValidatorInteger(array('required' => false)),
      'created_at'   => new sfValidatorDateTime(),
      'updated_at'   => new sfValidatorDateTime(),
    ));

    $this->widgetSchema->setNameFormat('specialist[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Specialist';
  }

}
