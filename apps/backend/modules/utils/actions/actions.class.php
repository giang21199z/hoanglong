<?php

/**
 * Created by PhpStorm.
 * User: GIANGTRANG
 * Date: 5/1/2017
 * Time: 1:03 PM
 */
class utilsActions extends sfActions
{
    public function executeIndex(sfWebRequest $request)
    {
        if (file_exists("uploads/" . $_FILES["upload"]["name"]))
        {
            echo $_FILES["upload"]["name"] . " already exists. ";
        }
        else
        {
            move_uploaded_file($_FILES["upload"]["tmp_name"],
                "uploads/" . $_FILES["upload"]["name"]);
            echo "Stored in: " . "uploads/" . $_FILES["upload"]["name"];
        }
        return;
    }

    public function executeBrowserImage(sfWebRequest $request)
    {
        $dir = 'uploads';
        $files1 = scandir($dir);
        $list_file = "[";
        foreach ($files1 as $key => $value) {
            if ($key == 0 || $key == 1 || $key == 2) {
                continue;
            } else {
                $file = '{"image": "/uploads/' . $value . '","folder": "uploads"},';
                $list_file .= $file;
            }
        }
        if (strlen($list_file) != 1) {
            $list_file = substr($list_file, 0, strlen($list_file) - 1);
        }
        $list_file .= ']';
        echo $list_file;
        die;
    }
}