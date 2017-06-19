<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
class videoActions extends sfActions
{

    public function executeIndex(sfWebRequest $request)
    {
        $offset = $request->getParameter('page') == null ? 0 : $request->getParameter('page');
        $page_size = 4;
        $this->videos = VideoTable::getAllGallery($page_size, $offset * $page_size);
        $this->active = $offset;
        $this->total = VideoTable::getTotalPages();
    }
}