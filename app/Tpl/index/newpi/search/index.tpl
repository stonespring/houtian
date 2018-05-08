<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/shaixuan.css" />
</head>
<body>
<include file="public:header" />
 <div class="main pr mt25 clear">
 <form name="search" action="{:C('ht_site_url')}" method="get" id="search">
 <ul class="sx_nav""> 
<li><a href="{:u('search/index', array('sort'=>'new','k'=>$skey))}" <if condition="$foc_curr eq 'comprehensive' "> style="background:#ffffff;color:#ec7213" </if> >综合排序</a></li> 
<li><a href="{:u('search/index', array('sorting'=>'sale','k'=>$skey))}" <if condition="$foc_curr eq 'sale' "> style="background:#ffffff;color:#ec7213" </if> ><if condition="$foc_curr eq 'sale' "> 销量从高到低<else/>销量</if></a></li> 
<li><a href="{:u('search/index', array('sorting'=>'time','k'=>$skey))}" <if condition="$foc_curr eq 'time' "> style="background:#ffffff;color:#ec7213" </if> >最新</a></li> 
<li><a href="{:u('search/index', array('sorting'=>'price','k'=>$skey))}" <if condition="$foc_curr eq 'price' "> style="background:#ffffff;color:#ec7213" </if> ><if condition="$foc_curr eq 'price' "> 价格从低到高<else/>价格</if></a></li> 
<li><input class="pri" type="text" name="pri1" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" onfocus="if(this.value=='￥'){this.value=''}" onblur="if(this.value==''){this.value='￥'}" <if condition="$pri1 neq '' " > value="{$pri1}" <else/>value="￥" </if>  /> - <input class="pri" type="text" name="pri2"  onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" onfocus="if(this.value=='￥'){this.value=''}" onblur="if(this.value==''){this.value='￥'}" <if condition="$pri2 neq '' " > value="{$pri2}" <else/>value="￥" </if>  />
<input type="hidden" name="m" value="search">
<input type="hidden" name="a" value="index">
<input type="hidden" name="sorting" value="{$foc_curr}">
<input type="hidden" name="k" value="{$skey}">
<input type="submit" value="确定" class="but">
</li> 
</ul>
</form>
<ul style="margin : 10px 0px 15px 5px;">
 <span style="padding-bottom:10px; font-size:14px;">为您找到 <em style="font-size:16px;color:red;" >{$skey}</em> 相关宝贝：<em style="font-size:16px;color:red;" ><if condition="$counitems neq 0">{$counitems+$counitem}<else/>{$counitem} </if> </em> 条</span>
 </ul>  
 <ul class="goods-list clear">
 <volist name="items_list" id="item" key="i" mod="4">
 <if condition="$item.class neq 'gone'">
            <li class="<eq name='mod' value='3'> last</eq>" gtype="1" id="{$item.id}">
                <div class="list-good {$item.class}">
                    <div class="good-pic">
                        <a href="{:U('item/index',array('id'=>$item['id']))}" class="pic-img" target="_blank">
                        <img alt="{$item.title}" src="{:C('ht_site_flogo')}" class="<eq name='mod' value='0'>J_lazy</eq><eq name='mod' value='1'>J_lazy</eq><eq name='mod' value='2'>J_lazy</eq><eq name='mod' value='3'>J_lazys</eq> lazy good-pic" d-src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}" data-bimg="{$item['pic_url']}"/>{$item.coupon_start_time|newicon}</a>
                     </div>
                     
                      <if condition="$item.isq eq 1"><div class="lingquan"><a href="{:U('item/index',array('id'=>$item['id']))}" target="_blank" rel="nofollow"><span class="get_cupon"><em>{$item.quan}元</em></span><b></b></a></div></if>
                    <h3 class="good-title">
                        <if condition="$item.ems eq 1">[包邮]</if><a href="{:U('item/index',array('id'=>$item['id']))}" target="_blank">{$item.title}</a>
                        <div class="icon-all" style="display:none;">
                        </div>
                        <span class="sold">已售<em><if condition="$item.volume gt 10000">{$item.volume|vmwan}<else />{$item.volume}</if></em></span>
                    </h3>
					<if condition="$rebate_open['data'] eq 1">
					<div class="fanli-price">
                        <div class="fanli-current" ><div class="ft" >{:C('ht_first_word')}</div></div>
						<div class="fanli-current1" ><div class="ft1" >
						{:C('ht_second_word')}

						</div></div>
                    </div>
					</if>
                    <div class="good-price">
                        <span class="price-current" ><em>￥</em>{$item.coupon_price}</span>
                    <span class="des-other">
                       <if condition="$item.cu eq ''"><strong></strong><else/><strong><em class="icon-gai">{$item.cu}</em></strong></if>
					    <p><span class="price-old"><em>￥</em>{$item.price}</span>
                        <span class="discount">(<em>{$item.zk}</em>折)</span>
						</p>
                    </span>
					<if condition="$item.class eq 'start'">
					<div class="btn start_1 ">
                    <a href="" target="_blank"><span>明日</span><b>10:00</b> </a>
					</div>
					</if>
					<if condition="$item.class eq 'buy'">
                   <div class="btn buy m-buy">
                   <a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank"><if condition="$item.shop_type eq 'C' "><em class="t-icon"></em><span>淘宝</span></if><if condition="$item.shop_type eq 'B' "><em class="m-icon"></em><span>天猫</span></if> </a>
                   </div>
				   </if>
				   <if condition="$item.class eq 'gone'">
				   <div class="btn gone m-buy">
                                <a href="javascript:;"><if condition="$item.shop_type eq 'C' "><em class="t-icon"></em><span>淘宝</span></if><if condition="$item.shop_type eq 'B' "><em class="m-icon"></em><span>天猫</span></if></a>
                            </div>
							</if>
                    </div>
					<a class="y-like my-like" data-pid="{$item.num_iid}" href="javascript:;" title="加入收藏"><i class="like-ico"><span class="heart_left"></span><span class="heart_right"></span></i></a>
