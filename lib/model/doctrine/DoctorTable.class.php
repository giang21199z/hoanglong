<?php

/**
 * DoctorTable
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class DoctorTable extends Doctrine_Table
{
    /**
     * Returns an instance of this class.
     *
     * @return object DoctorTable
     */
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Doctor');
    }
    public static function getAllDoctor()
    {
        $query = DoctorTable::getInstance()
            ->createQuery('c')
            ->select('c.name as title')
            ->fetchArray();
        return $query;
    }
}