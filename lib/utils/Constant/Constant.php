<?php

/**
 * Created by PhpStorm.
 * User: GIANGTRANG
 * Date: 1/21/2017
 * Time: 12:34 AM
 */
class Constant
{
    public static $Status_Qa = array("1" => "Private", "2" => "Public");
    public static $Status_Booking_Filter = array(0 => "Chưa liên lạc", 1 => "Đã liên lạc");
    public static $Status_Booking = [ 0 => ["label" => "Chưa liên lạc", "class" => "label label-warning"], 1 => ["label" => "Đã liên lạc", "class" => "label label-success"]];
    public static $Number_Menu = 10;
    public static $Display_Homepage = array(1 => ["label" => "Không ưu tiên", "class" => "label label-warning"], 2 => ["label" => "Hiển thị Why Choose US", "class" => "label label-success"], 3 => ["label" => "Hiển thị tin mới nhất", "class" => "label label-info"]);
    public static $Display_Homepage_Cbx = array(1 => "Không ưu tiên", 2 => "Hiển thị Why Choose US", 3 => "Hiển thị tin mới nhất");
}