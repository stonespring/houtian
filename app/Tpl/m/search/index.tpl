<!DOCTYPE html>
<html>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/clipboard.js/1.5.12/clipboard.min.js"></script>
<head>
<include file='public:head'/>
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/tcstyle.css">
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/shaixuan.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/slicy.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/style.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/glide.css" />
</head>
<body>
<div class="main">    
<include file='public:header'/>
<include file='public:top'/>
<div class="app">
    <header id="head" class="head">
        <div class="fixtop">
		<span id="t-find"><a href="javascript:window.history.go(-1)" class="btn btn-left btn-back" title="返回上一页"></a></span>
        <span id="t-index">搜索结果</span>
        <span id="t-user"><a href="javascript:;" class="choice">筛选<em class="cur"></em></a></span>
        </div>
	<form name="search" action="{:C('ht_header_html')}" method="get" id="search">		
        <dl class="screen-box">
            <dt>筛选方式：</dt>
			<dd>
            <a href="{:U('search/index',array('sort'=>'comprehensive','k'=>$skey))}" title="默认排序" >默认
			<img <if condition="$index_info['sort'] eq 'comprehensive'">style="display:block;" </if> src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
            <dd>
            <a href="{:U('search/index',array('sort'=>'time','k'=>$skey))}" title="最新" >最新<img  <if condition="$index_info['sort'] eq 'time'">style="display:block;" </if>src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
             <dd>
            <a href="{:U('search/index',array('sort'=>'rate','k'=>$skey))}" title="折扣">折扣<img  <if condition="$index_info['sort'] eq 'rate'">style="display:block;" </if>src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>			
            <dd>
            <a href="{:U('search/index',array('sort'=>'sale','k'=>$skey))}" title="最热">销量从高到低<img  <if condition="$index_info['sort'] eq 'sale'">style="display:block;" </if>src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
             <dd>
            <a href="{:U('search/index',array('sort'=>'price','k'=>$skey))}" title="价格">价格从低到高<img  <if condition="$index_info['sort'] eq 'price'">style="display:block;" </if>src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
             <dd>
			<input class="pri" type="text" name="pri1" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" onfocus="if(this.value=='￥'){this.value=''}" onblur="if(this.value==''){this.value='￥'}" <if condition="$pri1 neq '' " > value="{$pri1}" <else/>value="￥" </if>  /> - <input class="pri" type="text" name="pri2"  onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" onfocus="if(this.value=='￥'){this.value=''}" onblur="if(this.value==''){this.value='￥'}" <if condition="$pri2 neq '' " > value="{$pri2}" <else/>value="￥" </if>  />
			<input type="hidden" name="m" value="search">
			<input type="hidden" name="a" value="index">
			<input type="hidden" name="sort" value="{$foc_curr}">
			<input type="hidden" name="k" value="{$skey}">
			<input type="submit" value="确定" class="sx_but">
            </dd>			
            
            <dd class="pack_up"><a href="javascript:void(0);"><img src="__STATIC__/jwap/images/pack_up.png"></a></dd>
        </dl>
		</form> 
    </header>
	
<div class="h_bmbk">
<if condition="C('ht_wap_template') eq '1'">
			<div class="goods_list" id="box_list">
				<ul id="goods_box">
				</ul>
				<div class="more" id='mores'>
					<a href="javascript:void(0);" onclick="get_list(0)">加载中..</a>
				</div>
			</div>
</if>			
<if condition="C('ht_wap_template') eq '2'">
<div class="goods_list" id="box_list">
				<ul id="goods_box">
				</ul>
				<div class="more" id='mores'>
					<a href="javascript:void(0);" onclick="get_list(0)">加载中..</a>
				</div>
			</div>
</if>
</div>	

<if condition="C('ht_wap_template') eq '3'">
<div id="goods">
<section class="goods" id="goods">
    <ul class="goods-list clear">
<include file='public:itemlist'/>	
	</ul>
</section>
<div class="paging">
<div class="paging-nav next">
{$page}
</div>    
</div>
</div>
</if>
	
	
<div id="goods">
<section class="goods" id="goods">
    <ul class="goods-list clear">


