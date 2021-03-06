<?php

/**
 * Gallery form.
 *
 * @package    hoanglong
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class GalleryForm extends BaseGalleryForm
{
    public function configure()
    {
        foreach (CategoryGalleryTable::getAllCategory() as $value) {
//            var_dump($value);
            $list_category[$value['idcategory_gallery']] = $value['name'];
        }

        $this->setWidgets(array(
            'idgallery' => new sfWidgetFormInputHidden(),
            'name' => new sfWidgetFormTextarea(),
            'url' => new sfWidgetFormInputFile(),
            'category_gallery_idcategory_about_us' => new sfWidgetFormChoice(
                array(
                    'choices' => $list_category
                )
            ),
        ));

        $this->setValidators(array(
            'idgallery' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('idgallery')), 'empty_value' => $this->getObject()->get('idgallery'), 'required' => false)),
            'name' => new sfValidatorString(array('required' => false)),
            'url' => new sfValidatorFile(
                array(
                    'required' => false,
                    'path' => 'uploads/gallery',
                    'mime_types' => 'web_images',),
                array(
                    'max_size' => 'Ảnh vượt quá giới hạn cho phép. Kích thước tối đa 2MB',
                    'mime_types' => 'Không đúng định dạng',
                )
            ),
            'category_gallery_idcategory_about_us' => new sfValidatorInteger(),
        ));
        foreach ($this->getWidgetSchema()->getFields() as $field) {
            $field->setAttribute('class', 'form-control');
            $field->setAttribute('style', 'width: 50%');
        }
        $this->widgetSchema->setNameFormat('gallery[%s]');

        $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

        $this->setupInheritance();
    }
}
