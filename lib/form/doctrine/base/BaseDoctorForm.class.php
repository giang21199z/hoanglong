<?php

/**
 * Doctor form base class.
 *
 * @method Doctor getObject() Returns the current form's model object
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseDoctorForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'iddoctor'                => new sfWidgetFormInputHidden(),
      'name'                    => new sfWidgetFormInputText(),
      'degree'                  => new sfWidgetFormTextarea(),
      'summary'                 => new sfWidgetFormTextarea(),
      'content'                 => new sfWidgetFormTextarea(),
      'avatar'                  => new sfWidgetFormInputText(),
      'created_at'              => new sfWidgetFormDateTime(),
      'updated_at'              => new sfWidgetFormDateTime(),
      'specialist_idspecialist' => new sfWidgetFormInputHidden(),
      'priority'                => new sfWidgetFormInputText(),
    ));

    $this->setValidators(array(
      'iddoctor'                => new sfValidatorChoice(array('choices' => array($this->getObject()->get('iddoctor')), 'empty_value' => $this->getObject()->get('iddoctor'), 'required' => false)),
      'name'                    => new sfValidatorString(array('max_length' => 45, 'required' => false)),
      'degree'                  => new sfValidatorString(array('required' => false)),
      'summary'                 => new sfValidatorString(array('required' => false)),
      'content'                 => new sfValidatorString(array('required' => false)),
      'avatar'                  => new sfValidatorString(array('max_length' => 120, 'required' => false)),
      'created_at'              => new sfValidatorDateTime(),
      'updated_at'              => new sfValidatorDateTime(),
      'specialist_idspecialist' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('specialist_idspecialist')), 'empty_value' => $this->getObject()->get('specialist_idspecialist'), 'required' => false)),
      'priority'                => new sfValidatorInteger(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('doctor[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Doctor';
  }

}