<if condition="$item.class eq 'gone'">
<div class="box-hd" style="display:block">
<div class="mask-bg"></div>
<em class="buy-over">抢光了</em>
</div>
</if>
</div>
</li> 
</if>
</volist>      
</ul>

<div style="width:1200px;height:50px;text-align:center;font-size:20px">更多结果</div>
 <ul class="goods-list clear">
  <volist name="tkitems" id="item" key="i" mod="4">
  
 <if condition="$item.isq eq 1">
            <li class="<eq name='mod' value='3'> last</eq>" gtype="1" id="{$item.num_iid}">
                <div class="list-good buy">
                    <div class="good-pic"><a href="{:U('item/index',array('iid'=>$item['num_iid'],'coupon'=>$item['quan']))}" class="pic-img" target="_blank">
                        <img alt="{$item.title}" src="{:C('ht_site_flogo')}" class="<eq name='mod' value='0'>J_lazy</eq><eq name='mod' value='1'>J_lazy</eq><eq name='mod' value='2'>J_lazy</eq><eq name='mod' value='3'>J_lazys</eq> lazy good-pic" d-src="{:attach(get_thumb($item['pict_url'], '_b'),'item')}" data-bimg="{$item['pict_url']}"/>{$item.coupon_start_time|newicon}</a>
                     </div>
                     
                    <div class="lingquan"><a href="{:U('item/index',array('iid'=>$item['num_iid'],'coupon'=>$item['quan']))}" target="_blank" rel="nofollow"><span class="get_cupon"><em>{$item.quan}元</em></span><b></b></a></div>
                    <h3 class="good-title">
                        <if condition="$item.ems eq 1">[包邮]</if><a href="{:U('item/index',array('iid'=>$item['num_iid'],'coupon'=>$item['quan']))}" target="_blank">{$item.title}</a>
                        <div class="icon-all" style="display:none;">
                        </div>
                        <span class="sold">已售<em><if condition="$item.volume gt 10000">{$item.volume|vmwan}<else />{$item.volume}</if></em></span>
                    </h3>
					<if condition="$rebate_open['data'] eq 1">
					<div class="fanli-price">

                        <div class="fanli-current" ><div class="ft" >{:C('ht_first_word')}</div></div>
						<div class="fanli-current1" ><div class="ft1" >	
							{:C('ht_second_word')}
						
						</div></div>
                    </div>
					</if>
                    <div class="good-price">
                        <span class="price-current" ><em>￥</em>{$item.coupon_price}</span>
                    <span class="des-other">
                       <if condition="$item.cu eq ''"><strong></strong><else/><strong><em class="icon-gai">{$item.cu}</em></strong></if>
					    <p><span class="price-old"><em>￥</em>{$item.price}</span>
						</p>
                    </span>
                   <div class="btn buy m-buy">
                   <a href="{:U('item/index',array('iid'=>$item['num_iid'],'coupon'=>$item['quan']))}" target="_blank"><if condition="$item.user_type eq 'C' "><em class="t-icon"></em><span>淘宝</span></if><if condition="$item.user_type eq 'B' "><em class="m-icon"></em><span>天猫</span></if> </a>
                   </div>
                    </div>
					<a class="y-like my-like" data-pid="{$item.num_iid}" href="javascript:;" title="加入收藏"><i class="like-ico"><span class="heart_left"></span><span class="heart_right"></span></i></a>
