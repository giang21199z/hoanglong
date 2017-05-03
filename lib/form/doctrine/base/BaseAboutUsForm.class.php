<?php

/**
 * AboutUs form base class.
 *
 * @method AboutUs getObject() Returns the current form's model object
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseAboutUsForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'idabout_us' => new sfWidgetFormInputHidden(),
      'summary'    => new sfWidgetFormTextarea(),
      'content'    => new sfWidgetFormTextarea(),
      'image'      => new sfWidgetFormInputText(),
      'created_at' => new sfWidgetFormDateTime(),
      'updated_at' => new sfWidgetFormDateTime(),
    ));

    $this->setValidators(array(
      'idabout_us' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idabout_us')), 'empty_value' => $this->getObject()->get('idabout_us'), 'required' => false)),
      'summary'    => new sfValidatorString(array('required' => false)),
      'content'    => new sfValidatorString(array('required' => false)),
      'image'      => new sfValidatorString(array('max_length' => 120, 'required' => false)),
      'created_at' => new sfValidatorDateTime(),
      'updated_at' => new sfValidatorDateTime(),
    ));

    $this->widgetSchema->setNameFormat('about_us[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'AboutUs';
  }

}
