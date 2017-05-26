<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('Specialist', 'doctrine');

/**
 * BaseSpecialist
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $idspecialist
 * @property string $name
 * @property timestamp $created_at
 * @property timestamp $updated_at
 * @property Doctrine_Collection $Doctor
 * 
 * @method integer             getIdspecialist() Returns the current record's "idspecialist" value
 * @method string              getName()         Returns the current record's "name" value
 * @method timestamp           getCreatedAt()    Returns the current record's "created_at" value
 * @method timestamp           getUpdatedAt()    Returns the current record's "updated_at" value
 * @method Doctrine_Collection getDoctor()       Returns the current record's "Doctor" collection
 * @method Specialist          setIdspecialist() Sets the current record's "idspecialist" value
 * @method Specialist          setName()         Sets the current record's "name" value
 * @method Specialist          setCreatedAt()    Sets the current record's "created_at" value
 * @method Specialist          setUpdatedAt()    Sets the current record's "updated_at" value
 * @method Specialist          setDoctor()       Sets the current record's "Doctor" collection
 * 
 * @package    hoanglong
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseSpecialist extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('specialist');
        $this->hasColumn('idspecialist', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => true,
             'autoincrement' => true,
             'length' => 4,
             ));
        $this->hasColumn('name', 'string', null, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => '',
             ));
        $this->hasColumn('created_at', 'timestamp', 25, array(
             'type' => 'timestamp',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 25,
             ));
        $this->hasColumn('updated_at', 'timestamp', 25, array(
             'type' => 'timestamp',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 25,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasMany('Doctor', array(
             'local' => 'idspecialist',
             'foreign' => 'specialist_idspecialist'));
    }
}