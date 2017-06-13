<?php

/**
 * Created by PhpStorm.
 * User: GIANGTRANG
 * Date: 1/20/2017
 * Time: 12:35 AM
 */
class VideoHelper
{
    public static function getIdVideoYoube($link)
    {
        return explode("v=",$link)[1];
    }
}