<br/>
	<span style="width:100%;height:20px;text-align:center;font-size:18px; margin: 30px 0 30px 0; color:#f1083f;" ><b>——— 以下商品来自淘宝推荐 ———</b></span>
<br/>	
<volist name='tkitems' id='item'>        
		<li>        
        <if condition="$item.isq eq 1"><div class="lingquan"><a href="{:U('item/index',array('iid'=>$item['num_iid']))}" target="_blank"><span>优惠券<br><em>{$item.quan}元</em></span><b></b></a></div></if>

		<a class="cd-popup-trigger3" href="{:U('item/index',array('iid'=>$item['num_iid'],'coupon'=>$item['quan']))}" id="{$item.num_iid}" >            
		<img src="{:C('ht_site_flogo')}" class="<eq name='mod' value='0'>J_lazy</eq><eq name='mod' value='1'>J_lazy</eq><eq name='mod' value='2'>J_lazy</eq><eq name='mod' value='3'>J_lazys</eq> lazy good-pic" d-src="{:attach(get_thumb($item['pict_url'], '_m'),'item')}">
		{$item.coupon_start_time|wapnewicon}
		</a> 

		<a href="{:U('item/index',array('iid'=>$item['num_iid']))}" target="_self">			
		<h3>{$item.title}</h3>
				<if condition="$rebate_open['data'] eq 1">
		<div class="lprice1">	<span class="buypeo1"><em class="hh4"> {:C('ht_first_word')}  </em>
		<em class="hh4"> {:C('ht_second_word')}</em></span> </div>	

		</if>
		<div class="lprice1">	<span class="buypeo"><em ><if condition="$item.volume gt 10000">{$item.volume|vmwan}<else />{$item.volume}</if></em><em class="hh3"> 人已买</em></span> </div>				
		<div class="list-price buy"><if condition="$item.isq eq 1"><span class="title-tips01">券后</span></if>            
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		<i class="del">￥{$item.price}</i> 
			<if condition="$item.user_type eq 'B' ">	              
		<span class="good-btn">天猫</span> 
		<else />
		<span class="good-btn">淘宝</span> 
        </if>		
		</div>        
		</a>
		</li> 
		
</volist>
	</ul>
</section>
<div class="cd-popup3">
    <div class="cd-popup-container3">
        <div class="titl">
<textarea readonly name="content" id="copy_key_ios" class="textr" style="display: none;" >正在生成淘口令...</textarea>
<textarea readonly name="content" id="copy_key_android" class="textr" oninput="regain();"  >正在生成淘口令...</textarea>
        </div>
<div class="but" >
		    <a class="large orange button" id="gotkl" data-clipboard-action="copy" data-clipboard-target="#copy_key_android" >复制淘口令</a>
			<a class="large green button" id="gobuy" isconvert="1" target="_blank">浏览器购买</a>
</div>
        <a href="#0" class="cd-popup-close">close</a>
    </div>
</div>
<div class="paging">   
</div>
</div>
<include file='public:footer'/>
</div>
</div>
<include file='public:footjs'/>
    <script>
