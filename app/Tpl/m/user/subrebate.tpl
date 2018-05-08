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
					<div class="menu-d22"><a href="{:U('user/subrebate')}">提交订单</a></div>
					<div class="menu-d2"><a href="{:U('user/rebacomplain')}">订单申诉</a></div>
			</div>
		<div class="rebate-list">
		<form id="subreb" name="form1" action="{:U('user/subrebate')}" method="post">
				<div class="address">
					<ul>
						<li class="addli">
								<input name="rebatenum" type="text" id="rebatenum" size="20" maxlength="20" class="inp" autofocus="autofocus" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')""/>
						</li>
						<li>
							<input type="hidden" name="sub" value="1" />
							<input type="submit" class="sub" value="提交">
						</li>

					</ul>
					<ul>
					<li>
					<em class="em">1.进入淘宝我的订单</em>
					</li>
										<li>
					<em class="em">2.查看订单</em>
					</li>
										<li>
					<em class="em">3.复制订单号</em>
					</li>
										<li>
					<em class="em">4.提交订单</em>
					</li>
										<li>
					<em class="em">5.等待确认收货</em>
					</li>
															<li>
					<em class="em">6.获得返利积分</em>
					</li>
															<li>
					<em class="em">7.积分商城兑换商品</em>
					</li>
					</ul>
				</div>
			</form>
		</div>

		</div>

	</div>
		<include file="public:footer" />
</div>
</div>
<include file='public:footjs'/>
</body>
</html>