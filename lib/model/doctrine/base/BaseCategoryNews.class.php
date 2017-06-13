<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('CategoryNews', 'doctrine');

/**
 * BaseCategoryNews
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $idcategory_news
 * @property string $name
 * @property timestamp $created_at
 * @property timestamp $updated_at
 * @property Doctrine_Collection $News
 * 
 * @method integer             getIdcategoryNews()  Returns the current record's "idcategory_news" value
 * @method string              getName()            Returns the current record's "name" value
 * @method timestamp           getCreatedAt()       Returns the current record's "created_at" value
 * @method timestamp           getUpdatedAt()       Returns the current record's "updated_at" value
 * @method Doctrine_Collection getNews()            Returns the current record's "News" collection
 * @method CategoryNews        setIdcategoryNews()  Sets the current record's "idcategory_news" value
 * @method CategoryNews        setName()            Sets the current record's "name" value
 * @method CategoryNews        setCreatedAt()       Sets the current record's "created_at" value
 * @method CategoryNews        setUpdatedAt()       Sets the current record's "updated_at" value
 * @method CategoryNews        setNews()            Sets the current record's "News" collection
 * 
 * @package    hoanglong
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseCategoryNews extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('category_news');
        $this->hasColumn('idcategory_news', 'integer', 4, array(
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
             'notnull' => true,
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
             'notnull' => false,
             'autoincrement' => false,
             'length' => 25,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasMany('News', array(
             'local' => 'idcategory_news',
             'foreign' => 'category_news_idcategory'));

        $timestampable0 = new Doctrine_Template_Timestampable();
        $this->actAs($timestampable0);
    }
}