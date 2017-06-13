<?php

/**
 * Video form base class.
 *
 * @method Video getObject() Returns the current form's model object
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseVideoForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'idvideo'                         => new sfWidgetFormInputHidden(),
      'name'                            => new sfWidgetFormInputText(),
      'url'                             => new sfWidgetFormInputText(),
      'description'                     => new sfWidgetFormTextarea(),
      'created_at'                      => new sfWidgetFormDateTime(),
      'updated_at'                      => new sfWidgetFormDateTime(),
      'category_video_idcategory_video' => new sfWidgetFormInputHidden(),
    ));

    $this->setValidators(array(
      'idvideo'                         => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idvideo')), 'empty_value' => $this->getObject()->get('idvideo'), 'required' => false)),
      'name'                            => new sfValidatorString(array('max_length' => 120, 'required' => false)),
      'url'                             => new sfValidatorString(array('max_length' => 200, 'required' => false)),
      'description'                     => new sfValidatorString(array('required' => false)),
      'created_at'                      => new sfValidatorDateTime(),
      'updated_at'                      => new sfValidatorDateTime(),
      'category_video_idcategory_video' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('category_video_idcategory_video')), 'empty_value' => $this->getObject()->get('category_video_idcategory_video'), 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('video[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Video';
  }

}
