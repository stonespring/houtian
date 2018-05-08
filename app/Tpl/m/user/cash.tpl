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
                    <span id="t-index">余额提现</span>
                    <span id="user"><a href="javascript:;" class="sign_btn btn btn-right btn-sign"></a></span>
                    
                </div>
            </header>
            <div class="user-box">
            <ul class="action-list2">
			<li><span class="txt">可提现余额</span></li>
            <li><span class="yue">{$info.money}</span></li>
            </ul>
<form action="{:U('user/apply_cash')}" name="frm" method="post">			
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="user-apply-cash">
<tbody>
<tr > 
<td style="font-size:1rem;padding-left: 10px;"><font>收款账户</font></td> 
<td style="font-size:1rem;padding-right: 10px;text-align:right"><input name="zhifubao" type="text" value="{$info.alipay}"></input></td>
</tr>
<tr > 
<td style="font-size:1rem;padding-left: 10px;"><font>收款方式</font></td> 
<td style="font-size:1rem;padding-right: 10px;text-align:right"><input type="text" readonly="readonly">支付宝</input></td>
</tr>
<tr > 
<td style="font-size:1rem;padding-left: 10px;"><font>姓名</font></td> 
<td style="font-size:1rem;padding-right: 10px;text-align:right"><input name="name" type="text" value="{$info.name}"></input></td>
</tr>
<tr > 
<td style="font-size:1rem;padding-left: 10px;"><font>提现金额</font></td> 
<td style="font-size:1rem;padding-right: 10px;text-align:right"><input id="jine" name="jine" type="number" placeholder="请输入提取金额"></input></td>
</tr>
<tr > 
<td style="font-size:1rem;padding-left: 10px;"><font>密码</font></td> 
<td style="font-size:1rem;padding-right: 10px;text-align:right"><input name="yanzheng" type="password" placeholder="请输入网站密码"></input></td>
</tr>
<tr > 
<td colspan="2" style="font-size:1rem;text-align:center;"><input value="立即提现" class="sub" type="submit"></td> 
</tr>
</tbody></table>			
			
			
			</form>			
			
</div>
		<include file="public:footer" />

</div>
</div>
<include file='public:footjs'/>
</body>
</html>