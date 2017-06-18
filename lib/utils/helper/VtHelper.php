<?php

/**
 * Description of VtHelper
 * @author pmdv_hoannv13
 */
class VtHelper
{
    const MOBILE_09x = 12;
    const MOBILE_9x = 13;
    const MOBILE_849x = 14;
    const MOBILE_SIMPLE = '09x';
    const MOBILE_GLOBAL = '849x';
    const USERNAME_PATTERN = '/^([a-zA-Z])+([a-zA-Z0-9_]){5,29}$/';
    const VT_MSISDN_PATTERN = '/^8496\d{7}$|^0?96\d{7}$|^8497\d{7}$|^0?97\d{7}$|^8498\d{7}$|^0?98\d{7}$|^8416\d{8}$|^0?16\d{8}$/'; // So dien thoai viettel
    const VT_NOT_UNICODE_PATTERN = '/^[A-Za-z0-9]{1,255}$/';
    const VT_NOT_UNICODE_SPECIAL_CHAR_PATTERN = '/^[0-9A-Za-z\_\s\!\@\#\$\%\^\&\*\(\)\[\]\{\}\,\.\<\>\?\/\|\:\;\-\+\|\\\]*$/';
    const  SPECIAL_CHAR_PATTERN = '/[\'^£$%&*()}{@#~?><>,|=_+¬-]/';
    const  EMAIL_VALID = '/^((?:(?:(?:[a-zA-Z0-9][\.\+_]?)*)[a-zA-Z0-9])+)\@((?:(?:(?:[a-zA-Z0-9][\.\-_]?){0,62})[a-zA-Z0-9])+)\.([a-zA-Z0-9]{2,6})$/';
    const VALID_CHART = '/^[a-zA-Z0-9ÀÁÂÃÈÉÊẾÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềếểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ1-1000_.!@#$%^&*()-+= ]*$/';
    const VALID_PHONE = '/(^84|^0)((9[0-9])|(12[0-9])|(16[1-9])|(188)|(199))\\d{7}$/';

    function strip_tags_content($text)
    {

        return preg_replace('#<(.*)/(.*)>#iUs', '', $text);

    }

    public static function getIdCity()
    {
        return array(1561096 => 'Ha Noi', 1594018 => 'Da Nang', 1584661 => 'Ho Chi Minh');
    }


    public static function debug_to_console($data, $context = 'Debug in Console')
    {
        if (is_array($data) || is_object($data)) {
            echo("<script>console.log('PHP: " . json_encode($data) . "');</script>");
        } else {
            echo("<script>console.log('PHP: " . $data . "');</script>");
        }
    }

    public static function sendAEmail($title, $content, $to)
    {
        $mail = new PHPMailer();
        $mail->CharSet = "utf-8";
        $mail->isSMTP();
        $mail->SMTPDebug = 0;
        $mail->Debugoutput = 'html';
        $mail->Host = 'smtp.gmail.com';
        $mail->Port = 587;
        $mail->SMTPSecure = 'tls';
        $mail->SMTPAuth = true;
        $mail->Username = "revitrip@gmail.com";
        $mail->Password = "tadtravelvn";
        $mail->setFrom('hotrohoanglong@gmail.com', 'Hoàng Long Hospital');
        $mail->addReplyTo('hotrohoanglong@gmail.com', 'Hoàng Long Hospital');
        $mail->addAddress($to, 'Bộ phận hỗ trợ');
        $mail->Subject = $title;
        $mail->msgHTML($content);
        $mail->AltBody = 'Support Hoàng Long Hospital';
        if (!$mail->send()) {
            return false;
        } else {
            return true;
        }
    }

    // huync2: lay random ma OTP
    public static function genRandomString($length = 8)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $string = '';

        for ($p = 0; $p < $length; $p++) {
            $string .= $characters[mt_rand(0, strlen($characters) - 1)];
        }

