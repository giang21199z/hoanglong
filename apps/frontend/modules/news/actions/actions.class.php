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
        $this->news = NewsTable::getAllNews();
        $this->category_news = CategoryNewsTable::getAllCategory();
    }

    public function executeDetail(sfWebRequest $request)
    {
        $idnews = $request->getParameter('idnews');
        $this->news = NewsTable::getNewsById($idnews);
        $this->category_news = CategoryNewsTable::getAllCategory();
        $this->news_related = NewsTable::getNewsRelatedWith($idnews);

    }
}