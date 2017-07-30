<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16/07/2015
 * Time: 11:14 SA
 */
class ajaxActions extends sfActions
{
    public function executeChangeStatusSchedule(sfWebRequest $request)
    {
        $idschedule = $request->getParameter('idschedule');

        $schedule = ScheduleTable::getScheduleById($idschedule);

        $schedule->setStatus(1);

        $schedule->save();

        return $this->renderText(json_encode(array('status' => 1, 'message' => 'Cập nhật thành công')));

    }

    public function executeUpdateOrderSpecialist(sfWebRequest $request)
    {
        $items = $request->getPostParameter("data");
        $items = json_decode($items, true);
        foreach ($items as $value) {
            $specialist = Doctrine::getTable('specialist')->find($value["id"]);
            $specialist->setOrderItem((int)$value["index"]);
            $specialist->save();
        }
        return $this->renderText(json_encode(array('status' => 1, 'message' => 'Cập nhật thành công')));
    }
    public function executeChangePassword(sfWebRequest $request)
    {
        $username = $request->getParameter('username');

        $password = $request->getParameter('password');

        $user = AdminTable::getByUsername($username);

        $user->setPassword($password);

        $user->save();

        return $this->renderText(json_encode(array('status' => 1, 'message' => 'Cập nhật thành công')));

    }
}