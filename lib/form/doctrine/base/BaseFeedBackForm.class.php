<?php

/**
 * FeedBack form base class.
 *
 * @method FeedBack getObject() Returns the current form's model object
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseFeedBackForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'idfeed_back'   => new sfWidgetFormInputHidden(),
      'name_customer' => new sfWidgetFormInputText(),
      'address'       => new sfWidgetFormInputText(),
      'avatar'        => new sfWidgetFormInputText(),
      'content'       => new sfWidgetFormTextarea(),
      'created_at'    => new sfWidgetFormDateTime(),
      'updated_at'    => new sfWidgetFormDateTime(),
    ));

    $this->setValidators(array(
      'idfeed_back'   => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idfeed_back')), 'empty_value' => $this->getObject()->get('idfeed_back'), 'required' => false)),
      'name_customer' => new sfValidatorString(array('max_length' => 45)),
      'address'       => new sfValidatorString(array('max_length' => 45)),
      'avatar'        => new sfValidatorString(array('max_length' => 120, 'required' => false)),
      'content'       => new sfValidatorString(array('required' => false)),
      'created_at'    => new sfValidatorDateTime(),
      'updated_at'    => new sfValidatorDateTime(),
    ));

    $this->widgetSchema->setNameFormat('feed_back[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'FeedBack';
  }

}
