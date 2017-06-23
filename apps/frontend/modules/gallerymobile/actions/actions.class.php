<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
class gallerymobileActions extends sfActions
{

    public function executeIndex(sfWebRequest $request)
    {
        $offset = $request->getParameter('page') == null ? 0 : $request->getParameter('page');
        $this->page_size = 5;
        $this->active = $offset;
        $this->total = GalleryTable::getTotalPages();
        $this->categories = CategoryGalleryTable::getAllCategory($this->page_size, $this->page_size * $offset);
    }

    public function executeDetail(sfWebRequest $request)
    {
        $offset = $request->getParameter('page') == null ? 0 : $request->getParameter('page');
        $this->total = $request->getParameter('total');
        $this->id = $request->getParameter('id');
        $this->page_size = 5;
        $this->galleries = GalleryTable::getAllGalleryByCategory($this->id, $this->page_size, $this->page_size * $offset);
        $this->category = CategoryGalleryTable::getCategoryById($this->id);
    }
}