$(function (){
    var aa = $(".goods-list li").innerWidth();
    $(".goods-list li img").css('height',aa);
})
</script>
<script type="text/javascript" src="__STATIC__/jwap/js/popup.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/jquery.mobile-1.0.1.min.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/jquery.glide.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/jquery.countDown.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/script.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/jweixin-1.0.0.js"></script>
				<script type="text/javascript">
				  var searchlimit = 1;
				  var searchskey = '{$skey}';
				  var searchsort ='{$sort}';
				  var searchpri1 ='{$pri1}';
				  var searchpri2 ='{$pri2}';
				</script>
	<script type="text/javascript">
		function get_list(ty){
		var loclimit = window.sessionStorage.getItem("searchlimit");
		var locsearchskey = window.sessionStorage.getItem("searchskey");
		var locsearchpri1 = window.sessionStorage.getItem("searchpri1");
		var locsearchpri2 = window.sessionStorage.getItem("searchpri2");
		var locsearchsort = window.sessionStorage.getItem("searchsort");
		if(loclimit == "" ||loclimit == null){
		}else{
		if(locsearchskey == searchskey && locsearchpri1 == searchpri1 && locsearchpri2 == searchpri2 && locsearchsort == searchsort){
		searchlimit = loclimit;
		}else{
		searchlimit =1;
		}
		}
			//alert(searchlimit);
		    if(ty==1){
			   $("#goods #goods-list").html('');
			}else{
			   $("#mores").html('<a href="javascript:void(0);">加载中...</a>');	   
			}
		//alert(sort);
			$.ajax({
        type:"get",
        url:"{:C('ht_header_html')}?m=search&a=getitemlist",
        data:{"pri1":searchpri1,"pri2":searchpri2,"k":searchskey,"sort":searchsort,"p":searchlimit},
        dataType:"json",	
		success:function(data){
			//    	alert(data.status);
			    	if (data.status == 1) {
								var item = eval(data.item_list);
					
								var content = '';
								for(var i=0; i<item.length; i++){				
	if({:C('ht_wap_template')}=="1"){
				if(item[i]['class']=="buy"){	
						content +='<li>';
						content +='<div class="img">';
					if(item[i]['isq']==1){
	//  content += ' <div class="lingquan"><a href="'+item[i]['quanurl']+'target="_blank" rel="nofollow"><span>优惠券<br><em>'+item[i]['quan']+'元</em></span><b></b></a></div>';
	   }

		content += '<a href="{:C('ht_header_html')}-item-index-id-'+item[i]['id']+'.html" target="_self">';            
		content += '<img src="'+item[i]['pic_url']+'_300x300.jpg" /></a>';
		content +='<label>已售'+item[i]['volume']+'件</label>';
		content +='</div>';
		
		content +='<div class="txt">';
		if(item[i]['shop_type']=="B"){
		content +='<h2><a href="{:C('ht_header_html')}-item-index-id-'+item[i]['id']+'" class="atm">'+item[i]['title']+'</a></h2>';
		}else{
		content +='<h2><a href="{:C('ht_header_html')}-item-index-id-'+item[i]['id']+'" class="atb">'+item[i]['title']+'</a></h2>';
		}
		content +='<h4><big>&yen;'+item[i]['coupon_price']+'</big><s>&yen;'+item[i]['price']+'</s> ';
	//	content +='<span class="fan">0.5</span>';
		content +='</h4>';
		content +='</div>';
		if(item[i]['isq']==1){
		content +='<div class="btn25">';
		content +='<a href="{:C('ht_header_html')}-item-index-id-'+item[i]['id']+'">领券减'+item[i]['quan']+'元</a>';
		content +='</div>';
		}else{
		content +='<div class="btn26">';
		content +='<a href="{:C('ht_header_html')}-item-index-id-'+item[i]['id']+'">去抢购</a>';
		content +='</div>';
		}
		content +='</li>';
			}					
		}  

	if({:C('ht_wap_template')}=="2"){
				if(item[i]['class']=="buy"){
						content +='<li>';
						content +='<div class="img">';
					if(item[i]['isq']==1){
		content += '<div class="htquan" ><a href=""><span>优惠券</span><span>'+item[i]['quan']+'元</span><b></b></a></div>';
	   }
		content += '<a href="{:C('ht_header_html')}-item-index-id-'+item[i]['id']+'.html" target="_self">';            
		content += '<img src="'+item[i]['pic_url']+'_300x300.jpg" /></a>';
		content +='</div>';
		
		content +='<div class="txt">';
		if(item[i]['shop_type']=="B"){
		content +='<h2><a href="{:C('ht_header_html')}-item-index-id-'+item[i]['id']+'" class="atm">'+item[i]['title']+'</a></h2>';
		}else{
		content +='<h2><a href="{:C('ht_header_html')}-item-index-id-'+item[i]['id']+'" class="atb">'+item[i]['title']+'</a></h2>';
		}
		content +='<h4><div class="ht_jia_left">现价&yen;'+item[i]['price']+'</div><div class="ht_jia_right">已售;'+item[i]['volume']+'</div> ';
	//	content +='<span class="fan">0.5</span>';
		content +='</h4>';
		content +='</div>';
		if(item[i]['isq']==1){
		content +='<div class="ht_quan_right">';
		content +='<a href="{:C('ht_header_html')}-item-index-id-'+item[i]['id']+'">券后:<font>&yen;'+item[i]['coupon_price']+'</font></a>';
		content +='</div>';
		}else{
		content +='<div class="ht_quan_right">';
		content +='<a href="{:C('ht_header_html')}-item-index-id-'+item[i]['id']+'">折后:<font>&yen;'+item[i]['coupon_price']+'</font></a>';
		content +='</div>';
		}
		content +='</li>';
					}								
				}
				}
                $("#box_list #goods_box").append(content);
				//var aa = $(".goods-list li").innerWidth();
                //$(".goods-list li img").css('height',aa);
				if(item.length>1){
					$("#mores").html('<a href="javascript:void(0);" onclick="get_list(0);">点击查看更多</a>');	
				}else{
					$("#mores").html('<a href="javascript:void(0);"></a>');
					//$("#list_more").fadeOut(500);
				}		
                searchlimit++;
				window.sessionStorage.setItem("searchlimit", searchlimit);
				window.sessionStorage.setItem("searchskey", searchskey);
				window.sessionStorage.setItem("searchpri1", searchpri1);
				window.sessionStorage.setItem("searchpri2", searchpri2);
				window.sessionStorage.setItem("searchsort", searchsort);
		//lazy_img();
				    }else if(data.status==2){
				//	alert("22222");
			    		$("#mores").html('<a href="javascript:void(0);">我是有底线的..</a>');
						//dialog("没有更多记录！");
						//$("#list_more").fadeOut(500);
		
			    	}else{
				//	alert("33333");
					    $("#mores").html('<a href="javascript:void(0);">我是有底线的..</a>');
						//dialog("没有更多记录！！");
						//$("#list_more").fadeOut(500);
					}    	
			    },
			    error : function(data) {
		//alert("44444");
			    }
			});
			    
		
		}								
		 if(window.localStorage.getItem("url") == window.location.href && window.localStorage.getItem("top") != "null")
		 {}
		 else
		 {
			 get_list(0);
			 }
		//==============自动加载=============
		//获取滚动条当前的位置 
		function getScrollTop() { 
		var scrollTop = 0; 
		if (document.documentElement && document.documentElement.scrollTop) { 
		scrollTop = document.documentElement.scrollTop; 
		} 
		else if (document.body) { 
		scrollTop = document.body.scrollTop; 
		} 
		return scrollTop; 
		} 
		
		//获取当前可是范围的高度 
		function getClientHeight() { 
		var clientHeight = 0; 
		if (document.body.clientHeight && document.documentElement.clientHeight) { 
		clientHeight = Math.min(document.body.clientHeight, document.documentElement.clientHeight); 
		} 
		else { 
		clientHeight = Math.max(document.body.clientHeight, document.documentElement.clientHeight); 
		} 
		return clientHeight; 
		} 
		
		//获取文档完整的高度 
		function getScrollHeight() { 
		return Math.max(document.body.scrollHeight, document.documentElement.scrollHeight); 
		} 
		
		
		var u = navigator.userAgent;
		var isiOSa = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端
		//alert(isiOSa);
				
		$(window).scroll(function () { 
		if({:C('ht_wap_template')}=="3"){
		}else{
			if(isiOSa){
				if (getScrollTop() + getClientHeight() == getScrollHeight()) { 
				 //alert("到达底部"); 
				 get_list(0);
				} 
				//alert(888)
			}else{
				if (getScrollHeight() - getClientHeight() - getScrollTop() < 10) { 
				 //alert("到达底部"); 
				 get_list(0);
				} 
				//alert(999)
			}
			}
			
		});
		
		
		//==============自动加载============= 
	</script>
	
