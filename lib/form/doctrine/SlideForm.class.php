<?php

/**
 * Slide form.
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class SlideForm extends BaseSlideForm
{
  public function configure()
  {
      $this->setWidgets(array(
          'idslide' => new sfWidgetFormInputHidden(),
          'name' => new sfWidgetFormInputFile(),
          'images' => new sfWidgetFormInputText(),
      ));

      $this->setValidators(array(
          'idslide' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idslide')), 'empty_value' => $this->getObject()->get('idslide'), 'required' => false)),
          'images' => new sfValidatorFile(
              array(
                  'required' => false,
                  'path' => 'data1/images',
                  'mime_types' => 'web_images',),
              array(
                  'max_size' => 'Ảnh vượt quá giới hạn cho phép. Kích thước tối đa 2MB',
                  'mime_types' => 'Không đúng định dạng',
              )
          ),
          'name' => new sfValidatorString(array('max_length' => 45, 'required' => false)),
      ));

      $this->widgetSchema->setNameFormat('slide[%s]');

      $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

      $this->setupInheritance();
      foreach ($this->getWidgetSchema()->getFields() as $field) {
          $field->setAttribute('class', 'form-control');
          $field->setAttribute('style', 'width: 50%');
      }
  }
}
