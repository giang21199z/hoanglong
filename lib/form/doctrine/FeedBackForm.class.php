<?php

/**
 * FeedBack form.
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class FeedBackForm extends BaseFeedBackForm
{
    public function configure()
    {
        $this->setWidgets(array(
            'idfeed_back' => new sfWidgetFormInputHidden(),
            'name_customer' => new sfWidgetFormInputText(),
            'address' => new sfWidgetFormInputText(),
            'avatar' => new sfWidgetFormInputFile(),
            'content' => new sfWidgetFormTextarea(),
        ));

        $this->setValidators(array(
            'idfeed_back' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idfeed_back')), 'empty_value' => $this->getObject()->get('idfeed_back'), 'required' => false)),
            'name_customer' => new sfValidatorString(array('max_length' => 45)),
            'address' => new sfValidatorString(array('max_length' => 45)),
            'avatar' => new sfValidatorFile(
                array(
                    'required' => false,
                    'path' => 'uploads/feedback',
                    'mime_types' => 'web_images',),
                array(
                    'max_size' => 'Ảnh vượt quá giới hạn cho phép. Kích thước tối đa 2MB',
                    'mime_types' => 'Không đúng định dạng',
                )
            ),
            'content' => new sfValidatorString(array('required' => false)),
        ));
        foreach ($this->getWidgetSchema()->getFields() as $field) {
            $field->setAttribute('class', 'form-control');
            $field->setAttribute('style', 'width: 50%');
        }
        $this->widgetSchema->setNameFormat('feed_back[%s]');

        $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

        $this->setupInheritance();
    }
}
