<?php

return array(
    'code'      => 'wechat',
    'name'      => '微信登录',
    'desc'      => '申请地址：https://mp.weixin.qq.com/',
    'author'    => '后天网络',
    'version'   => '1.0',
    'config'    => array(
        'app_key'   => array(
            'text'  => 'APP ID',
            'desc'  => '申请：https://mp.weixin.qq.com/',
            'type'  => 'text',
        ),
        'app_secret'=> array(
            'text'  => 'APP KEY',
            'desc'  => '申请：https://mp.weixin.qq.com/',
            'type'  => 'text',
        )
    )
);