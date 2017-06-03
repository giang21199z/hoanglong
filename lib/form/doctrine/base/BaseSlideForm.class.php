<?php

/**
 * Slide form base class.
 *
 * @method Slide getObject() Returns the current form's model object
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseSlideForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'idslide'    => new sfWidgetFormInputHidden(),
      'name'       => new sfWidgetFormInputText(),
      'images'     => new sfWidgetFormInputText(),
      'created_at' => new sfWidgetFormDateTime(),
      'updated_at' => new sfWidgetFormDateTime(),
    ));

    $this->setValidators(array(
      'idslide'    => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idslide')), 'empty_value' => $this->getObject()->get('idslide'), 'required' => false)),
      'name'       => new sfValidatorString(array('max_length' => 45, 'required' => false)),
      'images'     => new sfValidatorString(array('max_length' => 120, 'required' => false)),
      'created_at' => new sfValidatorDateTime(array('required' => false)),
      'updated_at' => new sfValidatorDateTime(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('slide[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Slide';
  }

}
