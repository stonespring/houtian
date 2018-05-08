<?php
/**
 * Wechat
 */
class WechatTOAuthV2 {
    public $appid = '';
    public $appkey = '';
	private $_authorize_url = 'https://open.weixin.qq.com/connect/oauth2/authorize';
  //构造函数，获取Access Token
  public function __construct($appid, $appkey)
  {
        $this->appid = $appid;
        $this->appkey = $appkey;
  }
    function getAuthorizeURL($callback) {
        $state = md5(uniqid(rand(), TRUE));
        $url = $this->_authorize_url ."?appid=".$this->appid."&redirect_uri=".urlencode($callback)."&response_type=code&scope=snsapi_userinfo&state=".$state."#wechat_redirect";
        cookie('wechat_state', $state);
      	return $url;
    }
		
	
    function getAccessToken($keys) {
        $wechat_state = cookie('wechat_state');
        if ($keys['state'] == $wechat_state) {
            $token_url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$this->appid."&secret=".$this->appkey."&code=".$keys["code"]."&grant_type=authorization_code";

            $response = $this->get_url_contents($token_url);
			$response=(json_decode($response, true));
            if (!$response) {
                exit('system error');
            }

            $params = $response;
       //     parse_str(json_encode($response), $params);


            return $params;
        } else {
            echo("error.");
        }
    }

//获取用户基本信息
    function getUserInfo($access_token, $openid) {
        $get_user_info = "https://api.weixin.qq.com/sns/userinfo?access_token=".$access_token."&openid=".$openid."&lang=zh_CN";
        $info = $this->get_url_contents($get_user_info);
        $arr = json_decode($info, true);
        return $arr;
    }
//https请求
    function do_post($url, $data) {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_POST, TRUE);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_URL, $url);
        $ret = curl_exec($ch);
        curl_close($ch);
        return $ret;
    }
    function get_url_contents($url) {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        $result =  curl_exec($ch);
        curl_close($ch);
        return $result;
    }

}