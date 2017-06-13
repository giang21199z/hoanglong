<?php

/**
 * GalleryTable
 *
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class GalleryTable extends Doctrine_Table
{
    /**
     * Returns an instance of this class.
     *
     * @return object GalleryTable
     */
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Gallery');
    }

    public static function getAllGalleryByCategory($id)
    {
        $query = GalleryTable::getInstance()
            ->createQuery('c')
            ->select('c.*')
            ->where('category_gallery_idcategory_about_us = ?', $id)
            ->fetchArray();
        return $query;
    }

    public static function getImagesByCategory($id, $limit = 1)
    {
        $query = GalleryTable::getInstance()
            ->createQuery('c')
            ->select('c.*')
            ->limit($limit)
            ->where('category_gallery_idcategory_about_us = ?', $id)
            ->fetchArray();
        $query = count($query) > 0 ? $query : array(0 => array('url' => "gallery.jpg"));
        return $query;
    }
}