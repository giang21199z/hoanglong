<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
class aboutusActions extends sfActions
{
    public function executeDetail(sfWebRequest $request)
    {
        $idaboutus = $request->getParameter('idaboutus');
        $this->news = AboutUsTable::getAboutUsById($idaboutus);
        $this->news_related = AboutUsTable::getAboutRelatedWith($idaboutus);
    }

    public function executeIndex(sfWebRequest $request)
    {
        $offset = $request->getParameter('page') == null ? 0 : $request->getParameter('page');
        $category = $request->getParameter('idcategory');
        $page_size = 5;
        $this->news = AboutUsTable::getAllNews($page_size, $offset*$page_size, $category);
        $this->active = $offset;
        $this->total = AboutUsTable::getTotalPages();
        $this->news_related = AboutUsTable::getAboutUsRelated(3);
    }
}