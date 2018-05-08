<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/alert.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/global.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/iconfont2.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/iconfont4.css" />
</head>
<body>

    <div class="main">       
        <div class="app">
            <header id="head" class="head">
                <div class="fixtop">
                    <span id="t-find"><a class="btn btn-left btn-back" href="{:U('index/index')}" title="返回网站首页"></a></span>
                    <span id="t-index">个人中心</span>
                    <span id="user"><a href="javascript:;" class="sign_btn btn btn-right btn-sign"></a></span>
                </div>
            </header>
            <div class="user-box">
            <ul class="action-list1 user-show1">
            <li><img src="{:avatar($info['id'], 100)}" class="profile1" style="width:60px;height:60px;"></li>
			<li><span>{$info.username}</span></li>
            </ul>
			
			
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr style="height:30px;line-height:20px;" class="info-agul"> 
<td align="center" valign="bottom" style="font-size:1.4rem;"><font color="#2ec300">{$info.available_money}</font></td> 
<td align="center" valign="bottom" style="font-size:2rem;"><a href="{:U('user/cash')}"><font color="#2ec300">{$info.money}</font></a></td>
<td align="center" valign="bottom" style="font-size:1.4rem;"><font color="#2ec300">{$info.score}</font></td>
</tr>
<tr style="height:30px;line-height:20px;"> 
<td align="center"valign="top" style="font-size:1.4rem;">账户余额</td> 
<td align="center"valign="top" style="font-size:1.4rem;">可用余额</td>
<td align="center"valign="top" style="font-size:1.4rem;">账户积分</td>
</tr>
</tbody></table>


            <ul class="action-list">
			<if condition="$rebate_open['data'] eq 1">	
			<li><a href="javascript:;"><span>我的订单</span><em class="cur"></em></a></li>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr style="height:35px;line-height:20px;"> 
<td align="center"valign="bottom" ><a href="{:U('user/rebate')}" class="icon iconfont icon-dingdan" ></a></td> 
<td align="center"valign="bottom" ><a href="{:U('user/subrebate')}" class="icon iconfont icon-tijiaodingdan" ></a></td>
<td align="center"valign="bottom" ><a href="{:U('user/rebacomplain')}" class="icon iconfont icon-dingdanshensu" ></a></td>
</tr>
<tr style="height:30px;line-height:20px;"> 
<td align="center" style="font-size:1rem;">全部订单</td> 
<td align="center" style="font-size:1rem;">提交订单</td>
<td align="center" style="font-size:1rem;">订单申诉</td>
</tr>
</tbody></table>
			</if>

            <li><a href="javascript:;"><span>我的积分</span><em class="cur"></em></a></li>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr style="height:35px;line-height:20px;"> 
<td align="center"valign="bottom" ><a href="{:U('user/mingxi')}" class="icon iconfont icon-jifenmingxi" ></a></td> 
<td align="center"valign="bottom" ><a href="{:U('user/gift')}" class="icon iconfont icon-quanduihuanmingxi" ></a></td>
<td align="center"valign="bottom" ><a href="{:U('gift/index')}" class="icon iconfont icon-jifenshangcheng" ></a></td>
</tr>
<tr style="height:30px;line-height:20px;"> 
<td align="center" style="font-size:1rem;">积分明细</td> 
<td align="center" style="font-size:1rem;">兑换明细</td>
<td align="center" style="font-size:1rem;">积分商城</td>
</tr>
</tbody></table>
            <li><a href="javascript:;"><span>更多</span><em class="cur"></em><span class="rest"></span></a></li>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr style="height:35px;line-height:20px;"> 
<td align="center"valign="bottom" ><a href="{:U('user/union')}" class="icon iconfont icon-yaoqing" ></a></td> 
<td align="center"valign="bottom" ><a href="{:U('user/like')}" class="icon iconfont icon-shoucangjia" ></a></td>
</tr>
<tr style="height:30px;line-height:20px;"> 
<td align="center" style="font-size:1rem;">邀请赚积分</td> 
<td align="center" style="font-size:1rem;">我的收藏</td>
</tr>
</tbody></table>
            
            </ul>
            <ul class="action-list">
            <li><a href="{:U('user/logout')}"><em class="icon icon-help"></em><span>退出登录</span><em class="cur"></em></a></li>

            </ul>
            </div>

           <include file='public:footer'/>
</div>
</div>
<include file='public:footjs'/>

</body>
</html>