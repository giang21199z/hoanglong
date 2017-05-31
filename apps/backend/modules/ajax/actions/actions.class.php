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
}