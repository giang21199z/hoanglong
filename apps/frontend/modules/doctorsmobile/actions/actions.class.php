<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
class doctorsmobileActions extends sfActions
{

    public function executeIndex(sfWebRequest $request)
    {
        $this->doctors = DoctorTable::getAllDoctorMobile();
    }
    public function executeDetail(sfWebRequest $request)
    {
        $iddoctor = $request->getParameter('iddoctor');
        $this->doctor = DoctorTable::getDoctorById($iddoctor);
        $this->spacialist = SpecialistTable::getAllCategory();
    }
}