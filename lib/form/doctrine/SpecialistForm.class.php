<?php

/**
 * Specialist form.
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class SpecialistForm extends BaseSpecialistForm
{
    public function configure()
    {
        $this->setWidgets(array(
            'idspecialist' => new sfWidgetFormInputHidden(),
            'name' => new sfWidgetFormTextarea(),
        ));

        $this->setValidators(array(
            'idspecialist' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idspecialist')), 'empty_value' => $this->getObject()->get('idspecialist'), 'required' => false)),
            'name' => new sfValidatorString(array('required' => false)),
        ));
        foreach ($this->getWidgetSchema()->getFields() as $field) {
            $field->setAttribute('class', 'form-control');
            $field->setAttribute('style', 'width: 50%');
        }
        $this->widgetSchema->setNameFormat('specialist[%s]');

        $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

        $this->setupInheritance();
    }
}
