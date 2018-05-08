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
                    <span id="t-index">代理订单</span>
                    <span id="user"><a href="javascript:;" class="sign_btn btn btn-right btn-sign"></a></span>
                    
                </div>
            </header>
	<div class="user_main">
		<div class="right">
			<div class="menu-tag">
					<div class="menu-d33"><a href="{:U('user/agent')}">代理订单</a></div>
					<div class="menu-d3"><a href="{:U('user/getIvtFriends')}">我的队伍</a></div>
			</div>
		<div class="rebate-list">
		<notempty name="agent_list">   
		 <volist name="agent_list" id="vall">
			<ul class="rebate-ul" >
				<li class="rebate-li"><div class="rebate-d1">{$vall.create_time|strtotime|date='Y-m-d',###} 下单</div><div class="rebate-d2">返现 <font color="#2ec300">{$vall.rebate_money}</font> </div></li>
				<li class="rebate-li1"><div class="rebate-d1">
				<if condition="$vall.rebate_status eq 1">
						   <font color="#fa6e19">等待返利</font>
						   <elseif condition="$vall.rebate_status eq 2"/>
						   <font color="#379200">已返利</font>
						   <elseif condition="$vall.rebate_status eq 0"/>
						   <font color="#ffa619">等待记录</font>
						   <elseif condition="$vall.rebate_status eq 3"/>
						   <font color="#e00000">申诉或异常</font>
				</if>
				</div><div class="rebate-d2">{$vall.title}</div></li>
				<li class="rebate-li"><div class="rebate-d11">订单号：{$vall.order_no|substr=0,7}*****{$vall.order_no|substr=12}</div></li>
				<li class="rebate-li"><div class="rebate-d11">来源：{$vall.username}</div></li>
			</ul>
		 </volist>
					<else />
						<div style="width:100%; text-align:center;float:left;color:red;font-size:14px;">
						<p>还没有订单哦！</p>
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