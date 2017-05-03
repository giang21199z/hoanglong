<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 13/07/2015
 * Time: 15:54 CH
 */
class homeActions extends sfActions
{
    public function executeIndex(sfWebRequest $request)
    {
//        die('Homepage');
//        if ($this->getUser()->getAttribute('USER_BE') == null) {
//            $this->redirect('login');
//        }
//        if($request->isMethod('POST')){
//            $currentPass = $request->getParameter('current_pass');
//            $newPass = $request->getParameter('new_pass');
//            $id = $this->getUser()->getAttribute('USER_BE')->getId();
//            if (PizzaVAdminTable::changePassword($id, md5($currentPass), md5($newPass))) {
//                $this->successBE = 'Thay đổi password thành công';
//            } else {
//                $this->errorBE = 'Cập nhật password thất bại.Bạn vui lòng kiểm tra lại thông tin';
//            }
//        }
    }
}