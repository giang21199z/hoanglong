<?php

/**
 * Schedule filter form.
 *
 * @package    hoanglong
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class ScheduleFormFilter extends BaseScheduleFormFilter
{
    public function configure()
    {
        $this->setWidgets(array(
            'date' => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate())),
            'status' => new sfWidgetFormChoice(
                array(
                    'choices' => Constant::$Status_Booking_Filter
                )
            ),
        ));

        $this->setValidators(array(
            'date' => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDate(array('required' => false)), 'to_date' => new sfValidatorDateTime(array('required' => false)))),
            'status' => new sfValidatorInteger(array('required' => false)),
        ));

        $this->widgetSchema->setNameFormat('schedule_filters[%s]');

        $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

        $this->setupInheritance();
        foreach ($this->getWidgetSchema()->getFields() as $field) {
            $field->setAttribute('class', 'form-control');
            $field->setAttribute('style', 'width: 50%');
            $field->addOption('with_empty', false);
        }
    }

    public function doBuildQuery(array $values)
    {
        $query = parent::doBuildQuery($values);
        if (array_key_exists('date', $values)) {
            if (array_key_exists('from', $values['date']) && array_key_exists('to', $values['date']) && $values['date']['from'] != NULL && $values['date']['to'] != NULL) {
                $date1 = $values['date']['from'];
                $date2 = $values['date']['to'];
                $query->andWhere('date BETWEEN ? AND ?', array($date1, $date2));
            }
        }
        if (array_key_exists('status', $values)) {
            $query->andWhere('status = ?', $values['status']);
        }
        return $query;
    }
}
