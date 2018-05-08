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
                    <span id="t-find"><a href="{:U('user/index')}" class="btn btn-left btn-back" title="返回"></a></span>
                    <span id="t-index">返利订单</span>
                    <span id="user"><a href="javascript:;" class="sign_btn btn btn-right btn-sign"></a></span>
                    
                </div>
            </header>
	<div class="user_main">
		<div class="right">
			<div class="menu-tag">
					<div class="menu-d2"><a href="{:U('user/rebate')}">我的订单</a></div>
					<div class="menu-d2"><a href="{:U('user/subrebate')}">提交订单</a></div>
					<div class="menu-d22"><a href="{:U('user/rebacomplain')}">订单申诉</a></div>
			</div>
		<div class="rebate-list">
			<volist name="rebate_shensu" id="val">
			<ul class="rebate-ul" >
				<li class="rebate-li"><div class="rebate-d1">{$val.add_time|strtotime|date='Y-m-d',###} 申诉</div><div class="rebate-d2"></div></li>
				<li class="rebate-li1"><div class="rebate-d1">
						<if condition="$val.status eq '等待审核'">
						   <font color="#e08900">{$val.status}</font>
						   <elseif condition="$val.status eq '申诉结束'"/>
						   <font color="#379200">{$val.status}</font>
						   </if>
				</div><div class="rebate-d2">申诉留言：{$val.ss_content}</div></li>
				<li class="rebate-li"><div class="rebate-d11">订单号：{$val.ordernum}</div></li>
			</ul>
		 </volist>

		</div>

		</div>

	</div>
		<include file="public:footer" />
</div>
</div>
<include file='public:footjs'/>
</body>
</html>