<!DOCTYPE html>
<html>
<head>
<include file="public:head" />
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/clipboard.js/1.5.12/clipboard.min.js"></script>
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/user.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/alert.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/global.css" />
</head>
<body>
<div class="main">
<include file="public:header" />
<include file='public:top'/>
<header id="head" class="head">
                <div class="fixtop">
                    <span id="t-find"><a href="{:U('user/index')}" class="btn btn-left btn-back" title="返回"></a></span>
                    <span id="t-index">邀请好友</span> 
                    
                </div>
            </header>
	<div class="user_main">

		<div class="right">
			<div class="menu-tag">
					<div class="menu-d1"><a href="{:U('user/union')}">邀请赚积分</a></div>
					<div class="menu-d"><a href="{:U('user/unionlist')}">我的邀请</a></div>
			</div>
			<div class="u-tip">
				<p>通过您的专属邀请链接邀请好友访问{:C('ht_site_name')}，您将获得{$union.per_visit}{:L('exchange')}，每天最多可以获得{$union.count_visit}{:L('exchange')}！</p>
				<p>如果邀请的好友成功注册{:C('ht_site_name')}账号，您将获得{$union.per_reg}{:L('exchange')}，您每个月最多可以获得{$union.count_reg}个{:L('exchange')}！</p>
			</div>

			<div class="invite_way">
				<div class="w1">
					<div class="icon"></div>
					<div class="link">
						<h4>通过QQ、微信等邀请好友</h4>
						<p><textarea type="text" id="cop_bt1" class="ls ls2 copy-link2" readonly />{$union_url}</textarea></p>
					</div>
				</div>
				<div class="w2">
					<div class="icon"></div>
					<div class="link">
						<h4>在自己常去的论坛上挂签名</h4>
						<p><textarea type="text" class="ls ls2 copy-link2" readonly />[url={$union_url}]{:C('ht_site_name')}[/url]</textarea></p>
					</div>
				</div>
				<div class="w3">
					<div class="icon"></div>
					<div class="link">
						<h4>在自己的博客上加友情链接或任何支持HTML的地方</h4>
						<p><textarea type="text" class="ls ls2 copy-link3" readonly /><a href="{$union_url}" target="_blank">{:C('ht_site_name')}</a></textarea></p>
					</div>
				</div>
				<div class="w5">
					<div class="icon"></div>
					<div class="link">
						<h4>在QQ空间或者其他博客网站上发文章</h4>
						<p><textarea type="text" class="ls ls2" style="height:80px;" readonly/>您可以在自己的QQ空间、人人网、豆瓣网或其它你常去的网站发表博文，以自己的口吻告诉你的朋友，推荐您的朋友加入{:C('ht_site_name')}，一起分享购物返现！</textarea></p>
					</div>
				</div>
			</div>
			<div class="invite_tip">
				<h3>注意事项：</h3>
				<ul>
					<li><p>1. 不要为了获得小小的邀请奖励而失掉了自己的诚信，我们会人工核查，对于查实的<font color="#FF0000">作弊行为</font>，我们将收回该帐号全部的邀请奖励，严重者将冻结所有收入并永久封号；</p></li>
					<li><p>2. 当好友通过您的邀请链接访问{:C('ht_site_name')}后，只要TA在1个小时内注册，均为有效；</p></li>
				</ul>
			</div>




		</div>

	</div>
	
	<include file="public:footer" />
	<script src="__STATIC__/jwap/js/setting.js"></script>
</div>
 
<script type="text/javascript">
	 var bt_value = document.getElementById("cop_bt1").value;
    function regain() {
        document.getElementById('cop_bt1').value = bt_value;
    }
    $(document).ready(function(){     
        var clipboard = new Clipboard('#copy-btn1');  
     
        clipboard.on('success', function(e) {    
            console.info('Action:', e.action);    
            console.info('Text:', e.text);    
            console.info('Trigger:', e.trigger);    
            document.getElementById("copy-btn1").innerHTML="已复制"; 
  //          e.clearSelection();    
        }); 
        clipboard.on('error', function(e) {    
 
            document.getElementById("copy-btn1").innerHTML="复制失败"; 
			alert("您浏览器不支持一键复制，请手动复制");
 
        }); 		
    }); 

    $('#copy_key_android').click(function() {
    	$('#closed').click();
    })


</script>
<include file='public:footjs'/>
</body>
</html>