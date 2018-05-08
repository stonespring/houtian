<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>优惠券在线查询</title>
<meta name="keywords" content="{$page_seo.keywords}" >
<meta name="description" content="{$page_seo.description}" >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"  />
<link rel="shortcut icon" type="image/ico" href="/favicon.ico">
<link rel="bookmark" href="/favicon.ico"/>

<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/global.css" />




<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/chaquan.css" />
<script type="text/javascript" src=
<script src="__STATIC__/js/device.js"></script>
<STYLE>
	.aa a{
		color:#FF0000; 
		text-decoration:underline; 
	}
</STYLE>
<script type="text/javascript">
	SITEURL="{:C('ht_site_url')}";
	CURURL="{:C('ht_site_url')}";
	WEBNICK="{:C('ht_site_name')}";
	URL_COOKIE=0;
</script>
<if condition="C('ht_site_zidong') eq '1'">
<script type="text/javascript">
if(device.mobile()){
    window.location = "{:C('ht_header_html')}";
}
</script>
</if>
</head>
<body>
<include file="public:top" />

<div class="header">
    <div class="area">
        <div class="logo logo1">
            <div class="fl"><a class="juan-logo fl" href="{:C('ht_site_url')}" title="{:C('ht_site_name')}"><img src="{:C('ht_site_logo')}"></a></div>            
        </div>

    </div>
    <div class="mainNav">
        <div class="nav">
            <ul class="navigation fl">  
            <li <if condition="($nav_curr eq 'index')or($cate neq '')">class="current first"</if>><a href="{:C('ht_site_url')}">所有分类<if condition="($nav_curr eq 'index')or($cate neq '')"><em class="cur"></em></if></a>
            
           
            </li>          
		    <ht:nav type="lists" style="main">
			<volist name="data" id="val">
			<li <if condition="$nav_curr eq $val['alias']">class='current'</if>><a href="{$val.link}" <if condition="$val.target eq 1">target="_blank"</if>>{$val.name}</a></li>
			</volist>
			</ht:nav> 
             <li>
                    <a href="{:C('ht_header_html')}" target="_blank" id="show-qcodes">
                        <em class="icon-normal icon-phone" id="new-phone"></em>
                        手机APP
                    </a>
                    <div id="new-qcodes" class="code-tips" style="display: none;">
                        <div class="code-box">
                            <p class="code"><img src="{:C('ht_site_url')}{:C('ht_site_browser')}" width="148px" height="148px"></p>
                            <p class="txt" style="text-align:center;font-size: 14px">随时逛 及时抢</p>
                        </div>
                    </div>
               </li>     
                <li class="fanli"><em class="icon-fanli"><img src="/static/newpi/images/hot.gif"></em><a class="fanli" href="{:U('free/index')}" _hover-ignore="1">零元试用</a></li>          
            </ul>
            <div class="state-show fr" > 
			<a class="normal-a <if condition="$nav_curr eq 'gift'">on</if>" href="{:U('gift/index')}" target="_blank">积分商城</a>
           <notempty name="visitor">
           <span id="signinid">
			<a href="#" class="sign_btn signin normal-a"><em class="icon-normal icon-sign"></em><em class="text">签到领积分</em></a>
                <div class="normal-side-box">
                    <div class="box-tips">
                        <p>欢迎您：{$visitor.username}</p>
                        <p>您的积分：{$visitor.score}</p>
		                <p>积分可<a target="_blank" href="{:U('gift/index')}">免费兑换商品</a></p>
		                <p>每日登陆<b>+{:C('ht_score_rule.login')}</b>积分</p>
		                <p>邀请访问<b>+{:C('ht_score_rule.union_visit')}</b>积分</p>
		                <p>邀请注册<b>+{:C('ht_score_rule.union_reg')}</b>积分</p> 
                    </div>
                </span>
             <else/>		
			<span id="signinid">
			<a href="#" class="sign_btn signin normal-a dosign"><em class="icon-normal icon-sign"></em><em class="text">签到领积分</em></a>
                <div class="normal-side-box">
                    <div class="box-tips">
                        <p>登陆后 签到奖励</p>
                        <p>首次签到可得：<span> <b>{:C('ht_score_rule.sign')}</b> 积分</span></p>
		                <p>连续签到 <span>{:C('ht_score_rule.sign_day')}</span> 天</p>
		                <p>每日递增 <span>{:C('ht_score_rule.sign_add')}</span> 积分</p> 
                    </div>
                </span>
				</notempty>	
				</div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
$("#show-qcodes , #new-qcodes").hover(function(){
    $("#new-qcodes").css('display','block');
},function(){
    $("#new-qcodes").css('display','none');
})
</script>



<body>    
<div class="q-wrap">    
	<div class="q-sou">
		        <div class="q-hd">
        <div class="q-search">
      <form action="{:C('ht_site_url')}" method="get">
        <div class="q-search-box">          
		  <input type="hidden" name="m" value="search">
	      <input type="hidden" name="a" value="index">
          <input type="text" name="k" autocomplete="off" onblur="this.value==''?this.value=this.title:null" onfocus="this.value==this.title?this.value='':null" title="粘贴淘宝或者天猫商品标题查优惠券"  <notempty name="k">value="{$k}"<else/>value="粘贴淘宝或者天猫商品标题查优惠券"</notempty> />
        </div>
        <button type="submit">搜 索</button>
      </form>
    </div> 
    
  </div>
	</div>
   <volist name="tkitems" id="tkitems" key="i">
  <div class="q-result q-result-exist">
    <div class="q-ret-img">
      <a href="{$tkitems.coupon_click_url}" title="{$tkitems.title}" target="_blank"><img src="{$tkitems.pict_url}" width="220" height="220"></a>
    </div>             
    <dl class="q-ret-meta">
      <dt><a href="{$tkitems.coupon_click_url}" title="{$tkitems.title}" target="_blank">{$tkitems.title}</a></dt>
      <dd class="q-meta-1"><del>¥{$tkitems.zk_final_price}</del></dd>
              <dd class="q-meta-2">券后价 <strong>¥      {$tkitems.zk_price}      </strong></dd>
      <dd class="q-meta-3">
               <span class="q-m3-1"></span>截止：{$tkitems.coupon_end_time}
        <span class="q-m3-2"></span> 已售{$tkitems.volume}件
		<em class="aa"><a href="{$tkitems.keywords}" >查看更多类似</a></em>
    </dl>
       <ul class="q-ret-ticket q-ticket-1">
        <li>
        <a href="{$tkitems.coupon_click_url}" title="" target="_blank" class="q-item-btn">
          <strong><sup>¥</sup>{$tkitems.item_con}</strong>
          <p>{$tkitems.coupon_info}</p>
        </a>
      </li>
      </ul>
    <div class="q-qrcode">
	  <img src="{:C('ht_site_weixin')}" width="146" height="146"/>      
      <p></p>
    </div>
  </div>
  
   </volist>


</div>
<include file="public:footer" />
</body>
</html>