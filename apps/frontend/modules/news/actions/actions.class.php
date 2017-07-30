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
        $keyword = $request->getPostParameter('keyword');
        if ($keyword == NULL) {
            $offset = $request->getParameter('page') == null ? 0 : $request->getParameter('page');
            $this->id_category = $request->getParameter('idcategory');
            $this->category = $request->getParameter('name');
            $this->page_size = 5;
            $this->news = NewsTable::getAllNews($this->page_size, $offset * $this->page_size, $this->id_category);
            $this->active = $offset;
            $this->category_news = CategoryNewsTable::getAllCategory();
            $this->total = NewsTable::getTotalPages($this->id_category);
            $this->sales = NewsTable::getNewSale();
            $this->search = false;
        } else {
            $this->news = NewsTable::search($keyword);
            $this->category_news = CategoryNewsTable::getAllCategory();
            $this->sales = NewsTable::getNewSale();
            $this->search = true;
        }
    }

    public function executeDetail(sfWebRequest $request)
    {
        $idnews = $request->getParameter('idnews');
        $this->news = NewsTable::getNewsById($idnews);
        $this->news->setViews($this->news->getViews() + 1);
        $this->news->setUpdatedAt($this->news->getUpdatedAt());
        $this->news->save();
        $this->category_news = CategoryNewsTable::getAllCategory();
        $this->news_related = NewsTable::getNewsRelatedWith($idnews);
        $this->sales = NewsTable::getNewSale();
        $this->getResponse()->addMeta('description', $this->news->getSummary());
        $this->getResponse()->addMeta('title', $this->news->getTitle());
    }

    public function executeService(sfWebRequest $request)
    {
        $idnews = $request->getParameter('idservice');
        $this->news = ServiceTable::getServiceById($idnews);
        $this->news->setViews($this->news->getViews() + 1);
        $this->news->save();
        $this->news_related = ServiceTable::getServiceRelatedWith($idnews);
        $this->sales = NewsTable::getNewSale();
        $this->getResponse()->addMeta('description', $this->news->getSummary());
        $this->getResponse()->addMeta('title', $this->news->getTitle());
    }
}