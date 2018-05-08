<!DOCTYPE html>
<html>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/clipboard.js/1.5.12/clipboard.min.js"></script>
<head>
<include file='public:head'/>
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/alert.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/global.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/chaquan.css" />
<script type="text/javascript" src="__STATIC__/jwap/js/jquery-1.7.2.min.js"></script>
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/tcstyle.css">
</head>
<body>
<div class="main">    
<include file='public:header'/>
<include file='public:top'/>   
        <div class="app">
                        <div id="head">
                <div class="fixtop">
                    <span id="t-find"><a href="{:U('index/index')}" class="btn btn-left btn-back02" title="返回网站首页"></a></span>
                    <span id="t-index">会员登录</span>
                    <span id="t-user"><a href="{:U('user/register')}" class="free-reg" rel="nofollow">注册</a></span>
                </div>
            </div>
            
            <div class="wap-login">
                <form action="{:U('user/login')}" name="login_form" method="post" id="login_form">
                    <div class="login-info mt3">
                        <ul class="info-input clear">
                            <li>
                                <div class="clear">
                                    <input type="text" name="username" id="username" placeholder="请输入用户名" class="txt" autofocus="autofocus" />
                                </div>       				
                            </li>
                            <li><p class="line-on"></p></li>
                            <li>
                                <div class="clear">
                                    <input type="password" name="password" id="password" placeholder="请输入密码" class="txt"/>
                                </div>       				
                            </li>
						<li><p class="line-on"></p></li>
                        <a href="javascript:;" onclick='return confirm("为了您的账户安全，请使用电脑找回密码。")' class="free-reg" >忘记密码？</a>
                        </ul>
                        <div style="min-height:22px;margin-top: 3%">
                        <p style="display: none;" class="wap-tips"></p>
                        </div>
						<input type="hidden" name="from" value="{$from}" />
						<input type="hidden" name="action" id="login" value="login" />
						<input id="btn_login" type="submit" name="sub" class="sub" value="登录" autocomplete="off">
					
                        <div class="wap-app" >
                            <div class="third-txt">
                                <h5>其他方式登录</h5>
                            </div>
                            <div class="third-app clear">
							<volist name="oauth_list" id="val">
				              <a href="{:U('oauth/index', array('mod'=>$val['code']))}"  class="{$val.code}" onclick="log();"><img src="/static/jwap/images/wap_{$val.code}.png" /></a>
		                       </volist>
                                
                            </div> 
                        </div>
                    </div> 
                </form> 	
            </div>
  <div class="cd-popup3" id="log">
    <div class="cd-popup-container3" style="width:200px;height:200px;background:none;box-shadow:none;">
<div style="width:200px;height:200px;">
<img src="/static/jwap/images/loading.gif" style=" width="100%" height="100%" "/>
</div>

    </div>
</div>
<script language="javascript">
function log()
{
        
            $('#log').addClass('is-visible3');
            //$(".dialog-addquxiao").hide()
	
}

</script>
<script type="text/javascript">
        $(function () {            
            var ehtml = '<i><img src="/static/jwap/images/tips-ico.png" /></i>';

            function checkUserName() {
                var value = $("#username").val();
                var length = len(value);
                if (value == '' || value.length == 0) {
                    $(".wap-tips").html(ehtml + "你还没有输入用户名哦~").show();
                    return false;
                }
                else if (length < 4 || length > 25) {
                    $(".wap-tips").html(ehtml + "用户名长度应为4~25个字符,一个中文算2个字符").show();
                    return false;
                } else {
                    $(".wap-tips").hide();
                }
                return true;
            }
            function checkPassword() {
                var value = $("#password").val();
                if (value == '' || value.length == 0) {
                    $(".wap-tips").html(ehtml + "你还没有输入密码哦~").show();
                    return false;
                } else if (value.length < 6) {
                    $(".wap-tips").html(ehtml + "密码至少6个字符~").show();
                    return false;
                } else {
                    $(".wap-tips").hide();
                }
                return true;
            }

            function len(value) {
                var total = 0;
                for (i = 0; i < value.length; i++) {
                    var char = value.charCodeAt(i);
                    if ((char >= 0x0001 && char <= 0x007e) || (0xff60 <= char && char <= 0xff9f)) {
                        total++;
                    }
                    else {
                        total += 2;
                    }
                }
                return total;
            }


            $("#username").on('blur', function () {
                checkUserName();
            });

            $("#password").on('blur', function () {
                checkPassword();
            });            
        });
    </script>
<include file='public:footer'/>
</div>
</div>
<include file='public:footjs'/>
</body>
</html>