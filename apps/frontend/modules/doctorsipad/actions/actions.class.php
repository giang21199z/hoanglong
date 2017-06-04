<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
class doctorsipadActions extends sfActions
{

    public function executeIndex(sfWebRequest $request)
    {
        $this->doctors = DoctorTable::getAllDoctor();
        $this->spacialist = SpecialistTable::getAllCategory();
    }
    public function executeDetail(sfWebRequest $request)
    {
        $iddoctor = $request->getParameter('iddoctor');
        $this->doctor = DoctorTable::getDoctorById($iddoctor);
        $this->spacialist = SpecialistTable::getAllCategory();
    }
}