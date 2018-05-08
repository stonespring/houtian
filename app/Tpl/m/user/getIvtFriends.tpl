<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
<link rel=stylesheet type=text/css href="__STATIC__/jwap/css/user.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/alert.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/global.css" />
</head>
<body>

<div class="main">
<include file="public:header" />
<include file='public:top'/>
<div class="app">
<header id="head" class="head">
                <div class="fixtop">
                    <span id="t-find"><a href="javascript:void(0);" onclick="history.go(-1);" class="btn btn-left btn-back" title="返回"></a></span>
                    <span id="t-index">我的队伍</span>
                    <span id="user"><a href="javascript:;" class="sign_btn btn btn-right btn-sign"></a></span>
                    
                </div>
            </header>
	<div class="user_main">
		<div class="right">
			<div class="menu-tag">
					<div class="menu-d3"><a href="{:U('user/agent')}">代理订单</a></div>
					<div class="menu-d33"><a href="{:U('user/getIvtFriends')}">我的队伍</a></div>
			</div>
		<div class="rebate-list">
		<notempty name="friends_list">   
		 <volist name="friends_list" id="vall">
			<ul class="rebate-ul" >
				<li class="rebate-li2"><div class="rebate-d1"><img src="{:avatar($vall['id'], 100)}" width="45" height="45" border="0"/></div></li>
				<li class="rebate-li"><div class="rebate-d1" style="color:#2ec300;">{$vall.ousername}</div><div class="rebate-d2">ID： <font color="#2ec300">{$vall.id}</font> </div></li>
				<li class="rebate-li"><div class="rebate-d1" >QQ：{$vall.qq}</div><div class="rebate-d2"><font >邮箱：{$vall.email}</font> </div></li>
				<li class="rebate-li"><div class="rebate-d11">邀请时间：{$vall.add_time|date='Y-m-d',###}</div></li>
			</ul>
		 </volist>
					<else />
						<div style="width:100%; text-align:center;float:left;color:red;font-size:14px;">
						<p>队伍里还没有小伙伴哦！</p>
						<p>邀请好友加入省钱队伍<a target="_blank" href="{:U('user/union')}"style="font-size:16px;color:blue;">  <u>赶快行动吧</u>！</a></p>
						</div>
					</notempty>
		</div>

		</div>

	</div>
		<include file="public:footer" />
</div>
</div>
<include file='public:footjs'/>
</body>
</html>