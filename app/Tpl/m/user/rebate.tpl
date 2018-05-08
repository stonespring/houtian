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
					<div class="menu-d22"><a href="{:U('user/rebate')}">我的订单</a></div>
					<div class="menu-d2"><a href="{:U('user/subrebate')}">提交订单</a></div>
					<div class="menu-d2"><a href="{:U('user/rebacomplain')}">订单申诉</a></div>
			</div>
		<div class="rebate-list">
		<volist name="rebate_order" id="val">
		<if condition="$val.rebate_abnormal eq 0">
			<ul class="rebate-ul" >
				<li class="rebate-li"><div class="rebate-d1">{$val.order_time|strtotime|date='Y-m-d',###} 提交</div><div class="rebate-d2">待记录</div></li>
				<li class="rebate-li1"><div class="rebate-d1">
					<if condition="$val.rebate_abnormal eq 0">
						   <font color="#e08900">等待记录</font>
						   <elseif condition="$val.rebate_abnormal eq 2"/>
						   <font color="#d90000">申诉中</font>
						   <elseif condition="$val.rebate_abnormal eq 3"/>
						   <font color="#e00000">订单失效</font>
						   </if>
				</div><div class="rebate-d2"></div></li>
				<li class="rebate-li"><div class="rebate-d11">订单号：{$val.rebate_order}</div></li>
			</ul>
			</if>
		 </volist>
		 <volist name="reba_log" id="vall">
			<ul class="rebate-ul" >
				<li class="rebate-li"><div class="rebate-d1">{$vall.create_time|strtotime|date='Y-m-d',###} 下单</div><div class="rebate-d2">约返 <font color="#2ec300">{$vall.rebate_money}</font> 积分</div></li>
				<li class="rebate-li1"><div class="rebate-d1">
				<if condition="$vall.complain_flg eq 1">
						   <font color="#d90000">申诉中</font>
						   <elseif condition="$vall.rebate_status eq 1"/>
						   <font color="#2ec300">已返利</font>
						   <elseif condition="$vall.rebate_status eq 0"/>
						   <font color="#e08900">等待返利</font>
						   <elseif condition="$vall.rebate_status eq 3"/>
						   <font color="#e00000">订单失效</font>
				</if>
				</div><div class="rebate-d2">{$vall.title}</div></li>
				<li class="rebate-li"><div class="rebate-d11">订单号：{$vall.order_no}</div></li>
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