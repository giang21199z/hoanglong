<?php

/**
 * Service filter form base class.
 *
 * @package    hoanglong
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseServiceFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'images'                              => new sfWidgetFormFilterInput(),
      'title'                               => new sfWidgetFormFilterInput(),
      'summary'                             => new sfWidgetFormFilterInput(),
      'content'                             => new sfWidgetFormFilterInput(),
      'created_at'                          => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'updated_at'                          => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'priority'                            => new sfWidgetFormFilterInput(),
      'views'                               => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'images'                              => new sfValidatorPass(array('required' => false)),
      'title'                               => new sfValidatorPass(array('required' => false)),
      'summary'                             => new sfValidatorPass(array('required' => false)),
      'content'                             => new sfValidatorPass(array('required' => false)),
      'created_at'                          => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'updated_at'                          => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'priority'                            => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'views'                               => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
    ));

    $this->widgetSchema->setNameFormat('service_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Service';
  }

  public function getFields()
  {
    return array(
      'idnews'                              => 'Number',
      'images'                              => 'Text',
      'title'                               => 'Text',
      'summary'                             => 'Text',
      'content'                             => 'Text',
      'created_at'                          => 'Date',
      'updated_at'                          => 'Date',
      'priority'                            => 'Number',
      'views'                               => 'Number',
      'category_service_idcategory_service' => 'Number',
    );
  }
}
