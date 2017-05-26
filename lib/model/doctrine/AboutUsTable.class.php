<?php

/**
 * AboutUsTable
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class AboutUsTable extends Doctrine_Table
{
    /**
     * Returns an instance of this class.
     *
     * @return object AboutUsTable
     */
    public static function getInstance()
    {
        return Doctrine_Core::getTable('AboutUs');
    }
    public static function getAllAboutUs()
    {
        $query = AboutUsTable::getInstance()
            ->createQuery('c')
            ->select('c.idnews, c.title as name')
            ->fetchArray();
        return $query;
    }
    public static function getAllAboutUsByCategory($id)
    {
        $query = AboutUsTable::getInstance()
            ->createQuery('c')
            ->select('c.*')
            ->where('category_about_us_idcategory_about_us = ?',$id)
            ->fetchArray();
        return $query;
    }
}