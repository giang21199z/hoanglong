<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
class newsActions extends sfActions
{

    public function executeIndex(sfWebRequest $request)
    {
        $offset = $request->getParameter('page') == null? 0 : $request->getParameter('page');
        $this->id_category = $request->getParameter('idcategory');
        $this->category = $request->getParameter('name');
        $this->page_size = 5;
        $this->news = NewsTable::getAllNews($this->page_size, $offset*$this->page_size, $this->id_category);
        $this->active = $offset;
        $this->category_news = CategoryNewsTable::getAllCategory();
        $this->total = NewsTable::getTotalPages($this->id_category);
//        var_dump($this->total);
//        die;
    }

    public function executeDetail(sfWebRequest $request)
    {
        $idnews = $request->getParameter('idnews');
        $this->news = NewsTable::getNewsById($idnews);
        $this->category_news = CategoryNewsTable::getAllCategory();
        $this->news_related = NewsTable::getNewsRelatedWith($idnews);
    }
    public function executeService(sfWebRequest $request){
        $idnews = $request->getParameter('idservice');
        $this->news = ServiceTable::getServiceById($idnews);
        $this->news_related = ServiceTable::getServiceRelatedWith($idnews);
    }
}