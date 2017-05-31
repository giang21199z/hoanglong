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
      foreach ($this->getWidgetSchema()->getFields() as $field) {
          $field->setAttribute('class', 'form-control');
          $field->setAttribute('style', 'width: 50%');
      }
  }
}