        return $string;
    }

    //ngoctv login: 20140610
    public static function encryptPassword($username, $password)
    {
        $toLowerUsername = strtolower($username);
        $passwordVal = $toLowerUsername . $password;
        return base64_encode(sha1(mb_convert_encoding($passwordVal, 'utf-16le', 'ascii'), true));
    }

    public static function cleanXSS($content)
    {
        $purifier = HTMLPurifier::getInstance();
        return $purifier->purify($content);
    }


    public static function SHA1EncryptPassword($algorithm, $salt, $password)
    {

        if (false !== $pos = strpos($algorithm, '::')) {
            $algorithm = array(substr($algorithm, 0, $pos), substr($algorithm, $pos + 2));
        }
        if (!is_callable($algorithm)) {
            throw new sfException(sprintf('The algorithm callable "%s" is not callable.', $algorithm));
        }

        return call_user_func_array($algorithm, array($salt . $password));

//        $passwordVal = $username . $password;
//        return sha1($passwordVal);
    }

    public static function convertTypeTransaction($type)
    {
        $types = array('CHTT' => 'Cửa hàng',
            'ST' => 'Siêu thị',
            'ĐLUQ' => 'Đại lý ủy quyền',
            'NVBHV' => 'Nhân viên bán hàng');
        return isset($types[$type]) ? $types[$type] : '';
    }

    public static function getOriginalBccsGW($val, $tagOpenName, $tagCloseName)
    {
        $pos1 = strpos($val, $tagOpenName); //tag open
        $pos2 = strpos($val, $tagCloseName); //tag close
        $source = substr($val, $pos1, $pos2 - $pos1 + strlen($tagCloseName));
        return json_decode(json_encode(simplexml_load_string($source)));
    }

    public static function convertToPhanTramround($number, $total)
    {
        return round($number * 100 / $total, 2) . "%";
    }

    public static function formatMobileNumber($phone, $type = self::MOBILE_09x)
    {
        $phone = (string)$phone;
        // Bo het cac ky tu khong phai so
        $phone = preg_replace('@[^0-9]@', '', $phone);
        if ($type == self::MOBILE_09x) {
            if (substr($phone, 0, 1) == '0') { #0975292582
                # do nothing
            } elseif (substr($phone, 0, 2) == '84') { #+84975292582
                $phone = '0' . substr($phone, 2);
            } else { #975292582
                $phone = '0' . $phone;
            }
        } elseif ($type == self::MOBILE_849x) {
            if (substr($phone, 0, 1) == '0') { #0975292582
                $phone = '84' . substr($phone, 1);
            } elseif (substr($phone, 0, 2) == '84') { #+84975292582
                # do nothing
            } else { #975292582
                $phone = '84' . $phone;
            }
        } elseif ($type == self::MOBILE_9x) {
            if (substr($phone, 0, 1) == '0') { #0975292582
                $phone = substr($phone, 1);
            } elseif (substr($phone, 0, 2) == '84') { #+84975292582
                $phone = substr($phone, 2);
            } else { #975292582
                # do nothing
            }
        } else {
            throw new Exception('Format dien thoai khong hop le', 113);
        }

        return $phone;
    }

    /**
     * Kiểm tra số điện thoại viettel theo pattern
     * Mac dinh su dung pattern Viettel trong VtHelper,
     * config = true, su dung pattern trong file config
     * setting = true,
     * @param type $phone_no - so dien thoai can kiem tra
     * @param type $config - pattern lay tu file cau hinh, default su dung tu cau hinh
     * @param type $setting - nhap mot patter cu the
     * @param type $patternName - ten pattern can lay tu file cau hinh hoac tu setting, mac dinh ten lay tu cau hinh
     * @return boolean
     *
     */
    public static function isViettelPhoneNumber($phone_no, $config = true, $setting = false, $patternName = 'app_mobile_pattern', $trim = true)
    {
        $pattern = self::VT_MSISDN_PATTERN;
        if ($config) {
            $pattern = sfConfig::get($patternName, $pattern);
        } else if ($setting) {
            $pattern = VtHelper::getSystemSetting($patternName, true, $pattern);
        }
        if ($trim) {
            $phone_no = trim($phone_no);
        }
        preg_match($pattern, $phone_no, $matches);
        if (count($matches) > 0)
            return true;
        return false;
    }

    public static function setAuthenticated($member, $firstLogin = false)
    {
        sfcontext::getinstance()->getuser()->setMember($member);
        sfcontext::getinstance()->getuser()->setAuthenticated(true);
//        sfcontext::getinstance()->getuser()->setFirstLogin($firstLogin);
        sfcontext::getinstance()->getuser()->setIpAddress(sfContext::getInstance()->getRequest()->getHttpHeader('addr', 'remote'));
        sfcontext::getinstance()->getuser()->setUserAgent(sfContext::getInstance()->getRequest()->getHttpHeader('User-Agent'));
    }

    /**
     * @author ngoctv
     * @return  ham kiem tra token
     * @param $token can kiem tra
     */
    public static function validateToken($token)
    {
        $formValid = new BaseForm();
        if ($token == $formValid->getCSRFToken())
            return true;
        else
            return false;
    }

    public static function validateNullParams($arrayParams)
    {
        foreach ($arrayParams as $key => $values) {
            if (!$values && $values != '0')
                return $key;
        }
        return false;
    }

    public static function getAppConfigValue($appConfigAdd)
    {
        return sfConfig::get($appConfigAdd);
    }

    public static function convertToDateLocal($date, $lang = null)
    {
        switch ($lang) {
            case "vi":
                $date = date('d \t\h\a\n\g m, Y', $date);
                return str_replace('thang', 'tháng', $date);
                break;
            default:
                return date('jS F Y', $date);
                break;
        }

    }

    /**
     * Tra ve IP cua thiet bi truy cap
     * @author diepth2
     * @created June Mar 17, 2014
     * @return string
     */
    public static function getDeviceIp()
    {

        if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $mobileIp = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $mobileIp = $_SERVER['REMOTE_ADDR'];
        }

        return trim($mobileIp);
        /*
          $ipString=@getenv("HTTP_X_FORWARDED_FOR");
          if(!empty($ipString)){
          $addr = explode(",",$ipString);
          return $addr[0];
          }else{
          return $_SERVER['REMOTE_ADDR'];
          }
         */
    }

    public static function isV_internetIp($ip)
    {
        $vInternetRange = sfConfig::get('app_ip_pool_v_internet');
        if (!empty($vInternetRange)) {
            foreach ($vInternetRange as $range) {
                $netArr = explode("/", $range);
                if (self::ipInNetwork($ip, $netArr[0], $netArr[1])) {
                    return true;
                }
            }
        }
        return false;
    }

    /**
     * Ham kiem tra Ip co nam trong dai V-internet cua viettel khong
     * @author NamDT5
     * @created on 17/01/2013
     * @param $ip
     * @return bool
     */
    public static function isV_wapIp($ip)
    {
        $vInternetRange = sfConfig::get('app_ip_pool_v_wap');
        if (!empty($vInternetRange)) {
            foreach ($vInternetRange as $range) {
                $netArr = explode("/", $range);
                if (self::ipInNetwork($ip, $netArr[0], $netArr[1])) {
                    return true;
                }
            }
        }
        return false;
    }

    /*
    * Ham kiem tra IP co nam trong dai IP cho phep khong
    * Tham khao: http://php.net/manual/en/function.ip2long.php
    * @author NamDT5
    * @created on 17/01/2013
    * @param $ip
    * @param $netAddr
    * @param $netMask
    * @return bool
    */
    public static function ipInNetwork($ip, $netAddr, $netMask)
    {
        if ($netMask <= 0) {
            return false;
        }
        $ipBinaryString = sprintf("%032b", ip2long($ip));
        $netBinaryString = sprintf("%032b", ip2long($netAddr));
        return (substr_compare($ipBinaryString, $netBinaryString, 0, $netMask) === 0);
    }

    public static function getMobileNumber($msisdn, $type)
    {
        if (empty($type))
            $type = self::MOBILE_SIMPLE;

        //loai bo so + dau tien doi voi dinh dang +84
        if ($msisdn[0] == '+') {
            $msisdn = substr($msisdn, 1);
        }
        switch ($type) {
            case self::MOBILE_GLOBAL:
                if ($msisdn[0] == '0')
                    return '84' . substr($msisdn, 1);
                else if ($msisdn[0] . $msisdn[1] != '84')
                    return '84' . $msisdn;
                else
                    return $msisdn;
                break;
            case self::MOBILE_SIMPLE:
                if ($msisdn[0] != '0')
                    return '0' . substr($msisdn, 2);
                else
                    return $msisdn;
                break;
            case self::MOBILE_NOTPREFIX:
                if ($msisdn[0] == '0')
                    return substr($msisdn, 1);
                elseif ($msisdn[0] . $msisdn[1] == '84')
                    return substr($msisdn, 2);
                else
                    return $msisdn;
                break;
        }
    }

    public static function getUrlImagePath($objectStr, $imageName, $configDefaultImage = "app_url_media_default_file")
    {
        try {
            if (strlen($imageName) == 0) {
                return sfConfig::get($configDefaultImage);
            } else {

                $filename = sfConfig::get("app_upload_media_file") . "/" . $objectStr . "/" . $imageName;
                if (is_file($filename)) {
                    return sfConfig::get('app_url_media_file') . "/" . $objectStr . "/" . $imageName;
                } else {
                    return sfConfig::get($configDefaultImage);
                }
            }
        } catch (Exception $e) {
            return sfConfig::get($configDefaultImage);
        }
    }

    //diepth2 Kiem tra xem mot dia chi la file hay ko1
    public static function isFileUrl($url)
    {
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); // don't want it rendered to browser
        curl_exec($ch);

        if (curl_errno($ch)) {
            $isFile = false;
        } else {
            $isFile = true;
        }
        curl_close($ch);
        return $isFile;
    }
    //tuanbm
    //ham su dung de generate ra the Embed Flash player(Su dung cho backend)
    public static function generateEmbedJwplayer($url, $width = "300", $height = "20")
    {
        return '<embed id="player" height="' . $height . '" width="' . $width . '"
              flashvars="file=' . $url . '&controlbar=bottom" wmode="transparent" allowfullscreen="true"
              allowscriptaccess="always" bgcolor="undefined"
              src="/js/player.swf" name="player" type="application/x-shockwave-flash">';
    }

    /**
     * @author tuanbm2
     * Ham loai bo tat ca cac the html mac dinh loai bo array('script', 'iframe', 'noscript')
     * @static
     * @param       $str - Xau can loai bo tag
     * @param array $tags - Mang cac tag se strip, vi du: array('a', 'b')
     * @param bool $stripContent
     * @example: echo VtHelper::strip_html_default_tags($article->getBody())
     * @return mixed|string
     */
    public static function strip_html_default_tags($str)
    {
        return VtHelper::strip_html_tags($str, array('script', 'iframe', 'noscript'));
    }

    //diepth
    public static function htmlToView($html)
    {
        $str = html_entity_decode(html_entity_decode($html));
        return VtHelper::strip_html_tags($str);
    }

    public static function trunicateHtmlToView($html, $length = 50)
    {
        return strlen(VtHelper::htmlToView($html)) > $length ? substr(html_entity_decode($html), 0, $length * 1.8) . '...' : html_entity_decode($html);

    }

    public static function koreaTrunicateHtmlToView($html, $length = 60)
    {
        return html_entity_decode(mb_substr(trim($html), 0, $length, 'utf-8')).' ...';
    }

    public static function limit_text($text, $limit)
    {
        if (str_word_count($text, 0) > $limit) {
            $words = str_word_count($text, 2);
            $pos = array_keys($words);
            $text = substr($text, 0, $pos[$limit]) . '...';
        }
        return $text;
    }


    /**
     * @author tuanbm2
     * Ham loai bo tat ca cac the html mac dinh loai bo array('script', 'iframe', 'noscript')
     * @static
     * @param $str - Ham nay chi duoc dung doi voi  sf_escaping_strategy = 1 va sf_escaping_method=ESC_SPECIALCHARS
     * @return string
     */
    public static function strip_html_tags_and_decode($str)
    {
        //Ham nay chi duoc dung doi voi get du lieu hien thi sf_escaping_strategy = 1 va sf_escaping_method=ESC_SPECIALCHARS
        //tuyet doi ko dung de remove truoc khi save du lieu
        //do symfony tu dong encode HTML nen phai decode truoc khi remove Script
        $str = htmlspecialchars_decode($str); //co the dung ham $object->getSomething(ESC_RAW);//htmlspecialchars_decode($str, ENT_QUOTES);
        $str = VtHelper::strip_html_tags($str, array('script', 'iframe', 'noscript', 'embed'));
        return str_replace('<embed ', '', $str);
    }
    /*
     * @author tuanbm
     * Ham get Image Thumbnail, de tra ve duong dan tuyet doi (Anh Thumbnail)
     * @static
     * return: link day du ca http://server/media/....
     */
    /**
     * @author hoangl
     * Ham loai bo tat ca cac the html
     * @static
     * @param       $str - Xau can loai bo tag
     * @param array $tags - Mang cac tag se strip, vi du: array('a', 'b')
     * @param bool $stripContent
     * @example: <?php echo VtHelper::strip_html_tags($article->getBody(), array('script', 'iframe', 'noscript'))?>
     * @return mixed|string
     */
    public static function strip_html_tags($str, $tags = array(), $stripContent = false)
    {
        if (empty($tags)) {
            $tags = array("br/", "hr/", "!--...--", '!doctype', 'a', 'abbr', 'address', 'area', 'article', 'aside', 'audio', 'b', 'base', 'bb', 'bdo', 'blockquote', 'body', 'br', 'button', 'canvas', 'caption', 'cite', 'code', 'col', 'colgroup', 'command', 'datagrid', 'datalist', 'dd', 'del', 'details', 'dfn', 'div', 'dl', 'dt', 'em', 'embed', 'eventsource', 'fieldset', 'figcaption', 'figure', 'footer', 'form', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'head', 'header', 'hgroup', 'hr', 'html', 'i', 'iframe', 'img', 'input', 'ins', 'kbd', 'keygen', 'label', 'legend', 'li', 'link', 'mark', 'map', 'menu', 'meta', 'meter', 'nav', 'noscript', 'object', 'ol', 'optgroup', 'option', 'output', 'p', 'param', 'pre', 'progress', 'q', 'ruby', 'rp', 'rt', 'samp', 'script', 'section', 'select', 'small', 'source', 'span', 'strong', 'style', 'sub', 'summary', 'sup', 'table', 'tbody', 'td', 'textarea', 'tfoot', 'th', 'thead', 'time', 'title', 'tr', 'ul', 'var', 'video', 'wbr');
        }
        $content = '';
        if (!is_array($tags)) {
            $tags = (strpos($str, '>') !== false ? explode('>', str_replace('<', '', $tags)) : array($tags));
            if (end($tags) == '')
                array_pop($tags);
        }
        foreach ($tags as $tag) {
            if ($stripContent)
                $content = '(.+</' . $tag . '(>|\s[^>]*>)|)';
            $str = preg_replace('#</?' . $tag . '(>|\s[^>]*>)' . $content . '#is', '', $str);
        }

        $str = trim($str, ' ');

        return $str;
    }

    /*
     * duynt10
     */
    public static function strip_html_tags_p($str, $tags = array(), $stripContent = false)
    {
        if (empty($tags)) {
            $tags = array("br/", "hr/", "!--...--", '!doctype', 'a', 'abbr', 'address', 'area', 'article', 'aside', 'audio', 'b', 'base', 'bb', 'bdo', 'blockquote', 'body', 'br', 'button', 'canvas', 'caption', 'cite', 'code', 'col', 'colgroup', 'command', 'datagrid', 'datalist', 'dd', 'del', 'details', 'dfn', 'div', 'dl', 'dt', 'em', 'embed', 'eventsource', 'fieldset', 'figcaption', 'figure', 'footer', 'form', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'head', 'header', 'hgroup', 'hr', 'html', 'i', 'iframe', 'img', 'input', 'ins', 'kbd', 'keygen', 'label', 'legend', 'li', 'link', 'mark', 'map', 'menu', 'meta', 'meter', 'nav', 'noscript', 'object', 'ol', 'optgroup', 'option', 'output', 'param', 'pre', 'progress', 'q', 'ruby', 'rp', 'rt', 'samp', 'script', 'section', 'select', 'small', 'source', 'span', 'strong', 'style', 'sub', 'summary', 'sup', 'table', 'tbody', 'td', 'textarea', 'tfoot', 'th', 'thead', 'time', 'title', 'tr', 'ul', 'var', 'video', 'wbr');
        }
        $content = '';
        if (!is_array($tags)) {
            $tags = (strpos($str, '>') !== false ? explode('>', str_replace('<', '', $tags)) : array($tags));
            if (end($tags) == '')
                array_pop($tags);
        }
        foreach ($tags as $tag) {
            if ($stripContent)
                $content = '(.+</' . $tag . '(>|\s[^>]*>)|)';
            $str = preg_replace('#</?' . $tag . '(>|\s[^>]*>)' . $content . '#is', '', $str);
        }

        $str = trim($str, ' ');

        return $str;
    }

    public static function strip_html_tags_no_script($str)
    {
        $str = VtHelper::strip_html_tags($str, array('script', 'iframe'));
        return $str;
    }

    public static function getUrlImagePathThumb($objectStr, $imageName, $configDefaultImage = "app_url_media_default_file")
    {
        try {

            if (strlen($imageName) == 0) {
                return sfConfig::get($configDefaultImage);
            } else {

                //them 1 doan code check exits file, neu ko ton tai thi cung hidden di
                //u01/apps/imuzik/cms-web/web/uploads/images
                $imageName = ltrim($imageName, "/");
                $filename = sfConfig::get("app_upload_media_file") . "/" . $objectStr . "/thumbs/" . $imageName;
                if (is_file($filename)) {
                    return sfConfig::get('app_url_media_file') . "/" . $objectStr . "/thumbs/" . $imageName;
                } else {
                    return self::createImageThumbnail($objectStr, $imageName, "thumbs", 100, 100, $configDefaultImage);
                }
            }
        } catch (Exception $e) {
            /* rethrow it */
            return sfConfig::get($configDefaultImage);
        }
    }

    //$folderThumb="thumbnail",$width=150,$height=150,$configDefaultImage = "app_url_media_default_file"
    public static function createImageThumbnail($objectStr, $imageName, $folderThumbName, $width, $height, $configDefaultImage = "app_url_media_default_file")
    {
        try {
            $full_path_file = sfConfig::get("app_upload_media_file") . "/" . $objectStr . "/" . $folderThumbName . "/" . $imageName;
            $originalImage = sfConfig::get("app_upload_media_file") . "/" . $objectStr . "/" . $imageName;
            if (is_file($originalImage)) {
                $file_name = basename($full_path_file); //test.jpg
                $folderThumb = str_replace($file_name, "", $full_path_file); //duong dan file
                if (!is_dir($folderThumb)) {
                    @mkdir($folderThumb, 0777, true);
                }
                //neu ton tai $originalImage thi generate no ra anh thumbnail
                $thumbnail = new sfThumbnail($width, $height);
                $thumbnail->loadFile($originalImage);
                $thumbnail->save($full_path_file, 'image/jpeg');
                return sfConfig::get('app_url_media_file') . "/" . $objectStr . "/" . $folderThumbName . "/" . $imageName;
            }
            return sfConfig::get($configDefaultImage);
        } catch (Exception $ex) {
            return sfConfig::get($configDefaultImage);
        }
    }

    /**
     * @author ngoctv1
     * Ham encode the iframe trong truong hop insert truc tiep vao db
     * @static
     * @param       $str - Xau can encode
     * @param array $tags - Mang cac tag se strip, vi du: array('a', 'b')
     * @return mixed|string
     */
    public static function strip_html_tags_iframe($string, $tags = array())
    {
        if (!empty($tags)) {
            $str = '';
            foreach ($tags as $tag) {
                $str = str_replace('<' . $tag, '&lt;' . $tag, str_replace('</' . $tag, '&lt;/' . $tag, str_replace('<' . strtoupper($tag), '&lt;' . strtoupper($tag), str_replace('</' . strtoupper($tag), '&lt;/' . strtoupper($tag), $string))));
            }
            return $str;
        } else {
            return $string;
        }
    }

    /**
     * @author hoangl
     * Ham loai bo tat ca cac the html
     * @static
     * @param       $str - Xau can loai bo tag
     * @param array $tags - Mang cac tag se strip, vi du: array('a', 'b')
     * @param bool $stripContent
     * @return mixed|string
     */
    public static function encodeOutput($string, $force = FALSE)
    {

        if (sfConfig::get('sf_escaping_strategy') == "1" && sfConfig::get('sf_escaping_method') == "ESC_SPECIALCHARS" && $force == false) {
            return htmlentities($string, ENT_QUOTES, 'UTF-8');//self::strip_html_tags_iframe($string, array('iframe','textarea'));
//            return $string;
        } else {
            //ngoctv them ham strip_html_tags_iframe
            return htmlspecialchars(self::strip_html_tags_iframe($string, array('iframe')), ENT_COMPAT, sfConfig::get('sf_charset'));
            //        return htmlentities($string, ENT_QUOTES, 'UTF-8');
        }
    }

    /**
     * Ham tra cat ky tu tieng viet
     * @param string $text
     * @param int $length
     * @param string $truncateString
     * @param string $truncateLastspace
     * @throws dmException
     */
    public static function truncate($text, $length = 30, $truncateString = '...', $truncateLastspace = false, $escapeHtml = false)
    {
        /**
         * Ham tra cat ky tu tieng viet
         * @param $text
         * @param int $length
         * @param string $truncateString
         * @param bool $truncateLastspace
         * @return string
         * @throws dmException
         */
        if (sfConfig::get('sf_escaping_method') == 'ESC_SPECIALCHARS') {
            $text = htmlspecialchars_decode($text, ENT_QUOTES);
        }

        if (is_array($text)) {
            throw new dmException('Can not truncate an array: ' . implode(', ', $text));
        }

        $text = (string)$text;

        if (extension_loaded('mbstring')) {
            $strlen = 'mb_strlen';
            $substr = 'mb_substr';
            //hatt12 them dong nay de dem ky tu tieng viet
            $countStr = $strlen($text, 'utf-8');
            if ($countStr > $length) {
                $text = $substr($text, 0, $length, 'utf-8');

                if ($truncateLastspace) {
                    $text = preg_replace('/\s+?(\S+)?$/', '', $text);
                }

                $text = $text . $truncateString;
            }
        } else {
            $strlen = 'strlen';
            $substr = 'substr';
            $countStr = $strlen($text);
            if ($countStr > $length) {
                $text = $substr($text, 0, $length);

                if ($truncateLastspace) {
                    $text = preg_replace('/\s+?(\S+)?$/', '', $text);
                }

                $text = $text . $truncateString;
            }
        }

        if ($escapeHtml) {
            return $text;
        }
        return htmlspecialchars($text, ENT_QUOTES, 'UTF-8');
    }

    public static function replaceSpecialChar($str)
    {
        $specialChar = array(
            unichr(160), //'\xA0',     // space
            # '\x60',     //
            # '\xB4',     //
            unichr(8216), // '\x2018',   // left single quotation mark
            unichr(8217), // '\x2019',   // right single quotation mark
            unichr(8220), // '\x201C',   // left double quotation mark
            unichr(8221), // '\x201D'    // right double quotation mark
            unichr(130), // baseline single quote
            unichr(145), // left single quote
            unichr(146), // right single quote)
            unichr(147), // right single quote)
            unichr(148), // right single quote)
        );
        $specialCharReplace = array(
            ' ', // space
            # '\x60',     //
            # '\xB4',     //
            "'", // left single quotation mark
            "'", // right single quotation mark
            '"', // left double quotation mark
            '"', // right double quotation mark
            ',', // baseline single quote
            "'", // 145
            "'", // 146
            '"', // 147
            '"', // 148
        );
        return str_replace($specialChar, $specialCharReplace, $str);
    }

    /**
     * @author ngoctv
     * Ham format lai gia theo dang {aa,aaa,aaa}
     * @param int $price
     * @param int $number So ky tu sau dau $char
     * @param char $char Ky tu phan cach
     * @param type $unit Don vi tien te
     * @param type $default Chuoi mac dinh khi gia = 0
     * @return type
     */
    public static function generatePriceToString($price, $number = 3, $char = ',', $unit = 'đ', $default = '0')
    {
        return number_format($price, 0, '.', ',') . $unit;
//        if ($price > 0) {
//            $count = strlen($price);
//            $result = $price;
//            $i = 0;
//            while ($count > $number) {
//                $substr = substr($price, $count - $number, $number);
//                $result = $char . $substr . $result;
//                $count = $count - $number;
//                if ($count <= $number) {
//                    $substr = substr($price, 0, $count);
//                    $result = $substr . $result;
//                }
//                $i++;
//            }
//           $result =  substr($result, 0, strlen($price) + $i);
//            return $result . " " . $unit;
//        } else {
//            return $default;
//        }
    }

    public static function generateNumber()
    {

        $string = "";
        $possible = "012346789";
        $length = sfConfig::get('app_lenght_reg_code', 8);
        $maxlength = strlen($possible);

        if ($length > $maxlength) {
            $length = $maxlength;
        }
        // set up a counter for how many characters are in
        $i = 0;
        // add random characters until $length is reached
        while ($i < $length) {
            // pick a random character from the possible ones
            $char = substr($possible, mt_rand(0, $maxlength - 1), 1);
            // have we already used this character?
            if (!strstr($string, $char)) {
                // no, so it's OK to add it onto the end of whatever we've already got...
                $string .= $char;

                $i++;
            }
        }
        return $string;

    }

    /**
     * @author: ngoctv
     * Ham tao anh thumbnail co text Watermark ghi len anh
     * @param type $dir_root
     * @param type $dir_module
     * @param type $filename
     * @param type $width
     * @param type $height
     */
    public static function createImage($dir_root, $dir_module, $filename, $width, $height)
    {
        $in_filename = $dir_root . $dir_module . $filename;
        $out_filename = $dir_root . $dir_module . "thumbs/" . $filename;
        //var_dump($in_filename);die; file_exists
        if (!is_file($in_filename)) {
            return sfConfig::get("app_url_media_default_file");
        } else {
            $src_img = ImageCreateFromJpeg($in_filename);
            $old_x = ImageSX($src_img);
            $old_y = ImageSY($src_img);
            $dst_img = ImageCreateTrueColor($width, $height);
            ImageCopyResampled($dst_img, $src_img, 0, 0, 0, 0, $width, $height, $old_x, $old_y);

            self::addWatermark($dst_img);
            $quality = sfConfig::get("app_thumbs_images_quality") ? sfConfig::get("app_thumbs_images_quality") : 80;
            ImageJpeg($dst_img, $out_filename, $quality);
            ImageDestroy($dst_img);
            ImageDestroy($src_img);
            return sfConfig::get("app_url_media_file") . $dir_module . "thumbs/" . $filename;
        }
    }

    /**
     * @author: ngoctv
     * Ham tao text Watermark
     * @param type $image
     * @return type
     */
    static function addWatermark($image)
    {
        $text = sfConfig::get("app_watermark_images_text");

        $font = realpath($_SERVER["DOCUMENT_ROOT"] . sfConfig::get("app_watermark_font_name")); // case sensitive
        if ($font == false) return;

        $fontSize = sfConfig::get("app_watermark_font_size");
        $borderOffset = sfConfig::get("app_watermark_font_border");

        $dimensions = ImageTtfBBox($fontSize, 0, $font, $text . "@");
        $lineWidth = ($dimensions[2] - $dimensions[0]);

        $textX = (ImageSx($image) - $lineWidth) / 2;
        $textY = $borderOffset - $dimensions[7];
        $red = sfConfig::get("app_watermark_color_red");
        $green = sfConfig::get("app_watermark_color_green");
        $blue = sfConfig::get("app_watermark_color_blue");
        $color = ImageColorAllocate($image, $red, $green, $blue);
        ImageTtfText($image, $fontSize, 0, $textX, $textY, $color, $font, $text);
    }

    /**
     * @author ngoctv
     * Ham kiem tra mot ky tu hay mot chuoi co trong phan dau cua chuoi khac hay khong, neu co thi tra ve true nguoc lai la false
     * @param type $haystack
     * @param type $needle
     * @return type
     */
    public static function startsWith($haystack, $needle)
    {
        return !strncmp($haystack, $needle, strlen($needle));
    }

    /**
     * @author ngoctv
     * Ham kiem tra mot ky tu hay mot chuoi co trong phan duoi cua chuoi khac hay khong, neu co thi tra ve true nguoc lai la false
     * @param type $haystack
     * @param type $needle
     * @return boolean
     */
    public static function endsWith($haystack, $needle)
    {
        $length = strlen($needle);
        if ($length == 0) {
            return true;
        }
        return (substr($haystack, -$length) === $needle);
    }

    /**
     * @author ngoctv
     * ham tra ve so ngay trong thang
     * @param type $month
     * @param type $year
     * @return type
     */
    public static function days_of_month($month, $year)
    {
        // calculate number of days in a month
        return $month == 2 ? ($year % 4 ? 28 : ($year % 100 ? 29 : ($year % 400 ? 28 : 29))) : (($month - 1) % 7 % 2 ? 30 : 31);
    }

    /**
     * @des:sub_string trong popup
     * @author: loilv4
     * @created: 22/04/2013
     * @param: $str, $length, $truncateString, $truncateLastspace
     * @return: $str
     */
    public static function subString($str, $length = 22, $truncateString = '...', $truncateLastspace = true)
    {
        $str = self::replaceSpecialCharsFromWord($str);
        $str = (string)$str;
        if (extension_loaded('mbstring')) {
            $strlen = 'mb_strlen';
            $substr = 'mb_substr';
        } else {
            $strlen = 'strlen';
            $substr = 'substr';
        }

        if ($strlen($str) > $length) {
            if ($substr == 'mb_substr') {
                $str = $substr($str, 0, $length - $strlen($truncateString), 'UTF-8');
            } else {
                $str = $substr($str, 0, $length - $strlen($truncateString));
            }
            if ($truncateLastspace) {
                $str = preg_replace('/\s+?(\S+)?$/', '', $str);
            }
            $str = $str . $truncateString;
        }
        return $str;
    }

    /**
     * @des:replace trong popup
     * @author: loilv4
     * @created: 22/04/2013
     * @param: $strInput, $limit
     * @return: $resultReturn
     */
    public static function replaceSpecialCharsFromWord($strInput)
    {
        $strInput = str_replace('“', '"', $strInput);
        $strInput = str_replace('”', '"', $strInput);
        return $strInput;
    }

    /**
     * @des:cat dong thoi encode trong popup
     * @author: loilv4
     * @created: 22/04/2013
     * @param: $strInput, $limit
     * @return: $resultReturn
     */
    //truong hop $strInput ko bi encode boi symfony, return tu dong encode anti XSS
    public static function getLimitStringWithoutEncode($strInput, $limit = 10)
    {
        $strInput = self::replaceSpecialCharsFromWord($strInput);

        $resultReturn = vtSecurity::encodeOutput(VtHelper::subString($strInput, $limit, '...', true));
        return $resultReturn;
    }

    public static function generateString($length = 8)
    {

        $string = "";
        $possible = "2346789bcdfghjkmnpqrtvwxyzBCDFGHJKLMNPQRTVWXYZ";

        $maxlength = strlen($possible);

        if ($length > $maxlength) {
            $length = $maxlength;
        }
        // set up a counter for how many characters are in
        $i = 0;
        // add random characters until $length is reached
        while ($i < $length) {
            // pick a random character from the possible ones
            $char = substr($possible, mt_rand(0, $maxlength - 1), 1);
            // have we already used this character?
            if (!strstr($string, $char)) {
                // no, so it's OK to add it onto the end of whatever we've already got...
                $string .= $char;

                $i++;
            }
        }
        return $string;
    }

    public static function getImagePath($source, $type = '')
    {
        if ($type != '') {
            $defaultImage = sfConfig::get('app_image_default_' . $type);
        } else {
            $defaultImage = sfConfig::get('app_image_default');
        }
        return (file_exists(sfConfig::get('sf_web_dir') . $source) && is_file(sfConfig::get('sf_web_dir') . $source)) ? $source : $defaultImage;
    }

    /**
     * Lay link anh thumbnail<br />
     * Vi du su dung:<br />
     * <img src="<?php VtHelper::getThumbUrl('/medias/huypv/2011/06/15/abc.jpg', 90, 60); ?>" />
     * @param string $source /medias/huypv/2011/06/15/abc.jpg (nam trong thu muc web!)
     * @author huypv
     * @param int $width
     * @param int $height
     * @return string /medias/huypv/2011/06/15/thumbs/abc_90_60.jpg
     */
    public static function getThumbUrl($source, $width = null, $height = null, $type = '')
    {
        if ($type != '') {
            $defaultImage = sfConfig::get('app_image_default_' . $type);
        } else {
            $defaultImage = sfConfig::get('app_image_default');
        }
        if ($width == null && $height == null)
            return (file_exists(sfConfig::get('sf_web_dir') . $source)) ? $source : $defaultImage;
        if (empty($source)) {
            return $defaultImage;
        }
        $mediasDir = sfConfig::get('sf_web_dir');
        $fullPath = $mediasDir . $source;
        $pos = strrpos($source, '/');
        if ($pos !== false) {
            $filename = substr($source, $pos + 1);

            $app = sfContext::getInstance()->getConfiguration()->getApplication();
            switch ($app) {
                default:
                    $dir = '/cache/' . substr($source, 1, $pos);
            }
        } else {
            return $defaultImage;
        }
        $pos = strrpos($filename, '.');
        if ($pos !== false) {
            $basename = substr($filename, 0, $pos);
            $extension = substr($filename, $pos + 1);

            if (strtolower($extension) == 'bmp') {
                $fullPath = VtBmpImageConvert::ImageCreateFromBmp(sfConfig::get('sf_web_dir') . $source);
                $extension = 'jpg';
            }
        } else {
            return $defaultImage;
        }

        if ($width == null) {
            $thumbName = $basename . '_auto_' . $height . '.' . $extension;
        } else if ($height == null) {
            $thumbName = $basename . '_' . $width . '_auto.' . $extension;
        } else {
            $thumbName = $basename . '_' . $width . '_' . $height . '.' . $extension;
        }

        $fullThumbPath = $mediasDir . $dir . $thumbName;
# Neu thumbnail da ton tai roi thi khong can generate
        if (file_exists($fullThumbPath)) {
            return $dir . $thumbName;
        }
# Neu thumbnail chua ton tai thi su dung plugin de tao ra
        $scale = ($width != null && $height != null) ? false : true;
        $thumbnail = new sfThumbnail($width, $height, $scale, true, 100);
        if (!is_file($fullPath)) {
            return $defaultImage;
        }
        $thumbnail->loadFile($fullPath);

        if (!is_dir($mediasDir . $dir))
            mkdir($mediasDir . $dir, 0777, true);
        $thumbnail->save($fullThumbPath, 'image/jpeg');
        return (file_exists(sfConfig::get('sf_web_dir') . $dir . $thumbName)) ? $dir . $thumbName : $defaultImage;
    }

    // huync2: lay anh mac dinh

    public static function getThumbUrlWap($source)
    {
        $defaultImage = sfConfig::get('app_image_default_default');
        $mediasDir = sfConfig::get('sf_web_dir');
        $fullPath = $mediasDir . $source;
        $pos = strrpos($source, '/');
        if ($pos !== false) {
            $filename = substr($source, $pos + 1);

            $app = sfContext::getInstance()->getConfiguration()->getApplication();
            switch ($app) {
                default:
                    $dir = '/cache/' . substr($source, 1, $pos);
            }
        } else {
            return $defaultImage;
        }
        $pos = strrpos($filename, '.');
        if ($pos !== false) {
            $basename = substr($filename, 0, $pos);
            $extension = substr($filename, $pos + 1);

            if (strtolower($extension) == 'bmp') {
                $fullPath = VtBmpImageConvert::ImageCreateFromBmp(sfConfig::get('sf_web_dir') . $source);
                $extension = 'jpg';
            }
        } else {
            return $defaultImage;
        }
        if (file_exists($fullPath)) {
            return $source;
        } else {
            return sfConfig::get('app_image_default_default');
        }
    }

    /**
     * Tra ve dinh dang thoi gian: Thứ 4, 07/05/2014 14:22
     * @author NamDT5
     * @created on Jul 12, 2012
     * @param unknown_type $string
     * @param unknown_type $encoding
     */
    public static function getFormatDate($datetime)
    {
        $datearr = array(
            "Monday" => "Thứ hai",
            "Tuesday" => "Thứ ba",
            "Wednesday" => "Thứ tư",
            "Thursday" => "Thứ năm",
            "Friday" => "Thứ sáu",
            "Saturday" => "Thứ bảy",
            "Sunday" => "Chủ nhật"
        );
        $date = date("l", strtotime($datetime));
        return $datearr[$date] . ', ' . date(' d/m/Y H:i', strtotime($datetime));
    }

    /**
     * Luu y: Hien tai ham chi su dung trong phan backend.
     * @param $datetime Tham so truyen vao can theo dinh dang: Y-m-d H:i:s hoac d-m-Y H:i:s ; m/d/Y H:i:s
     * @param string $format
     * @return datetime
     * @author: diepth2, trungpd2
     */
    public static function reFormatDate($datetime, $format = 'd/m/Y H:i:s')
    {
        return (isset($datetime) && ($datetime != '0000-00-00 00:00:00')) ? date($format, strtotime($datetime)) : '';
    }

    /**
     * Ham chuyen dinh dang ngay ve dinh dang Y-m-d. Luu y: hai tham so $date va $old_format can nhap theo dung dinh
     * dang. Vi du neu dinh dang $old_format = 'd/m/Y' thi $date = '20/12/2015'.
     * @param $date Can nhap theo dinh dang d/m/Y giong nhu dinh dang $old_format.
     * @param string $old_format neu khong nhap thi mac dinh se theo dinh dang d/m/Y
     * @param string $new_format
     * @param $default Mac dinh gia tri tra ve neu tham so $date co gia tri la null hoac ''
     * @return date
     * @author: diepth2, trungpd2
     */
    public static function changeFormatDate($date = null, $default = '0000-00-00', $old_format = 'd/m/Y', $new_format = 'Y-m-d')
    {
        return $date ? date_format(date_create_from_format($old_format, $date), $new_format) : $default;
    }

    /**
     * preProcess query search backsplash (\) tat ca doan code search like trong PHP ma can tim ky tu dac biet deu phai goi ham nay
     * @author tuanbm
     * @modifier chuyennv2
     * @date 2012/06/27
     * @return string
     */
    public static function preProcessForSearchLike($param)
    {
        $param = addslashes($param);
        if (($param != '')) {
            $param = str_replace("%", "\\%", $param);
            $param = str_replace("_", "\\_", $param);
        }
        return vtSecurity::decodeInput($param);
    }

    //get guild
    public static function getGUID()
    {
        if (function_exists('com_create_guid')) {
            return com_create_guid();
        } else {
            mt_srand((double)microtime() * 10000);//optional for php 4.2.0 and up.
            $charid = strtoupper(md5(uniqid(rand(), true)));
            $hyphen = chr(45);// "-"
            $uuid = substr($charid, 0, 8) . $hyphen
                . substr($charid, 8, 4) . $hyphen
                . substr($charid, 12, 4) . $hyphen
                . substr($charid, 16, 4) . $hyphen
                . substr($charid, 20, 12);
            return $uuid;
        }
    }

    public static function translateQuery($str, $trim = true)
    {
        if ($str == null || $str == '')
            return $str;
//      Tìm kiếm ký tự đặc biệt
        if (urlencode($str) == "%5C") {
//           var_dump(urlencode($str));die;

            return "\\";
        }
        $str = $trim ? trim($str) : $str;
        $str = addcslashes($str, "\\%_");
        return $str;
    }

    public static function translateQueryNew($str, $trim = true)
    {
        if ($str == null || $str == '')
            return '%' . $str . '%';
//      Tìm kiếm ký tự đặc biệt
        if (urlencode($str) == "%5C") {
//           var_dump(urlencode($str));die;

            return '%|\%' . 'ESCAPE' . '|';
        }
        $str = $trim ? trim($str) : $str;
        $str = addcslashes($str, "\\%_");
        return '%' . $str . '%';
    }

    //check format date
    public static function  validateDate($date, $format = 'Y-m-d')
    {
        $d = DateTime::createFromFormat($format, $date);
        return $d && $d->format($format) == $date;
    }


    public static function genPublisherId()
    {
        $add = rand(1, 100);
        $getMaxId = VtPublisherInfoTable::getMaxId();
        return ($getMaxId->maxId + $add);
    }

    public static function genAppInfoId()
    {
        $add = rand(1, 100);
        $getMaxId = VtAppInfoTable::getMaxId();
        return ($getMaxId->maxId + $add);
    }

    /**
     * gen UUID cho ung dung cua nha phat trien. dinh dang ID: WyAB trong do
     * W: hai ky tu tu 01 -> 54
     * y: hai ky tu tu 00 -> 99
     * A: mot ky tu tu 0 -> 9
     * B: chuoi so bat ky
     * vi du UUID=251541050
     * @return string
     * @author: trungpd2
     */
    public static function genAppUUID()
    {
        $value = rand(1, 5);
        $lastId = VtAppInfoTable::getLastInsertId()->maxId;
        $lastId = (strlen($lastId) == 0) ? (100 + $value) : ($lastId + $value);
        $lastId = self::u_date('Wy') . $lastId;
        $uuid = self::getSecretA($lastId) . $lastId;
        return $uuid;
    }

    /**
     * gen UUID cho nha phat trien. dinh dang ID: WyAB trong do
     * W: hai ky tu tu 01 -> 54
     * y: hai ky tu tu 00 -> 99
     * A: mot ky tu tu 0 -> 9
     * B: chuoi so bat ky
     * vi du UUID=251541050
     * @return string
     * @author: trungpd2
     */
    public static function genPublisherUUID()
    {
        $value = rand(1, 5);
        $lastId = VtPublisherInfoTable::getLastInsertId()->maxId;
        $lastId = (strlen($lastId) == 0) ? (100 + $value) : ($lastId + $value);
        $weekOfYear = self::u_date('Wy');
        $uuid = $weekOfYear . self::getSecretA($weekOfYear . $lastId) . $lastId;
        return $uuid;
    }

    /**
     * Thuat toan tra ve ma so bi mat (A) trong day so. Vi du UUID = 2515A1050 => A=8.
     * @param $stringId
     * @return int
     * @author: trungpd2
     */
    private static function getSecretA($stringId)
    {
        $arr = str_split($stringId);
        $value0 = 0;
        $value1 = 0;
        for ($i = 0; $i < count($arr); $i++) {
            if ((($i % 2) == 0)) {
                $value0 = $value0 + $arr[$i];
            } else {
                $value1 = $value1 + $arr[$i];
            }
        }
        $value0 = $value0 * 2;
        $result = $value0 + $value1;
        return ($result % 10 == 0) ? 0 : (10 - ($result % 10));
    }

    public static function date_format($str_date, $type = 'd-m-Y')
    {
        if ($str_date != '' || $str_date != '0000-00-00 00:00:00') {
            return date_format(date_create($str_date), $type);
        } else {
            return date('d-m-Y');
        }
    }

    public static function u_date($format = 'u', $utimestamp = null)
    {
        if (is_null($utimestamp))
            $utimestamp = microtime(true);

        $timestamp = floor($utimestamp);
        $milliseconds = round(($utimestamp - $timestamp) * 1000);
        return date(preg_replace('`(?<!\\\\)u`', $milliseconds, $format), $timestamp);
    }

    /**
     * 23/01/2015 - doanpv_os: hàm kiểm tra tính hợp lệ của SĐT các mạng ở VN
     * @param $number : có dạng 09xxx, 016xxx, 0188xxx, 0199xxx
     * @return bool
     */
    public static function isMobileNumber($number)
    {
        if (preg_match(self::VALID_PHONE, $number)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * @return mixed
     * @author: trungpd2
     */
    public static function getRealIpAddr()
    {
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {//check ip from share internet
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {//to check ip is pass from proxy
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        return $ip;
    }

    public static function get_browsername()
    {
        $userAgent = $_SERVER['HTTP_USER_AGENT'];
        $browsers = array(
            array("IE", "Microsoft Internet Explorer"),
            array("Chrome", "Google Chrome"),
            array("Firefox", "Mozzila Firefox"),
            array("Opera", "Opera"),
            array("Safari", "Apple Safari")
        );
        foreach ($browsers as $browser) {
            if (strpos($userAgent, $browser[0]) !== false)
                return $browser[1];
        }
        return "unknown";

    }

    /**
     * @author doanpv
     * @param $text
     * @return string
     */
    public static function test2slug($text)
    {
        // replace all non letters or digits by -
        $text = preg_replace('/\W+/', '-', $text);

        // trim and lowercase
        $text = strtolower(trim($text, '-'));

        return $text;
    }

    /**
     * @author doanpv
     * @meaning hàm tạo link thân thiện - slug
     * @param $str
     * @param int $strtolower
     * @return mixed|string
     */
    public static function unsigned($str, $strtolower = 0)
    {
        $marTViet = array(
            "à", "á", "ạ", "ả", "ã", "â", "ầ", "ấ", "ậ", "ẩ", "ẫ", "ă", "ằ", "ắ", "ặ", "ẳ", "ẵ",
            "è", "é", "ẹ", "ẻ", "ẽ", "ê", "ề", "ế", "ệ", "ể", "ễ",
            "ì", "í", "ị", "ỉ", "ĩ",
            "ò", "ó", "ọ", "ỏ", "õ", "ô", "ồ", "ố", "ộ", "ổ", "ỗ", "ơ", "ờ", "ớ", "ợ", "ở", "ỡ",
            "ù", "ú", "ụ", "ủ", "ũ", "ư", "ừ", "ứ", "ự", "ử", "ữ",
            "ỳ", "ý", "ỵ", "ỷ", "ỹ",
            "đ",
            "À", "Á", "Ạ", "Ả", "Ã", "Â", "Ầ", "Ấ", "Ậ", "Ẩ", "Ẫ", "Ă", "Ằ", "Ắ", "Ặ", "Ẳ", "Ẵ",
            "È", "É", "Ẹ", "Ẻ", "Ẽ", "Ê", "Ề", "Ế", "Ệ", "Ể", "Ễ",
            "Ì", "Í", "Ị", "Ỉ", "Ĩ",
            "Ò", "Ó", "Ọ", "Ỏ", "Õ", "Ô", "Ồ", "Ố", "Ộ", "Ổ", "Ỗ", "Ơ", "Ờ", "Ớ", "Ợ", "Ở", "Ỡ",
            "Ù", "Ú", "Ụ", "Ủ", "Ũ", "Ư", "Ừ", "Ứ", "Ự", "Ử", "Ữ",
            "Ỳ", "Ý", "Ỵ", "Ỷ", "Ỹ",
            "Đ", " ");
        $marKoDau = array(
            "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a",
            "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e",
            "i", "i", "i", "i", "i",
            "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o",
            "u", "u", "u", "u", "u", "u", "u", "u", "u", "u", "u",
            "y", "y", "y", "y", "y",
            "d",
            "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A",
            "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E",
            "I", "I", "I", "I", "I",
            "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O",
            "U", "U", "U", "U", "U", "U", "U", "U", "U", "U", "U",
            "Y", "Y", "Y", "Y", "Y",
            "D", "-");
        if ($strtolower != 0) {
            $str = strtolower(str_replace($marTViet, $marKoDau, $str));
        } else {
            $str = str_replace($marTViet, $marKoDau, $str);
        }
        return $str;
    }

    /**
     * @author Hàm var_dump xem dữ liệu
     * @param $data
     */
    public static function echo_pre_die($data)
    {
        echo "<pre>";
        print_r($data);
        echo "</pre>";
        die();
    }

    public static function echo_pre($data)
    {
        echo "<pre>";
        print_r($data);
        echo "</pre>";
    }

    /**
     * @usage dùng để chuyển đổi giới tính dạng Text -> Int khi import khách hàng từ file excel
     * @param $strGender
     * @return int|string
     */
    public static function convertGenderWhenImport($strGender)
    {
        $strGender = trim($strGender);
        if ($strGender == 'Nam' || $strGender == 'NAM') {
            return 1;
        } elseif ($strGender == 'Nữ' || $strGender == 'NỮ') {
            return 0;
        } else {
            return 1;
        }
    }

    /**
     * @author doanpv
     * @usage sử dụng để định dạng lại ngày sinh <= ngày hiện tại - 10
     * @param $strBirthday
     * @return int|string
     */
    public static function convertBirthdayWhenImport($strBirthday)
    {
        $strBirthday = trim($strBirthday);
        if ($strBirthday == '') {
            return '0000-00-00';
        } else {
            $pattern = '/^[0-9]{1,2}\/[0-9]{1,2}\/[0-9]{4}$/';
            if (preg_match($pattern, $strBirthday)) {
                $array = explode('/', $strBirthday);
                if (checkdate($array[1], $array[0], $array[2])) {
                    $date = $array[2] . '-' . $array[1] . '-' . $array[0];
                    if (strtotime($date) < time() - 10 * 365 * 24 * 3600) {
                        $d = $array[0];
                        $m = $array[1];
                        if ($d < 10 && strlen($d) == 1) {
                            $d = '0' . $d;
                        }
                        if ($m < 10 && strlen($m) == 1) {
                            $m = '0' . $m;
                        }
                        return $array[2] . '-' . $m . '-' . $d;
                    } else {
                        return '0000-00-00';
                    }
                } else {
                    return '0000-00-00';
                }
            } else {
                return '0000-00-00';
            }
        }
    }

    public static function convertAddressWhenImport($strAddress)
    {

    }

    public static function convertNameWhenImport($strName)
    {
        $strName = trim($strName);
        return strip_tags($strName);
    }

    public static function dateFormatOS($date, $format = 'd/m/Y')
    {
        //0000-00-00 00:00:00
        $pattern = '/^([0-9]{4})-([0-9]{1,12})-([0-9]{1,31}).*$/';
        /*if($date){
            $pattern = '/^([0-9]{4})-([0-9]{1,12})-([0-9]{1,31}).*$/';
            if(preg_match($pattern, $date, $results)){
                if(checkdate($results[2], $results[3], $results[1])){
                    return date_format(date_create($date), $format);
                }else{
                    return '';
                }
            }else{
                return '';
            }
        }else{
            return '';
        }*/

        if ($date && preg_match($pattern, $date, $results) && checkdate($results[2], $results[3], $results[1])) {
            return date_format(date_create($date), $format);
        }
        return '';
    }

    public static function xssClean($data)
    {
        // Fix &entity\n;
        $data = str_replace(array('&amp;', '&lt;', '&gt;'), array('&amp;amp;', '&amp;lt;', '&amp;gt;'), $data);
        $data = preg_replace('/(&#*\w+)[\x00-\x20]+;/u', '$1;', $data);
        $data = preg_replace('/(&#x*[0-9A-F]+);*/iu', '$1;', $data);
        $data = html_entity_decode($data, ENT_COMPAT, 'UTF-8');

        // Remove any attribute starting with "on" or xmlns
        $data = preg_replace('#(<[^>]+?[\x00-\x20"\'])(?:on|xmlns)[^>]*+>#iu', '$1>', $data);

        // Remove javascript: and vbscript: protocols
        $data = preg_replace('#([a-z]*)[\x00-\x20]*=[\x00-\x20]*([`\'"]*)[\x00-\x20]*j[\x00-\x20]*a[\x00-\x20]*v[\x00-\x20]*a[\x00-\x20]*s[\x00-\x20]*c[\x00-\x20]*r[\x00-\x20]*i[\x00-\x20]*p[\x00-\x20]*t[\x00-\x20]*:#iu', '$1=$2nojavascript...', $data);
        $data = preg_replace('#([a-z]*)[\x00-\x20]*=([\'"]*)[\x00-\x20]*v[\x00-\x20]*b[\x00-\x20]*s[\x00-\x20]*c[\x00-\x20]*r[\x00-\x20]*i[\x00-\x20]*p[\x00-\x20]*t[\x00-\x20]*:#iu', '$1=$2novbscript...', $data);
        $data = preg_replace('#([a-z]*)[\x00-\x20]*=([\'"]*)[\x00-\x20]*-moz-binding[\x00-\x20]*:#u', '$1=$2nomozbinding...', $data);

        // Only works in IE: <span style="width: expression(alert('Ping!'));"></span>
        $data = preg_replace('#(<[^>]+?)style[\x00-\x20]*=[\x00-\x20]*[`\'"]*.*?expression[\x00-\x20]*\([^>]*+>#i', '$1>', $data);
        $data = preg_replace('#(<[^>]+?)style[\x00-\x20]*=[\x00-\x20]*[`\'"]*.*?behaviour[\x00-\x20]*\([^>]*+>#i', '$1>', $data);
        $data = preg_replace('#(<[^>]+?)style[\x00-\x20]*=[\x00-\x20]*[`\'"]*.*?s[\x00-\x20]*c[\x00-\x20]*r[\x00-\x20]*i[\x00-\x20]*p[\x00-\x20]*t[\x00-\x20]*:*[^>]*+>#iu', '$1>', $data);

        // Remove namespaced elements (we do not need them)
        $data = preg_replace('#</*\w+:\w[^>]*+>#i', '', $data);

        do {
            // Remove really unwanted tags
            $old_data = $data;
            $data = preg_replace('#</*(?:applet|b(?:ase|gsound|link)|embed|frame(?:set)?|i(?:frame|layer)|l(?:ayer|ink)|meta|object|s(?:cript|tyle)|title|xml)[^>]*+>#i', '', $data);
        } while ($old_data !== $data);

        // we are done...
        return $data;
    }

    public static function preLikeQuery($s, $e)
    {
        return str_replace(array($e, '_', '%'), array($e . $e, $e . '_', $e . '%'), $s);
    }

    public static function mailTo($subject, $to, $body, $namespace = 'ViettelAPI Support')
    {
        try {
            $i18n = sfContext::getInstance()->getI18N();
            $transport = Swift_SmtpTransport::newInstance(sfConfig::get('app_smtp_host'), sfConfig::get('app_smtp_port'), sfConfig::get('app_smtp_smtpsecure'))
                ->setUsername(sfConfig::get('app_smtp_username'))
                ->setPassword(sfConfig::get('app_smtp_password'));
            $mailer = Swift_Mailer::newInstance($transport);
            $message = Swift_Message::newInstance($subject)
                ->setFrom(array(sfConfig::get('app_smtp_username') => $namespace))
                ->setTo(array($to))
                ->setBody($body, 'text/html');
            return $mailer->send($message);
        } catch (phpmailerException $e) {
            sfContext::getInstance()->getLogger()->log('{Report_Claims} mail exception ' . $e->errorMessage());
        }
    }

    /*
    * XSS filter
    *
    * This was built from numerous sources
    * (thanks all, sorry I didn't track to credit you)
    *
    * It was tested against *most* exploits here: http://ha.ckers.org/xss.html
    * WARNING: Some weren't tested!!!
    * Those include the Actionscript and SSI samples, or any newer than Jan 2011
    *
    *
    * TO-DO: compare to SymphonyCMS filter:
    * https://github.com/symphonycms/xssfilter/blob/master/extension.driver.php
    * (Symphony's is probably faster than my hack)
    */
}

/**
 * Chuyen doi ky tu ASCII ve dang chuan UNICODE
 * @author NamDT5
 * @created on Jul 12, 2012
 * @param unknown_type $unicode
 * @param unknown_type $encoding
 */
function unichr($unicode, $encoding = 'UTF-8')
{
    return mb_convert_encoding("&#{$unicode};", $encoding, 'HTML-ENTITIES');
}

/**
 * Tra ve ma ASCII
 * @author NamDT5
 * @created on Jul 12, 2012
 * @param unknown_type $string
 * @param unknown_type $encoding
 */
function uniord($string, $encoding = 'UTF-8')
{
    $entity = mb_encode_numericentity($string, array(0x0, 0xffff, 0, 0xffff), $encoding);
    return preg_replace('`^&#([0-9]+);.*$`', '\\1', $entity);
}








