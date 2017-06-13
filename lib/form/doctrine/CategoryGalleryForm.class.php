<?php

/**
 * CategoryGallery form.
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class CategoryGalleryForm extends BaseCategoryGalleryForm
{
  public function configure()
  {
      $this->setWidgets(array(
          'idcategory_gallery' => new sfWidgetFormInputHidden(),
          'name'               => new sfWidgetFormInputText(),
          'description'        => new sfWidgetFormTextarea(),
      ));

      $this->setValidators(array(
          'idcategory_gallery' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idcategory_gallery')), 'empty_value' => $this->getObject()->get('idcategory_gallery'), 'required' => false)),
          'name'               => new sfValidatorString(array('max_length' => 45, 'required' => false)),
          'description'        => new sfValidatorString(array('required' => false)),
      ));
      $this->widgetSchema->setNameFormat('category_gallery[%s]');

      $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

      $this->setupInheritance();

      foreach ($this->getWidgetSchema()->getFields() as $field) {
          $field->setAttribute('class', 'form-control');
          $field->setAttribute('style', 'width: 50%');
      }
  }
}
