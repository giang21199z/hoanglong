<?php

/**
 * News form.
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class NewsForm extends BaseNewsForm
{
    public function configure()
    {

        foreach (CategoryNewsTable::getAllCategoryWhenCreate() as $value) {
//            var_dump($value);
            $list_category[$value['idcategory_news']] = $value['name'];
        }

        $this->setWidgets(array(
            'images' => new sfWidgetFormInputFile(),
            'title' => new sfWidgetFormTextarea(),
            'summary' => new sfWidgetFormTextarea(),
            'content' => new sfWidgetFormTextarea(),
            'category_news_idcategory' => new sfWidgetFormChoice(
                array(
                    'choices' => $list_category
                )
            ),
            'priority' => new sfWidgetFormChoice(
                array(
                    'choices' => Constant::$Display_Homepage_Cbx
                )
            ),
        ));

        $this->setValidators(array(
            'images' => new sfValidatorFile(
                array(
                    'required' => false,
                    'path' => 'uploads/news',
                    'mime_types' => 'web_images',),
                array(
                    'max_size' => 'Ảnh vượt quá giới hạn cho phép. Kích thước tối đa 2MB',
                    'mime_types' => 'Không đúng định dạng',
                )
            ),
            'title' => new sfValidatorString(array('required' => false)),
            'summary' => new sfValidatorString(array('required' => false)),
            'content' => new sfValidatorString(array('required' => false)),
            'category_news_idcategory' => new sfValidatorInteger(),
            'priority' => new sfValidatorInteger(),
        ));

        foreach ($this->getWidgetSchema()->getFields() as $field) {
            $field->setAttribute('class', 'form-control');
            $field->setAttribute('style', 'width: 50%');
        }

        $this->widgetSchema->setNameFormat('news[%s]');

        $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

        $this->setupInheritance();

    }
}
