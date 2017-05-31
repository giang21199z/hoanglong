<?php

/**
 * CategoryNewsTable
 *
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class CategoryNewsTable extends Doctrine_Table
{
    /**
     * Returns an instance of this class.
     *
     * @return object CategoryNewsTable
     */
    public static function getInstance()
    {
        return Doctrine_Core::getTable('CategoryNews');
    }

    public static function getAllCategory()
    {
        $query = CategoryNewsTable::getInstance()
            ->createQuery('c')
            ->select('c.*')
            ->where('c.idcategory_news != 0')
            ->fetchArray();
        return $query;
    }

    public static function getOneCategoryById($id)
    {
        $query = CategoryNewsTable::getInstance()
            ->createQuery('c')
            ->select('c.*')
            ->where('c.idcategory = ?', $id)
            ->fetchOne();
        return $query;
    }

    public static function getCategoryById($id)
    {
        $query = CategoryNewsTable::getInstance()
            ->createQuery('c')
            ->select('c.idcategory, c.name')
            ->where('parent = ?', $id)
            ->fetchArray();
        return $query;
    }

    public static function getMenuTree()
    {
        $result = [];
        //lay tat ca cac category
        $query = CategoryNewsTable::getInstance()
            ->createQuery('c')
            ->select('c.*')
            ->fetchArray();
        //duyet tat ca cac category ghep cac bai viet vao subcategory
        foreach ($query as $key => $value) {
            $parent = $value['idcategory_news'];
            //get tat ca tin tuc trong subcategory
            $arr = NewsTable::getAllNewsByCategory($parent);
            $data = ["idcategory_news" => $value["idcategory_news"], "name" => $value["name"], "child" => $arr];
            if ($key == 0) {
                $result[$key + 1] = $data;
            } else {
                array_push($result[1]['child'], $data);
            }
        }
        return $result;
    }
}