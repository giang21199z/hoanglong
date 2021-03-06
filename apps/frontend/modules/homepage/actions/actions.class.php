<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
class homepageActions extends sfActions
{

    public function executeIndex(sfWebRequest $request)
    {
        $this->about_us = AboutUsTable::getAboutUsHomepage();
        $this->doctor = DoctorTable::getDoctorHomepage(5);
        $this->doctor_pages = count(DoctorTable::getAllDoctor());
        $this->feed_backs = FeedBackTable::getFeedbackHomepage();
        $this->news = NewsTable::getNewsHomepage();
        $this->why_choose_us = NewsTable::getNewsWhyChooseUs(6);
        $this->slides = SlideTable::getAllSlide();
        $this->sales = NewsTable::getNewSale();
    }
}