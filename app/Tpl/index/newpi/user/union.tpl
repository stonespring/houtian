<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/user.css" />
<style>
.left .user-bind .taobao_sync { background-position:0 -448px; }
.left .user-bind .taobao_sync_no { background-position:0 -464px; }
</style>
</head>
<body>
<div class="main w1200">
<include file="public:header" />
</div>
<div class="main mb20 {:C('ht_site_width')} clear">
	<div class="user_main">
		<include file="user/left" />


		<div class="right">
			<div class="menu-tag">
				<ul>
					<li class="active"><a href="{:U('user/union')}">我要邀请</a></li>
					<li><a href="{:U('user/unionlist')}">我的邀请</a></li>			   			   
				</ul>
			</div>
			<div class="u-tip">
				<p>通过您的专属邀请链接邀请好友访问{:C('ht_site_name')}，您将获得{$union.per_visit}{:L('exchange')}，每天最多可以获得{$union.count_visit}{:L('exchange')}！</p>
				<p>如果邀请的好友成功注册{:C('ht_site_name')}账号，您将获得{$union.per_reg}{:L('exchange')}，您每个月最多可以获得{$union.count_reg}个{:L('exchange')}！</p>
			</div>

			 
			<div class="invite_way">
				<div class="w1">
					<div class="icon"></div>
					<div class="link">
						<h4>通过QQ、旺旺等邀请好友</h4>
						<p><input type="text" class="ls copy-link1" style="width:335px" value="{$union_url}" readonly /></p>
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
						<p><textarea type="text" class="ls ls2" style="width:400px;height:80px;" readonly/>您可以在自己的QQ空间、人人网、豆瓣网或其它你常去的网站发表博文，以自己的口吻告诉你的朋友，推荐您的朋友加入{:C('ht_site_name')}，一起分享购物返现！</textarea></p>
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
</div>
<script src="__STATIC__/red/js/ZeroClipboard.js" type="text/javascript"></script>
<script language="JavaScript">
$(document).ready(function(){
	$('.invite_way .get').hover(
		function() {
			$(this).addClass('geth');
			},
		function() {
			$(this).removeClass('geth');
		}
	);
	init1();
	init2();
	init3();
});
</script>

<!--主部结束-->
<include file="public:footer" />
</body>
</html>