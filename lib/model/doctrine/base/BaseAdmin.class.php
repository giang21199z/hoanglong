<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('Admin', 'doctrine');

/**
 * BaseAdmin
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $idadmin
 * @property string $username
 * @property string $password
 * @property string $fullname
 * @property timestamp $created_at
 * @property timestamp $updated_at
 * 
 * @method integer   getIdadmin()    Returns the current record's "idadmin" value
 * @method string    getUsername()   Returns the current record's "username" value
 * @method string    getPassword()   Returns the current record's "password" value
 * @method string    getFullname()   Returns the current record's "fullname" value
 * @method timestamp getCreatedAt()  Returns the current record's "created_at" value
 * @method timestamp getUpdatedAt()  Returns the current record's "updated_at" value
 * @method Admin     setIdadmin()    Sets the current record's "idadmin" value
 * @method Admin     setUsername()   Sets the current record's "username" value
 * @method Admin     setPassword()   Sets the current record's "password" value
 * @method Admin     setFullname()   Sets the current record's "fullname" value
 * @method Admin     setCreatedAt()  Sets the current record's "created_at" value
 * @method Admin     setUpdatedAt()  Sets the current record's "updated_at" value
 * 
 * @package    hoanglong
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseAdmin extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('admin');
        $this->hasColumn('idadmin', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => true,
             'autoincrement' => true,
             'length' => 4,
             ));
        $this->hasColumn('username', 'string', 45, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 45,
             ));
        $this->hasColumn('password', 'string', 45, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 45,
             ));
        $this->hasColumn('fullname', 'string', 120, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'default' => 'admin',
             'notnull' => false,
             'autoincrement' => false,
             'length' => 120,
             ));
        $this->hasColumn('created_at', 'timestamp', 25, array(
             'type' => 'timestamp',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => 25,
             ));
        $this->hasColumn('updated_at', 'timestamp', 25, array(
             'type' => 'timestamp',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => 25,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        
    }
}