<script language="javascript">
function gettkl(id)
{
            event.preventDefault();
            $('.cd-popup3').addClass('is-visible3');
            //$(".dialog-addquxiao").hide()
			$.ajax({
        type:"get",
        url:"{:C('ht_header_html')}?m=search&a=gettkl",
        data:{"data":id,"time":new Date().getTime()},
        dataType:"json", // 因为PHP返回数据是JSON格式，所以这里类似要用JSON
        success:function(data){
            if (data.status == 200) { // 状态200返回数据
				document.getElementById('copy_key_android').value="复制框内整段文字，打开👉手淘👈即可「领取优惠券」并购买"+data.tkoul;
				document.getElementById('copy_key_ios').value="长按框内 > 拷贝 复制框内整段文字，打开👉手淘👈即可「领取优惠券」并购买"+data.tkoul;
				document.getElementById('gobuy').href=data.qurl;
            } else { // 状态不是200返回数据
                alert(data.error);
            }
        }
    });
	
}

</script>
<script>    $(function () {
        //事件监听
        //------------------------------------------	
        document.addEventListener("selectionchange", function (e) {
            if (window.getSelection().anchorNode.parentNode.id == 'copy_key_ios' && document.getElementById('copy_key_ios').innerText != window.getSelection()) {
                var key = document.getElementById('copy_key_ios');
                window.getSelection().selectAllChildren(key);
            }
            if (window.getSelection().anchorNode.parentNode.id == 'copy_key_ios2' && document.getElementById('copy_key_ios2').innerText != window.getSelection()) {
                var key = document.getElementById('copy_key_ios2');
                window.getSelection().selectAllChildren(key);
            }
        }, false);


    });

    var ua = navigator.userAgent.toLowerCase();
    if (ua.match(/iphone/i) == "iphone" || ua.match(/ipad/i) == "ipad") {

        $('input').focus(function () {
            window.setTimeout('scrollBottom()', 300);
        });

    } else {
        $("#copy_key_ios").hide();
        $("#copy_key_ios2").hide();
        $("#copy_key_android").show();
        $("#copy_key_android2").show();
    }

    function scrollBottom() {
        window.scrollTo(0, 250);
    }

