<?php

/**
 * CategoryService form.
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class CategoryServiceForm extends BaseCategoryServiceForm
{
  public function configure()
  {
      $this->setWidgets(array(
          'idcategory_service' => new sfWidgetFormInputHidden(),
          'name'       => new sfWidgetFormTextarea(),
      ));

      $this->setValidators(array(
          'idcategory_service' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idcategory_service')), 'empty_value' => $this->getObject()->get('idcategory_service'), 'required' => false)),
          'name'       => new sfValidatorString(array('required' => false)),
      ));

      foreach ($this->getWidgetSchema()->getFields() as $field) {
          $field->setAttribute('class', 'form-control');
          $field->setAttribute('style', 'width: 50%');
      }

      $this->widgetSchema->setNameFormat('category_service[%s]');

      $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

      $this->setupInheritance();
  }
}
