<?php

/**
 * Doctor form.
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class DoctorForm extends BaseDoctorForm
{
    public function configure()
    {
        foreach (SpecialistTable::getAllCategory() as $value) {
//            var_dump($value);
            $list_category[$value['idspecialist']] = $value['name'];
        }

        $this->setWidgets(array(
            'iddoctor' => new sfWidgetFormInputHidden(),
            'name' => new sfWidgetFormInputText(),
            'degree' => new sfWidgetFormTextarea(),
            'summary' => new sfWidgetFormTextarea(),
            'content' => new sfWidgetFormTextarea(),
            'specialist_idspecialist' => new sfWidgetFormChoice(
                array(
                    'choices' => $list_category
                )
            ),
            'avatar' => new sfWidgetFormInputFile(),
        ));

        $this->setValidators(array(
            'iddoctor' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('iddoctor')), 'empty_value' => $this->getObject()->get('iddoctor'), 'required' => false)),
            'name' => new sfValidatorString(array('max_length' => 45, 'required' => false)),
            'degree' => new sfValidatorString(array('required' => false)),
            'summary' => new sfValidatorString(array('required' => false)),
            'content' => new sfValidatorString(array('required' => false)),
            'specialist_idspecialist' => new sfValidatorInteger(),
            'avatar' => new sfValidatorFile(
                array(
                    'required' => false,
                    'path' => 'uploads/doctors',
                    'mime_types' => 'web_images',),
                array(
                    'max_size' => 'Ảnh vượt quá giới hạn cho phép. Kích thước tối đa 2MB',
                    'mime_types' => 'Không đúng định dạng',
                )
            ),
        ));

        foreach ($this->getWidgetSchema()->getFields() as $field) {
            $field->setAttribute('class', 'form-control');
            $field->setAttribute('style', 'width: 50%');
        }

        $this->widgetSchema->setNameFormat('doctor[%s]');

        $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

        $this->setupInheritance();
    }
}
