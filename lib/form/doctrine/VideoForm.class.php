<?php

/**
 * Video form.
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class VideoForm extends BaseVideoForm
{
  public function configure()
  {
      foreach (CategoryVideoTable::getAllCategory() as $value) {
//            var_dump($value);
          $list_category[$value['idcategory_video']] = $value['name'];
      }
      $this->setWidgets(array(
          'idvideo'                         => new sfWidgetFormInputHidden(),
          'name'                            => new sfWidgetFormInputText(),
          'url'                             => new sfWidgetFormInputText(),
          'description'                     => new sfWidgetFormTextarea(),
          'category_video_idcategory_video' => new sfWidgetFormChoice(
              array(
                  'choices' => $list_category
              )
          ),
      ));

      $this->setValidators(array(
          'idvideo'                         => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idvideo')), 'empty_value' => $this->getObject()->get('idvideo'), 'required' => false)),
          'name'                            => new sfValidatorString(array('max_length' => 120, 'required' => false)),
          'url'                             => new sfValidatorString(array('max_length' => 200, 'required' => false)),
          'description'                     => new sfValidatorString(array('required' => false)),
          'category_video_idcategory_video' => new sfValidatorInteger(),
      ));

      $this->widgetSchema->setNameFormat('video[%s]');

      $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

      $this->setupInheritance();
      foreach ($this->getWidgetSchema()->getFields() as $field) {
          $field->setAttribute('class', 'form-control');
          $field->setAttribute('style', 'width: 50%');
      }
  }
}