</script>
<script type="text/javascript">
	 var taokouling_value = document.getElementById("copy_key_android").value;
    function regain() {
        document.getElementById('copy_key_android').value = taokouling_value;
    }
    $(document).ready(function(){     
        var clipboard = new Clipboard('#gotkl');  
     
        clipboard.on('success', function(e) {    
            console.info('Action:', e.action);    
            console.info('Text:', e.text);    
            console.info('Trigger:', e.trigger);    
            document.getElementById("gotkl").innerHTML="已复制"; 
  //          e.clearSelection();    
        }); 
        clipboard.on('error', function(e) {    
 
            document.getElementById("gotkl").innerHTML="复制失败"; 
			alert("您浏览器不支持一键复制，请手动复制");
 
        }); 		
    }); 

    $('#copy_key_android').click(function() {
    	$('#closed').click();
    })


</script>
<script type="text/javascript">


    /*弹框JS内容*/
    jQuery(document).ready(function($){
		
        //关闭窗口
        $('.cd-popup3').on('click', function(event){
            if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup3') ) {
                event.preventDefault();
                $(this).removeClass('is-visible3');
				document.getElementById('copy_key_android').value="正在生成淘口令...";
				document.getElementById('copy_key_ios').value="正在生成淘口令...";
				document.getElementById("gotkl").innerHTML="复制淘口令"; 
            }
        });
        //ESC关闭
        $(document).keyup(function(event){
            if(event.which=='27'){
                $('.cd-popup3').removeClass('is-visible3');
				document.getElementById('copy_key_android').value="正在生成淘口令...";
				document.getElementById('copy_key_ios').value="正在生成淘口令...";
				document.getElementById("gotkl").innerHTML="复制淘口令";
            }
        });
    });
</script>
</body>
</html>