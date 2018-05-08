<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/alert.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/global.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/slicy.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/style.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/glide.css" />
</head>
<body>
<div class="main">    
<include file='public:header'/>
<include file='public:top'/>  
<div class="app">

    <header class="head" id="head">
        <div class="fixtop">
        <span id="t-find" class="classify"><a href="javascript:void(0);" class="btn btn-left btn-type"></a></span>
        <span id="t-index">{$cinfo.name}折扣 <i><if condition="$index_info['sex'] eq 'man'"> - 男</if> <if condition="$index_info['sex'] eq 'woman'"> - 女</if></i></span>
        <span id="t-user"><a href="javascript:;" class="choice">筛选<em class="cur"></em></a></span>
        </div>
        <dl class="screen-box">
            <dt>筛选方式：</dt>
			<dd>
            <a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'default'))}" title="默认排序" >默认
			<img <if condition="$index_info['sort'] eq 'default'">style="display:block;" </if> src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
            <dd>
            <a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'new'))}" title="最新" >最新<img  <if condition="$index_info['sort'] eq 'new'">style="display:block;" </if>src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
            <dd>
            <a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'hot'))}" title="最热">最热<img  <if condition="$index_info['sort'] eq 'hot'">style="display:block;" </if>src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
             <dd>
            <a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'price'))}" title="价格">价格<img  <if condition="$index_info['sort'] eq 'price'">style="display:block;" </if>src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
             <dd>
            <a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'rate'))}" title="折扣">折扣<img  <if condition="$index_info['sort'] eq 'rate'">style="display:block;" </if>src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
			
            
            <dd class="pack_up"><a href="javascript:void(0);"><img src="__STATIC__/jwap/images/pack_up.png"></a></dd>
        </dl>
    </header>
    <notempty name="subnav"> 
        <div class="next-nav">
        <div class="box">
        <ul>		
		<li><a href="{:U('index/cate', array('cid'=>$cinfo['pid']))}" <if condition="$cid eq $cinfo['pid']">class="active"</if>>全部</a></li>
		<volist name="subnav" id="bcate">		
		<li><a <if condition="$cid eq $bcate['id']">class="active"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></li>
		</volist>                            
        </ul>
        </div>
        </div>
		   
</notempty>
        

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
<include file='public:footer'/>
</div>
</div>
<script type="text/javascript" src="__STATIC__/jwap/js/popup.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/jquery.mobile-1.0.1.min.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/jquery.glide.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/jquery.countDown.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/script.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/jweixin-1.0.0.js"></script>
				<script type="text/javascript">
				  var catelimit = 1;
				  var catecid = {$cid};
				  var catesort ='{$csort}';
				</script>
	<script type="text/javascript">
		function get_list(ty){
		var loclimit = window.sessionStorage.getItem("catelimit");
		var loccatecid = window.sessionStorage.getItem("catecid");
		var loccatesort = window.sessionStorage.getItem("catesort");
		if(loclimit == "" ||loclimit == null){
		}else{
		if(loccatecid == catecid && loccatesort == catesort){
		catelimit = loclimit;
		}else{
		catelimit = 1;
		}
		}
		//	alert(catelimit);
		    if(ty==1){
			   $("#goods #goods-list").html('');
			}else{
			   $("#mores").html('<a href="javascript:void(0);">加载中...</a>');	   
			}
		//alert(catesort);
			$.ajax({
        type:"get",
        url:"{:C('ht_header_html')}?m=index&a=getcatelist",
        data:{"cid":catecid,"sort":catesort,"p":catelimit},
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
                catelimit++;
				window.sessionStorage.setItem("catelimit", catelimit);
				window.sessionStorage.setItem("catecid", catecid);
				window.sessionStorage.setItem("catesort", catesort);
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
<include file='public:footjs'/>
</body>
</html>