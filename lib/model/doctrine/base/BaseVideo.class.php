<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('Video', 'doctrine');

/**
 * BaseVideo
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $idvideo
 * @property string $name
 * @property string $url
 * @property string $description
 * @property timestamp $created_at
 * @property timestamp $updated_at
 * @property integer $category_video_idcategory_video
 * @property CategoryVideo $CategoryVideo
 * 
 * @method integer       getIdvideo()                         Returns the current record's "idvideo" value
 * @method string        getName()                            Returns the current record's "name" value
 * @method string        getUrl()                             Returns the current record's "url" value
 * @method string        getDescription()                     Returns the current record's "description" value
 * @method timestamp     getCreatedAt()                       Returns the current record's "created_at" value
 * @method timestamp     getUpdatedAt()                       Returns the current record's "updated_at" value
 * @method integer       getCategoryVideoIdcategoryVideo()    Returns the current record's "category_video_idcategory_video" value
 * @method CategoryVideo getCategoryVideo()                   Returns the current record's "CategoryVideo" value
 * @method Video         setIdvideo()                         Sets the current record's "idvideo" value
 * @method Video         setName()                            Sets the current record's "name" value
 * @method Video         setUrl()                             Sets the current record's "url" value
 * @method Video         setDescription()                     Sets the current record's "description" value
 * @method Video         setCreatedAt()                       Sets the current record's "created_at" value
 * @method Video         setUpdatedAt()                       Sets the current record's "updated_at" value
 * @method Video         setCategoryVideoIdcategoryVideo()    Sets the current record's "category_video_idcategory_video" value
 * @method Video         setCategoryVideo()                   Sets the current record's "CategoryVideo" value
 * 
 * @package    hoanglong
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseVideo extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('video');
        $this->hasColumn('idvideo', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => true,
             'autoincrement' => true,
             'length' => 4,
             ));
        $this->hasColumn('name', 'string', 120, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => 120,
             ));
        $this->hasColumn('url', 'string', 200, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => 200,
             ));
        $this->hasColumn('description', 'string', null, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'default' => 'gallery.jpg',
             'notnull' => false,
             'autoincrement' => false,
             'length' => '',
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
        $this->hasColumn('category_video_idcategory_video', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => true,
             'autoincrement' => false,
             'length' => 4,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('CategoryVideo', array(
             'local' => 'category_video_idcategory_video',
             'foreign' => 'idcategory_video'));

        $timestampable0 = new Doctrine_Template_Timestampable();
        $this->actAs($timestampable0);
    }
}