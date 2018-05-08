<!DOCTYPE html>
<html class="jp-pc w1200">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-zhe-main.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/shaixuan.css" />
<script type="text/javascript">window.setInterval('$.getJSON("/?m=houtianyouhuiquan&a=index",{}, function(){});',30000);</script>
<script>
$(function() {
    var $navFun = function() {
        var st = $(document).scrollTop(), 
            headh = $(".line-cate-nav-location").offset().top;           
            $nav_classify = $(".line-cate-nav-wrapper");
        if(st > headh){
            $nav_classify.addClass("fix-top");			
        } else {
            $nav_classify.removeClass("fix-top");			
        }
    };

    var F_nav_scroll = function () {
        if(navigator.userAgent.indexOf('iPad') > -1){
            return false;
        }      
        if (!window.XMLHttpRequest) {
           return;          
        }else{
            //默认执行一次
            $navFun();
            $(window).bind("scroll", $navFun);
        }
    }
    F_nav_scroll();
	
});
</script>
</head>
<body>
<include file="public:header" />


<style>
/*顶部导航，浮动块*/
/*.top_nav by 后天网络 start*/
.line-cate-nav-location{height: 50px;}
.line-cate-nav-location.hidn {
height: 0;
}
.line-cate-nav-location.hidn .line-cate-nav-wrapper {
display: none;
}
.line-cate-nav-location .line-cate-nav-wrapper{width: 100%;background-color: #fff;padding: 15px 0;}
.line-cate-nav-location.hidden {height: 0;}
.line-cate-nav-location.hidden .line-cate-nav-wrapper{display: none;}
.line-cate-nav-location .line-cate-nav-wrapper.fix-top{position: fixed; top: 0; left: 0; width: 100%; z-index:999; display: inline-block;-webkit-box-shadow:0px 0px 4px #999; -moz-box-shadow: 0px 0px 4px #999; box-shadow: 0px 0px 4px #999;}
.line-cate-nav{width: 1200px;margin: 0 auto;height: 20px;line-height: 20px;}
.line-cate-nav li{float: left;height: 20px; line-height: 20px; padding: 0 15px;}
.line-cate-nav li a {display: block; height: 20px; line-height: 20px; font-size: 14px; color: #333;}
.line-cate-nav li a:hover, .line-cate-nav li a.active{color: #c80000}
.line-cate-nav li.first{border-right: 1px solid #ccc;padding-left: 0;}
.line-cate-nav li.last a {color: #336600;}
/*THE END*/

.quan_clear {padding: 0px;}
.quan_r {padding-right: 15px;}
.quan_l {padding-left: 15px;}
.pic {display: inline-block;padding-right: 10px;text-align: center;width: 270px;float: left;}
.pic img{width: 260px;height:260px;border-radius: 4px;}
.quanContent {padding-right: 5px;border: solid #E0E0E0 1px;margin-bottom: 26px;background-color: #fff;border-radius: 4px;}
.quanContent:hover {border: 1px solid #c80000;}
.quan_header {margin-top: 12px;max-height: 52px;overflow: hidden;}
.quan_header a {line-height: 26px;font-size: 16px;color: #616161;}
.quan_title {color: #565656;}
.date {color: #f3659b;font-size: 22px;margin-bottom: 11px;}
.date .glyphicon {color: #f6924c;}
.coupon {font-size: 12px;margin-bottom: 17px;}
.coupon span:nth-child(1) {color: #f3659b;}
.price {font-size: 15px;color: #FFD9EC;margin-top: 0px;background: #c80000;height: 54px;line-height: 54px;padding-left: 30px;border-radius: 8px;}
.price span:nth-child(1) {font-size: 28px;font-family: Arial, Helvetica, sans-serif;color: #FFFFFF;}
.btn_buy {margin: 5px 5px 5px 5px;color: #999999;}
.btn_buy span:nth-child(1) {display: inline-block;border: 1px dashed #c80000;padding: 6px;border-radius: 6px;color: #ec3315;}
.btn_buy span:nth-child(2) {display: inline-block;margin: 5px 5px 5px 5px;color: #999999;font-family: '宋体';font-size: 18px;font-weight: bold;}
.btn_buy span:nth-child(3) {display: inline-block;border: dashed 1px #c80000;padding: 6px;border-radius: 6px;color: #ec3315;}
.btn_buy span:nth-child(1):hover {background-color: #FACB12;}
a{color: #5e5e5e;text-decoration: none;}
a:focus, a:hover {color: #5e5e5e;text-decoration: none;}
.nav .open>a, .nav .open>a:focus, .nav .open>a:hover {background-color: #FFF;border-color: #FFF;}
.quan_nav {color: #777777;margin-right: 14px;}
.quan_nav_on {color: #EF4929;}
ul.navigation.fl li,ul.navigation.fl li a { -webkit-box-sizing: content-box; }
.logo h1{ margin: 0; padding: 0; }
</style>


	<div style=" height:300px; background:#C4E8FF; overflow:hidden; background:url(/static/newpi/images/quan.png) center;"></div>

</div>

<div class="line-cate-nav-location" >
 <div class="line-cate-nav-wrapper">
            <ul class="line-cate-nav">
			<li class="first"><a class="active" href="{:U('quan/index')}">优惠券 {$total_item} 件</a></li>
       <volist name="cate_data" id="bcate">		
		    <if condition="$bcate['pid'] eq 34">
			<li><a <if condition="$cid eq $bcate['id']">class="active"</if> href="{:U('quan/index', array('cid'=>$bcate['id']))}">{$bcate.name}</a></li>
			</if>
		    </volist> 
             <li class="last"><a target="_blank" href="{:U('yugao/index')}">[明日预告]</a></li>
        <div class="right-search">
        <form name="search" action="/index.php" method="get" id="search">
     <input type="hidden" name="m" value="quan" />
				<input type="hidden" name="a" value="so" />
        <span class="search-area fl">
        <input name="k" id="k" autocomplete="off" onblur="this.value==''?this.value=this.title:null" onfocus="this.value==this.title?this.value='':null" title="输入你要买的商品..." value="输入你要买的商品..." class="txts"></span>
        <input type="submit" value="搜索" class="sobtn fr"></form></div>
     </ul>
	
</div>        
</div>

</div>
</notempty>


<style type="text/css">
.ziti{ font-family:Arial, Helvetica, sans-serif; font-weight:normal;}
.is_on{ color:#FF3333;}
.is_off{ color:#7373FF;}
	
.quan_bt{float:left; padding:6px;border-radius: 7px; border:dotted #F72121 1px; color:#EC3315; text-decoration:none;}
.quan_bt:hover{ background:#FACB12; color:#c80000;}

.quan{width:100%; background:#f6f6f6;}
.quan .quan_top{height:143px; display:block; background:url(__STATIC__/images/quan/quan_top.png) top center;}
.quan .quan_main{width:1200px; margin:auto; overflow:hidden;}
.quan .quan_main .nav{margin-top:20px; font-family:'微软雅黑'; font-size:17px; overflow:hidden;}
.quan .quan_main .quan_list{overflow:hidden;}
.quan .quan_main .quan_list .quan_goods{width:583px; border:solid #E0E0E0 1px; margin-top:30px;float:left;}
.quan .quan_main .quan_list .quan_goods.last{width:583px; border:solid #E0E0E0 1px; margin-top:30px;float:right;}
.quan .quan_main .quan_list .quan_goods:hover{ border:solid #e81a62 1px;}
.quan .quan_main .quan_list .quan_goods .img{float:left; width:270px;}
.quan .quan_main .quan_list .quan_goods .img img{width:266px;height:266px;border:0px;}
.quan .quan_main .quan_list .quan_goods .quan_txt{float:right; width:300px; margin-left:5px;margin-right:5px; font-family:微软雅黑;}
.quan .quan_main .quan_list .quan_goods .quan_txt .title{line-height:26px; font-size:16px; color:#616161; margin-top:10px;height: 52px;overflow: hidden;}

.right-search {
	width: 270;
	height: 20px;
	float:right;
	margin-top: -5px;
}
.right-search .search-area {
display: block;
width:180px;
height: 30px;
border-top: 1px solid #c80000;
border-left: 1px solid #c80000;
border-bottom: 1px solid #c80000;
}
.right-search .txts {
border: 0 none;
outline: 0 none;
width:98%;
height: 30px;
line-height: 30px;
margin-left:10px;
  color: #6B6666;
}
.right-search .sobtn {

border: 0 none;
cursor: pointer;
height: 32px;
width:50px;
display: block;
background:#c80000;
color:#fff;
font-size: 15px;
line-height: 32px;
margin-top: 0px;
text-align: center;

}
.fanli-price { width:270px; height:35px;line-height:30px; position: relative;padding:0 10px 0px 5px; z-index:10;}
.fanli-price .fanli-current {border-radius:10px 0 0 10px; background-color:#3f9d00;width:100px; height:28px;display:block;float:left;}
.fanli-price .fanli-current .ft {font-size: 14px; font-family:"微软雅黑","verdana"; vertical-align:1px;text-align:center;color:#ffffff;}
.fanli-price .fanli-current1 {border-radius:0 10px 10px 0;width:100px; height:28px;border:1px dashed #3f9d00;display:block;float:left;}
.fanli-price .fanli-current1 .ft1 {font-size: 14px; font-family:"微软雅黑","verdana"; vertical-align:1px;text-align:center;color:#3f9d00;}

</style>

<div class="quan"> 
	<div class="quan_main">
 <form name="quan" action="{:C('ht_site_url')}" method="get" id="quan">
 <ul class="sx_nav""> 
<li><a href="<if condition="$is_so eq 1 "> {:U('quan/so', array('sort'=>'default','k'=>$k))} <else/>{:U('quan/index', array('cid'=>$cid,'sort'=>'default'))} </if>" <if condition="$foc_curr eq 'default' "> style="background:#ffffff;color:#ec7213" </if> >综合排序</a></li> 
<li><a href="<if condition="$is_so eq 1 "> {:U('quan/so', array('sort'=>'hot','k'=>$k))} <else/>{:U('quan/index', array('cid'=>$cid,'sort'=>'hot'))} </if>" <if condition="$foc_curr eq 'hot' "> style="background:#ffffff;color:#ec7213" </if> ><if condition="$foc_curr eq 'hot' "> 销量从高到低<else/>销量</if></a></li> 
<li><a href="<if condition="$is_so eq 1 "> {:U('quan/so', array('sort'=>'new','k'=>$k))} <else/>{:U('quan/index', array('cid'=>$cid,'sort'=>'new'))} </if>" <if condition="$foc_curr eq 'new' "> style="background:#ffffff;color:#ec7213" </if> >最新</a></li> 
<li><a href="<if condition="$is_so eq 1 "> {:U('quan/so', array('sort'=>'price','k'=>$k))} <else/>{:U('quan/index', array('cid'=>$cid,'sort'=>'price'))} </if>" <if condition="$foc_curr eq 'price' "> style="background:#ffffff;color:#ec7213" </if> ><if condition="$foc_curr eq 'price' "> 价格从低到高<else/>价格</if></a></li> 
<li><input class="pri" type="text" name="pri1" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" onfocus="if(this.value=='￥'){this.value=''}" onblur="if(this.value==''){this.value='￥'}" <if condition="$pri1 neq '' " > value="{$pri1}" <else/>value="￥" </if>  /> - <input class="pri" type="text" name="pri2"  onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" onfocus="if(this.value=='￥'){this.value=''}" onblur="if(this.value==''){this.value='￥'}" <if condition="$pri2 neq '' " > value="{$pri2}" <else/>value="￥" </if>  />
<input type="hidden" name="m" value="quan">
<input type="hidden" name="a" <if condition="$is_so eq 1 "> value="so" <else/>value="index"</if> >
<input type="hidden" name="sort" value="{$foc_curr}">
<if condition="$is_so eq 1 ">
<input type="hidden" name="k" value="{$k}">
<else/>
<input type="hidden" name="cid" value="{$cid}">
</if>
<input type="submit" value="确定" class="but">
</li> 
</ul>
</form> 
<ul style="margin : 10px 0px 15px 5px;">
 <span style="padding-bottom:10px; font-size:14px;"></span>
 </ul>
		<div class="quan_list">
			<volist name="items_list" id="item" key="i" mod="2">
			<div class="quan_goods <eq name="mod" value="1"> last</eq>">
				<a href="{:U('item/index',array('id'=>$item['id']))}"  target="_blank" rel="nofollow" class="img">
					<img src="{$item.pic_url}_310x310.jpg">
										<if condition="$rebate_open['data'] eq 1">
					<div class="fanli-price">
                        <div class="fanli-current" ><div class="ft" >{:C('ht_first_word')}</div></div>
						<div class="fanli-current1" ><div class="ft1" >
				{:C('ht_second_word')}

						</div></div>
                    </div>
					</if>
				</a>
				<div class="quan_txt">
					<div class="title">{$item.title}</div>
					<div style=" margin-top:10px; clear:both;font-family:'微软雅黑'; overflow:hidden; font-size:14px; color:#c80000;">
						<div style="margin-top:2px;float: left;margin-right: 5px;"><img src="__STATIC__/newpi/images/quan/quan_icon.png" width="20"></div>
						<div style="float:left; margin-top:1px;">
							优惠券 <b class="ziti" style="font-size:16px; color:#F3658D; font-weight:bold;">{$item.quan} </b>元，过期时间 <b class="ziti" title="1" style="font-size:14px;">{$item.coupon_end_time|date="Y-m-d",###}</b>
						</div>
						<div style="float:right; margin-top:1px; margin-right:3px;text-align:center;"></div>
					</div>
					<div style=" margin-top:10px; clear:both;font-family:'宋体';; overflow:hidden; font-size:12px; color:#797979;">
						<div style="float:left; margin-top:1px;">
						优惠券剩余 <b class="ziti" style="font-size:14px; color:#c80000;">{$item.Quan_surplus} </b>张  销量{$item.volume}件</div>
						<div style="float:right; margin-top:1px; margin-right:3px;text-align:center;"></div>
					</div>
					<div style="margin-top:5px;overflow:hidden;">
						<div style="font-size:15px; color:#FFD9EC; margin-top:7px; background:#c80000; width:296px; height:50px; line-height:50px;"> &nbsp;&nbsp; 券后价 <font style="color:#FFFFFF; font-size:18px;">￥</font><span style="font-size:28px; font-family:Arial, Helvetica, sans-serif; color:#FFFFFF;">{$item.coupon_price}</span>  &nbsp;&nbsp; &nbsp;  在售价 ￥<span style="font-size:16px; font-family:Arial;">{$item.price}</span></div>
					</div>
					<div style="margin-top:25px;overflow:hidden; font-size:14px;">
						<div style="float:left; margin-top:6px; color:#999999;">购买流程： &nbsp;</div>
						<a class="quan_bt" href="{:U('item/index',array('id'=>$item['id']))}" target="_blank" title="先领取优惠券" rel="nofollow">①点我领券</a>
						<div style="float:left; margin-top:6px; color:#999999; font-family:'宋体'; font-size:18px; font-weight:bold;">&nbsp;&gt;&nbsp; </div>
						<a class="quan_bt" href="{:U('item/index',array('id'=>$item['id']))}" target="_blank" title="去淘宝下单" rel="nofollow">②点击下单</a>
					</div>
				</div>
			</div>
			</volist>
		</div>
		<div style="text-align:center; margin-top:20px; font-size:21px; color:#FF3333; clear:both; margin-bottom:20px;"></div>
	</div>
    
<div class="page">
<em></em>
<div>
{$page}
</div>
</div>



<include file="public:footer" />
</body>
</html>