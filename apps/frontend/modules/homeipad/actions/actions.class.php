<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
class homeipadActions extends sfActions
{

    public function executeIndex(sfWebRequest $request)
    {
        $this->about_us = AboutUsTable::getAboutUsHomepage();
        $this->doctor = DoctorTable::getDoctorHomepage(3);
        $this->feed_backs = FeedBackTable::getFeedbackHomepage();
        $this->news = NewsTable::getNewsHomepage(3);
        $this->why_choose_us = NewsTable::getNewsWhyChooseUs();
    }
}