<?php

/**
 * Doctor filter form base class.
 *
 * @package    hoanglong
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseDoctorFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'name'                    => new sfWidgetFormFilterInput(),
      'degree'                  => new sfWidgetFormFilterInput(),
      'summary'                 => new sfWidgetFormFilterInput(),
      'content'                 => new sfWidgetFormFilterInput(),
      'avatar'                  => new sfWidgetFormFilterInput(),
      'created_at'              => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'updated_at'              => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'priority'                => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'name'                    => new sfValidatorPass(array('required' => false)),
      'degree'                  => new sfValidatorPass(array('required' => false)),
      'summary'                 => new sfValidatorPass(array('required' => false)),
      'content'                 => new sfValidatorPass(array('required' => false)),
      'avatar'                  => new sfValidatorPass(array('required' => false)),
      'created_at'              => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'updated_at'              => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'priority'                => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
    ));

    $this->widgetSchema->setNameFormat('doctor_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Doctor';
  }

  public function getFields()
  {
    return array(
      'iddoctor'                => 'Number',
      'name'                    => 'Text',
      'degree'                  => 'Text',
      'summary'                 => 'Text',
      'content'                 => 'Text',
      'avatar'                  => 'Text',
      'created_at'              => 'Date',
      'updated_at'              => 'Date',
      'specialist_idspecialist' => 'Number',
      'priority'                => 'Number',
    );
  }
}
