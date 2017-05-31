<?php

/**
 * CategoryNews form.
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class CategoryNewsForm extends BaseCategoryNewsForm
{
    public function configure()
    {

        $this->setWidgets(array(
            'idcategory_news' => new sfWidgetFormInputHidden(),
            'name' => new sfWidgetFormTextarea(),
        ));

        $this->setValidators(array(
            'idcategory_news' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idcategory_news')), 'empty_value' => $this->getObject()->get('idcategory_news'), 'required' => false)),
            'name' => new sfValidatorString(array('required' => false)),
        ));

        foreach ($this->getWidgetSchema()->getFields() as $field) {
            $field->setAttribute('class', 'form-control');
            $field->setAttribute('style', 'width: 50%');
        }

        $this->widgetSchema->setNameFormat('category_news[%s]');

        $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

        $this->setupInheritance();
    }
}
