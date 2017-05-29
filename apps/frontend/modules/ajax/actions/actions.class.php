<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 13/07/2015
 * Time: 20:53 CH
 */
class ajaxActions extends sfActions
{

    public function executeCreateSchedule(sfWebRequest $request)
    {
        if ($request->isMethod('POST')) {
            $fullname = $request->getPostParameter("fullname");
            $age = $request->getPostParameter("age");
            $phone = $request->getPostParameter("phone");
            $address = $request->getPostParameter("address");
            $date = $request->getPostParameter("date");
            $description = $request->getPostParameter("description");
            $schedule = new Schedule();
            $schedule->setFullname($fullname);
            $schedule->setAge($age);
            $schedule->setAddress($address);
            $schedule->setPhone($phone);
            $schedule->setDate($date);
            $schedule->setDescription($description);
            $schedule->save();
            return $this->renderText(json_encode(array('status' => 1, 'message' => 'Đã gửi lịch hẹn thành công. Chúng tôi sẽ sớm liên lạc với bạn!')));
        }else{
            die('giang');
        }
    }
}