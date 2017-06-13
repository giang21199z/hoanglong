<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('Doctor', 'doctrine');

/**
 * BaseDoctor
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $iddoctor
 * @property string $name
 * @property string $degree
 * @property string $summary
 * @property string $content
 * @property string $avatar
 * @property timestamp $created_at
 * @property timestamp $updated_at
 * @property integer $specialist_idspecialist
 * @property integer $priority
 * @property Specialist $Specialist
 * 
 * @method integer    getIddoctor()                Returns the current record's "iddoctor" value
 * @method string     getName()                    Returns the current record's "name" value
 * @method string     getDegree()                  Returns the current record's "degree" value
 * @method string     getSummary()                 Returns the current record's "summary" value
 * @method string     getContent()                 Returns the current record's "content" value
 * @method string     getAvatar()                  Returns the current record's "avatar" value
 * @method timestamp  getCreatedAt()               Returns the current record's "created_at" value
 * @method timestamp  getUpdatedAt()               Returns the current record's "updated_at" value
 * @method integer    getSpecialistIdspecialist()  Returns the current record's "specialist_idspecialist" value
 * @method integer    getPriority()                Returns the current record's "priority" value
 * @method Specialist getSpecialist()              Returns the current record's "Specialist" value
 * @method Doctor     setIddoctor()                Sets the current record's "iddoctor" value
 * @method Doctor     setName()                    Sets the current record's "name" value
 * @method Doctor     setDegree()                  Sets the current record's "degree" value
 * @method Doctor     setSummary()                 Sets the current record's "summary" value
 * @method Doctor     setContent()                 Sets the current record's "content" value
 * @method Doctor     setAvatar()                  Sets the current record's "avatar" value
 * @method Doctor     setCreatedAt()               Sets the current record's "created_at" value
 * @method Doctor     setUpdatedAt()               Sets the current record's "updated_at" value
 * @method Doctor     setSpecialistIdspecialist()  Sets the current record's "specialist_idspecialist" value
 * @method Doctor     setPriority()                Sets the current record's "priority" value
 * @method Doctor     setSpecialist()              Sets the current record's "Specialist" value
 * 
 * @package    hoanglong
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseDoctor extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('doctor');
        $this->hasColumn('iddoctor', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => true,
             'autoincrement' => true,
             'length' => 4,
             ));
        $this->hasColumn('name', 'string', 45, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => 45,
             ));
        $this->hasColumn('degree', 'string', null, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => '',
             ));
        $this->hasColumn('summary', 'string', null, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => '',
             ));
        $this->hasColumn('content', 'string', null, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => '',
             ));
        $this->hasColumn('avatar', 'string', 120, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'default' => 'doctor.jpg',
             'notnull' => false,
             'autoincrement' => false,
             'length' => 120,
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
        $this->hasColumn('specialist_idspecialist', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => true,
             'autoincrement' => false,
             'length' => 4,
             ));
        $this->hasColumn('priority', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'default' => '1',
             'notnull' => false,
             'autoincrement' => false,
             'length' => 4,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Specialist', array(
             'local' => 'specialist_idspecialist',
             'foreign' => 'idspecialist'));

        $timestampable0 = new Doctrine_Template_Timestampable();
        $this->actAs($timestampable0);
    }
}