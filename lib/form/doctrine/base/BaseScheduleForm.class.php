<?php

/**
 * Schedule form base class.
 *
 * @method Schedule getObject() Returns the current form's model object
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseScheduleForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'idschedule'  => new sfWidgetFormInputHidden(),
      'fullname'    => new sfWidgetFormInputText(),
      'age'         => new sfWidgetFormInputText(),
      'time'        => new sfWidgetFormInputText(),
      'date'        => new sfWidgetFormInputText(),
      'description' => new sfWidgetFormTextarea(),
      'created_at'  => new sfWidgetFormDateTime(),
      'updated_at'  => new sfWidgetFormDateTime(),
    ));

    $this->setValidators(array(
      'idschedule'  => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idschedule')), 'empty_value' => $this->getObject()->get('idschedule'), 'required' => false)),
      'fullname'    => new sfValidatorString(array('max_length' => 45, 'required' => false)),
      'age'         => new sfValidatorInteger(array('required' => false)),
      'time'        => new sfValidatorString(array('max_length' => 10, 'required' => false)),
      'date'        => new sfValidatorString(array('max_length' => 10, 'required' => false)),
      'description' => new sfValidatorString(array('required' => false)),
      'created_at'  => new sfValidatorDateTime(),
      'updated_at'  => new sfValidatorDateTime(),
    ));

    $this->widgetSchema->setNameFormat('schedule[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Schedule';
  }

}