<if condition="$item.class eq 'gone'">
<div class="box-hd" style="display:block">
<div class="mask-bg"></div>
<em class="buy-over">抢光了</em>
</div>
</if>
</div>
</li>
<else />
             <li class="<eq name='mod' value='3'> last</eq>" gtype="1" id="{$item.num_iid}">
                <div class="list-good buy">
                    <div class="good-pic">
					<a href="{:U('item/index',array('iid'=>$item['num_iid'],'coupon'=>$item['quan']))}" class="pic-img" target="_blank">
                        <img alt="{$item.title}" src="{:C('ht_site_flogo')}" class="<eq name='mod' value='0'>J_lazy</eq><eq name='mod' value='1'>J_lazy</eq><eq name='mod' value='2'>J_lazy</eq><eq name='mod' value='3'>J_lazys</eq> lazy good-pic" d-src="{:attach(get_thumb($item['pict_url'], '_b'),'item')}" data-bimg="{$item['pict_url']}"/>{$item.coupon_start_time|newicon}</a>
                     </div>
                    <h3 class="good-title">
                        <if condition="$item.ems eq 1">[包邮]</if><a href="{:U('item/index',array('iid'=>$item['num_iid'],'coupon'=>$item['quan']))}" target="_blank">{$item.title}</a>
                        <div class="icon-all" style="display:none;">
                        </div>
                        <span class="sold">已售<em><if condition="$item.volume gt 10000">{$item.volume|vmwan}<else />{$item.volume}</if></em></span>
                    </h3>
					<if condition="$rebate_open['data'] eq 1">
					<div class="fanli-price">

                        <div class="fanli-current" ><div class="ft" >{:C('ht_first_word')}</div></div>
						<div class="fanli-current1" ><div class="ft1" >	
							{:C('ht_second_word')}
						
						</div></div>
                    </div>
					</if>
                    <div class="good-price">
                        <span class="price-current" ><em>￥</em>{$item.coupon_price}</span>
                    <span class="des-other">
                       <if condition="$item.cu eq ''"><strong></strong><else/><strong><em class="icon-gai">{$item.cu}</em></strong></if>
					    <p><span class="price-old"><em>￥</em>{$item.price}</span>
						</p>
                    </span>
                   <div class="btn buy m-buy">
                   <a href="{:U('item/index',array('iid'=>$item['num_iid'],'coupon'=>$item['quan']))}" target="_blank"><if condition="$item.user_type eq 'C' "><em class="t-icon"></em><span>淘宝</span></if><if condition="$item.user_type eq 'B' "><em class="m-icon"></em><span>天猫</span></if> </a>
                   </div>
                    </div>
					<a class="y-like my-like" data-pid="{$item.num_iid}" href="javascript:;" title="加入收藏"><i class="like-ico"><span class="heart_left"></span><span class="heart_right"></span></i></a>
<if condition="$item.class eq 'gone'">
<div class="box-hd" style="display:block">
<div class="mask-bg"></div>
<em class="buy-over">抢光了</em>
</div>
</if>
</div>
</li>
</if>

</volist>      
</ul>
<div class="page">
<em></em>
<div>
{$page}
</div>
</div>
</div>
<include file="public:footer" />
</body>
</html>