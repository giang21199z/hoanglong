<?php

/**
 * Slide filter form.
 *
 * @package    hoanglong
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class SlideFormFilter extends BaseSlideFormFilter
{
  public function configure()
  {
      foreach ($this->getWidgetSchema()->getFields() as $field) {
          $field->setAttribute('class', 'form-control');
          $field->setAttribute('style', 'width: 50%');
          $field->addOption('with_empty', false);
      }
  }
}
