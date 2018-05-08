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
	<div class="search_warp1">
    <span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span>
    	<div class="search" style="float: none;">
    	<form name="search" action="{:C('search/index')}" method="get" id="search"><input type="hidden" name="m" value="search"><input type="hidden" name="a" value="index"><div class="seek_main"><input type="text" name="k" onclick="if(this.value=='请输入内容'){this.value='';this.className='seek_input seek_input_h'}" onblur="if(this.value==''){this.value='请输入内容';this.className='seek_input seek_input_f'}" class="seek_input seek_input_f" value="请输入内容"><button type="submit" id="k" onclick="document.getElementById('k').value=encodeURI(document.getElementById('k').value);getId('search').submit()" class="seek_btn" value="搜本站"><img src="__STATIC__/jwap/images/search.png"></button></div></form></div>
        
      </div>	
    <header id="head" class="head">

    </header>

<include file='public:lunbo'/>
  <div class="index_w">

    <ul class="category">

    <ht:nav type="lists" style="other">

	<volist name="data" id="val">

      <li class="houtian_1" data-url="{$val.link}">

        <span>

          <img src="{:attach($val['icon'],'m')}" alt="{$val.name}">

        </span>

        <strong>{$val.name}</strong>

      </li>

     

    </volist>

	</ht:nav>  

    </ul>

			<div class="h_navv">
				<ul>
					<li>
						<a href="{:U('jiu/index')}" target="_self" ><img src="__STATIC__/jwap/images/img15.png" /></a>
					</li>
					<li>
						<a href="{:U('shijiu/index')}" target="_self"><img src="__STATIC__/jwap/images/img16.png" /></a>
					</li>
				</ul>
			</div>


        <div class="hot_recommend">
            
            <dl class="today houtian_1" data-url="{:U('quan/index')}">
                <dt class="tt1">优惠券</dt>
                <dd class="txt">每日10:00更新</dd>
                <dd class="img"><img src="\static\jwap\images\waptubiao\todynew.png" width="108" alt=""><span></span></dd>
                <!-- dl-->
            </dl>
            <dl class="rec_item houtian_1" data-url="{:U('quan/index?cid=36')}" _hover-ignore="1">
                    <dt class="tt2">母婴生活</dt>
                    <dd class="txt">我是爱省钱的妈妈</dd>
                    <dd class="img"><img src="\static\jwap\images\waptubiao\55ee25e227b08.png" width="45" alt="我是爱省钱的妈妈"></dd>
                    <!-- dl-->
                </dl><dl class="rec_item houtian_1" data-url="{:U('quan/index?cid=37')}">
                    <dt class="tt3">美妆</dt>
                    <dd class="txt">就是要你好看</dd>
                    <dd class="img"><img src="\static\jwap\images\waptubiao\55ee25ad427f5.png" width="45" alt="就是要你好看"></dd>
                    <!-- dl-->
                </dl><dl class="rec_item houtian_1" data-url="{:U('quan/index?cid=38')}">
                    <dt class="tt2">居家</dt>
                    <dd class="txt">享受品质生活</dd>
                    <dd class="img"><img src="\static\jwap\images\waptubiao\55ee26066f7d4.png" width="45" alt="享受品质生活"></dd>
                    <!-- dl-->
                </dl><dl class="rec_item houtian_1" data-url="{:U('article/index')}">
                    <dt class="tt3">时尚美文</dt>
                    <dd class="txt">购物搭配新技能get</dd>
                    <dd class="img"><img src="\static\jwap\images\waptubiao\55ee257497dd5.png" width="45" alt="购物搭配新技能get"></dd>
                    <!-- dl-->
                </dl>        </div>

        
    </div>
	
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
				  var limit = 1;
				</script>
	<script type="text/javascript">
		function get_list(ty){
		var loclimit = window.sessionStorage.getItem("limit");
		if(loclimit == "" ||loclimit == null){
		}else{
		limit = loclimit;
		}
	//		alert(limit);
			//					  document.writeln(content);
		    if(ty==1){
			   $("#goods #goods-list").html('');
			}else{
			   $("#mores").html('<a href="javascript:void(0);">加载中...</a>');	   
			}
			
			$.ajax({
        type:"get",
        url:"{:C('ht_header_html')}?m=index&a=getlist",
        data:{"p":limit},
        dataType:"json",	
		success:function(data){
//			    	alert(data.status);
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
				if(item.length>1){
					$("#mores").html('<a href="javascript:void(0);" onclick="get_list(0);">点击查看更多</a>');	
				}else{
					$("#mores").html('<a href="javascript:void(0);"></a>');
					//$("#list_more").fadeOut(500);
				}		
                limit++;
				window.sessionStorage.setItem("limit", limit);
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

<script type="text/javascript">
    $(".houtian_1").off("click").on("click",function(){
       window.location.href = $(this).attr("data-url");
    });
</script>
<include file='public:footjs'/>
</body>
</html>