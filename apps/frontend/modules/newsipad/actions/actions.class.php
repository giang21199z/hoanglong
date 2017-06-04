<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
class newsipadActions extends sfActions
{

    public function executeIndex(sfWebRequest $request)
    {
        $offset = $request->getParameter('page') == null ? 0 : $request->getParameter('page');
        $category = $request->getParameter('category');
        $this->news = NewsTable::getAllNews(5, $offset, $category);
        $this->category_news = CategoryNewsTable::getAllCategory();
        $this->total = NewsTable::getTotalPages();
    }

    public function executeDetail(sfWebRequest $request)
    {
        $idnews = $request->getParameter('idnews');
        $this->news = NewsTable::getNewsById($idnews);
        $this->category_news = CategoryNewsTable::getAllCategory();
        $this->news_related = NewsTable::getNewsRelatedWith($idnews);

    }
}