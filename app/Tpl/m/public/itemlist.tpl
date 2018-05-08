<script>
$(function (){
    var aa = $(".goods-list li").innerWidth();
    $(".goods-list li img").css('height',aa);
})
</script>



<volist name='items_list' id='item'>        
		<if condition="$item.class eq 'start'">
		<li>        
		<a class="goods-a" href="{:U('item/index',array('id'=>$item['id']))}" target="_self">            
		<img src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}">  
		{$item.add_time|wapnewicon}		
		</a>        
		<a isconvert="1" data-itemid="{$item.num_iid}" target="_self">			
		<h3>{$item.title}</h3>
		<div class="lprice1"><span class="buypeo"><em ><b style="color:#00d12b">开始时间:{$item.coupon_start_time|date="n-j H:i",###}</b></em></span> </div>	
		<div class="list-price start">                
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		<i class="del">￥{$item.price}</i>               
		           
		</div>        
		</a>    
		</li> 
		</if>
		<if condition="$item.class eq 'buy'">
		<li>        
        <if condition="$item.isq eq 1"><div class="lingquan"><a href="{:U('item/index',array('id'=>$item['id']))}" target="_blank" rel="nofollow"><span>优惠券<br><em>{$item.quan}元</em></span><b></b></a></div></if>
		<a class="goods-a" href="{:U('item/index',array('id'=>$item['id']))}" target="_self">            
		<img src="{:C('ht_site_flogo')}" class="<eq name='mod' value='0'>J_lazy</eq><eq name='mod' value='1'>J_lazy</eq><eq name='mod' value='2'>J_lazy</eq><eq name='mod' value='3'>J_lazys</eq> lazy good-pic" d-src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}">
		{$item.coupon_start_time|wapnewicon}
		</a> 

		<a href="{:U('item/index',array('id'=>$item['id']))}" target="_self" rel="nofollow">			
		<h3>{$item.title}</h3>
				<if condition="$rebate_open['data'] eq 1">
		<div class="lprice1">	<span class="buypeo1"><em class="hh4"> {:C('ht_first_word')} </em>
		<em class="hh4"> {:C('ht_second_word')}</em></span> </div>	

		</if>		
		<div class="lprice1">	<span class="buypeo"><em ><if condition="$item.volume gt 10000">{$item.volume|vmwan}<else />{$item.volume}</if></em><em class="hh3"> 人已买</em></span> </div>	

		
		<div class="list-price buy"><if condition="$item.isq eq 1"><span class="title-tips01">券后</span></if>            
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		<if condition="$item.shop_type eq 'C' ">		             
		<span class="good-btn">淘宝</span> 
        </if>
		<if condition="$item.shop_type eq 'B' ">		             
		<span class="good-btn">天猫</span> 
        </if>
		<if condition="$item.shop_type eq 'M' ">		             
		<span class="good-btn">美丽说</span>  
        </if>		
		</div>        
		</a>
		</li> 
		</if>
</volist>
