<?php

/**
 * News filter form.
 *
 * @package    hoanglong
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class NewsFormFilter extends BaseNewsFormFilter
{
    public function configure()
    {
        $this->setWidgets(array(
            'title' => new sfWidgetFormInput(),
            'priority' => new sfWidgetFormChoice(
                array(
                    'choices' => Constant::$FilterNews
                )
            ),
        ));

        $this->setValidators(array(
            'title' => new sfValidatorString(array('required' => false)),
            'priority' => new sfValidatorInteger(array('required' => false)),
        ));

        $this->widgetSchema->setNameFormat('news_filters[%s]');

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
        if (array_key_exists('title', $values)) {
            $query->andWhere('title LIKE ?', "%".$values['title']."%");
        }
        if (array_key_exists('priority', $values) && $values['priority'] != 0) {
            $query->andWhere('priority = ?', $values['priority']);
        }
        return $query;
    }
}
