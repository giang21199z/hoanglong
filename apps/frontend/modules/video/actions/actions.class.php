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
        $this->videos = VideoTable::getAllGallery(4,0);
    }
    public function executeDetail(sfWebRequest $request)
    {

    }
}