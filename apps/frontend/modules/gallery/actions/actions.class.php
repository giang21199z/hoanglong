<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
class galleryActions extends sfActions
{

    public function executeIndex(sfWebRequest $request)
    {
        $this->categories = CategoryGalleryTable::getAllCategory();

    }
    public function executeDetail(sfWebRequest $request)
    {
        $id = $request->getParameter('id');
        $this->galleries = GalleryTable::getAllGalleryByCategory($id);
        $this->category = CategoryGalleryTable::getCategoryById($id);
    }
}