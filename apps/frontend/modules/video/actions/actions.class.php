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
        $idvideo = $request->getParameter("idvideo");
        $page_size = 4;
        $offset = 0;
        $this->video = VideoTable::getDetailVideo($idvideo);
        if($this->video == false){
            $this->video = VideoTable::getDetailVideo(6);
        }
        $this->videos = VideoTable::getAllGallery($page_size, $offset * $page_size);
    }
}