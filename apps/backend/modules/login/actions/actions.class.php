<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16/07/2015
 * Time: 11:14 SA
 */
class loginActions extends sfActions
{
    public function executeIndex(sfWebRequest $request)
    {
        if ($request->isMethod('post')) {
            $username = $request->getParameter('username');
            $password = $request->getParameter('password');
            $user = AdminTable::getUserByUsername($username, $password);
            if ($user) {
                $this->getUser()->setAttribute('USER_BE', $user);
                $this->getUser()->setTimedOut(20);
                $this->redirect('homepage');
            } else {
                $this->result_login = "Sai username password";
            }
        }
    }

    public function executeLogout(sfWebRequest $request)
    {
        $this->getUser()->getAttributeHolder()->remove('USER_BE');
        $this->redirect('login');
    }
}