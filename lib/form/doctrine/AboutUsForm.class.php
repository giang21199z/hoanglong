<?php

/**
 * AboutUs form.
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class AboutUsForm extends BaseAboutUsForm
{
    public function configure()
    {
        $this->setWidgets(array(
            'idnews' => new sfWidgetFormInputHidden(),
            'images' => new sfWidgetFormInputFile(),
            'title' => new sfWidgetFormTextarea(),
            'summary' => new sfWidgetFormTextarea(),
            'content' => new sfWidgetFormTextarea(),
        ));

        $this->setValidators(array(
            'idnews' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idnews')), 'empty_value' => $this->getObject()->get('idnews'), 'required' => false)),
            'images' => new sfValidatorFile(
                array(
                    'required' => false,
                    'path' => 'uploads/aboutus',
                    'mime_types' => 'web_images',),
                array(
                    'max_size' => 'Ảnh vượt quá giới hạn cho phép. Kích thước tối đa 2MB',
                    'mime_types' => 'Không đúng định dạng',
                )
            ),
            'title' => new sfValidatorString(array('required' => false)),
            'summary' => new sfValidatorString(array('required' => false)),
            'content' => new sfValidatorString(array('required' => false)),
        ));

        foreach ($this->getWidgetSchema()->getFields() as $field) {
            $field->setAttribute('class', 'form-control');
            $field->setAttribute('style', 'width: 50%');
        }

        $this->widgetSchema->setNameFormat('about_us[%s]');

        $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

        $this->setupInheritance();
    }
}
