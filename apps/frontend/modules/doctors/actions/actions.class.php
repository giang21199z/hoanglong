<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
class doctorsActions extends sfActions
{

    public function executeIndex(sfWebRequest $request)
    {
        $specialist_id = $request->getParameter("specialist_id");
        if($specialist_id != NULL){
            $this->doctors = DoctorTable::getAllDoctorBySpecialist($specialist_id);
        }else{
            $this->doctors = DoctorTable::getAllDoctor();
        }
        if(count($this->doctors) == 0){
            $this->doctors = DoctorTable::getDoctorHomepage(1);
        }
        $this->spacialist = SpecialistTable::getAllCategory();
    }
    public function executeDetail(sfWebRequest $request)
    {
        $iddoctor = $request->getParameter('iddoctor');
        $this->doctor = DoctorTable::getDoctorById($iddoctor);
        $this->spacialist = SpecialistTable::getAllCategory();
    }
}