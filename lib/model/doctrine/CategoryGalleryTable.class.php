<?php

/**
 * CategoryGalleryTable
 *
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class CategoryGalleryTable extends Doctrine_Table
{
    /**
     * Returns an instance of this class.
     *
     * @return object CategoryGalleryTable
     */
    public static function getInstance()
    {
        return Doctrine_Core::getTable('CategoryGallery');
    }

    public static function getMenuTree()
    {
        $result = [];
        //lay tat ca cac category
        $query = CategoryGalleryTable::getInstance()
            ->createQuery('c')
            ->select('c.*')
            ->fetchArray();
        //duyet tat ca cac category ghep cac bai viet vao subcategory
        foreach ($query as $key => $value) {
            $parent = $value['idcategory_gallery'];
            //get tat ca tin tuc trong subcategory
            $arr = GalleryTable::getAllGalleryByCategory($parent);
            $data = ["idcategory_gallery" => $value["idcategory_gallery"], "name" => $value["name"], "child" => $arr];
            if ($key == 0) {
                $result[$key + 1] = $data;
            } else {
                array_push($result[1]['child'], $data);
            }
        }
        return $result;
    }
}