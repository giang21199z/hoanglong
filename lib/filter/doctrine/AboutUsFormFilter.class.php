<?php

/**
 * AboutUs filter form.
 *
 * @package    hoanglong
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class AboutUsFormFilter extends BaseAboutUsFormFilter
{
    public function configure()
    {
        $this->setWidgets(array(
            'title' => new sfWidgetFormFilterInput(),
        ));

        $this->setValidators(array(
            'title' => new sfValidatorPass(array('required' => false)),
        ));

        foreach ($this->getWidgetSchema()->getFields() as $field) {
            $field->setAttribute('class', 'form-control');
            $field->setAttribute('style', 'width: 50%');
            $field->addOption('with_empty', false);
        }
        $this->widgetSchema->setNameFormat('about_us_filters[%s]');

        $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

        $this->setupInheritance();
    }
}
