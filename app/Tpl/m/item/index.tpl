
<!doctype html>
<html>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/script.js"></script>
<script src="https://cdn.jsdelivr.net/clipboard.js/1.5.12/clipboard.min.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/jquery-1.8.0.js"></script>
<script src="__STATIC__/js/comment.js"></script>
<head>
<meta charset="utf-8">
<meta http-equiv="x-dns-prefetch-control" content="on"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta content="telephone=no" name="format-detection"/>
<meta name="full-screen" content="yes"/>
<meta name="x5-fullscreen" content="true"/>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
<title>{$page_seo.title}</title>
<meta name="keywords" content="{$page_seo.keywords}" />
<meta name="description" content="{$page_seo.description}" />
<link rel="stylesheet" type="text/css" href="__STATIC__/wap/css/mui.min.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/wap/css/wap.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/wap/css/wapshow.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/tcstyle.css">
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/iconfont.css">	
		
		<script type="text/javascript">
			$(window).on("load",function(){
				var winHeight = $(window).height();
				function is_weixin() {
					var ua = navigator.userAgent.toLowerCase();
					if (ua.match(/MicroMessenger/i) == "micromessenger") {
						return true;
					} else {
						return false;
					}
				}
				var isWeixin = is_weixin();
				$("div.buy-wrapper a,div.detail-wrapper a").click(function(){
					if(isWeixin){
						$(".weixin-tip").css("height",winHeight);
						$(".weixin-tip").show();
						return false;
					}
				});
			})
		</script>
		<style type="text/css">
			*{margin:0; padding:0;}
			a{text-decoration: none;}
			img{max-width: 100%; height: auto;}
			.weixin-tip{display:none;position:fixed;left:0;top:0;background:rgba(0,0,0,0.8);filter:alpha(opacity=80);width:100%;height:100%;z-index:100;}
			.weixin-tip p{text-align:center;margin-top:10%;padding:0 5%;position:relative;}
			.weixin-tip .close{color:#fff;padding:5px;font:bold 20px/24px simsun;text-shadow:0 1px 0 #ddd;position:absolute;top:0;left:5%;}
			.lprice1 {
width: 96%;
height: 26px;
line-height: 26px;
position: relative;
bottom: 0;
margin: 0 2%;
}
.buypeo1{
	display: block;
	height: 20px;
	line-height: 20px;
	color: #3f9d00;
	font-size: 11px;
	font-family: "黑体-简";
	border-radius:5px 5px 5px 5px;
	border:1px dashed #3f9d00;
	top:5px;
	right:2px;
	float:right;
}

.hh3{
	
	font-size:11px;
	font-family: "黑体-简";
	top:5px;
	right:2px;
	color: #606060;
}
.hh4{
	padding:0 5px 0 5px;
	font-size:11px;
	font-family: "黑体-简";
	top:5px;
	right:2px;
	color: #3f9d00;
}
		</style>
	</head>
	<body>
		<div class="weixin-tip">
			<p><img src="http://ohz1xth94.bkt.clouddn.com/android_tips.png" alt="在浏览器打开"/><span id="close" title="关闭" class="close" onclick="$(this).closest('div').hide()">×</span> </p>
		</div>
		<div id="load-more">
			<div>
			<div class="main-title clearfix"><a href="javascript:void(0);" class="mui-action-menu mui-pull-left" data-ajax="false" onclick="history.go(-1);" style="font-family: iconfont;color: #FFFFFF;font-size: 37px;line-height: 44px;margin-left: 9px;float: none;position: absolute;z-index: 5;"></a><h1 class="mui-title main-title-text">商品详情</h1><a href="{:C('ht_header_html')}" rel="external" class="main-home" data-cnzz-type="51" data-cnzz="0"></a></div>
				<div class="detail-wrapper">
				
					<div class="img">
					<a href="{:C('ht_site_url')}index.php/m?m=search&a=index&k={$item.title}" class="fanli-tongkuan" ></a>
					<div onclick="coshare()" class="fanli-fenxiang" ></div>
						<a <eq name="item.quanurl" value=""> href="{:U('jump/index',array('id'=>$item['id']))}" <else/>href="{$item.quanurl}" </eq> rel="nofollow" isconvert="1">
							<img src="{$item.pic_url}_640x640.jpg" alt="{$item.title}">
						</a>
						<span>已有{$item.volume}人抢购</span>
						<if condition="$rebate_open['data'] eq 1">
											<div class="fanli-price1">
                        <div class="fanli-current" ><div class="ft" >{:C('ht_first_word')}</div></div>
						<div class="fanli-current1" ><div class="ft1" >
				{:C('ht_second_word')}

						</div></div>
                    </div>
					</if>	
						
					</div>
					<div class="title-wrapper clearfix"><span class="<if condition="$item.shop_type eq 'B'">tmall<else/>taobao</if>"></span>{$item.title}</div>
					<div class="recommend-wrapper">
						<div class="text"><span>推荐理由</span>{$item.intro}</div>
					</div>
					<if condition="$item.tao_kou_ling neq ''">
    <div id="weixin-tt">
		 <div class="am-margin-top am-text-left" _hover-ignore="1">
			<div class="xywxti">点击框内 &gt; 自动复制 &gt; 拷贝</div>
		    <div class="fq-goods am-text-center am-margin-top-sm" >
		        <div class="fq-explain  am-center am-text-center"></div> 
		        <span id="copy_key_ios" style="display: none;">复制框内整段文字，打开👉手淘👈即可「领取优惠券」并购买{$item.tao_kou_ling}</span>
		        <textarea readonly  id="copy_key_android" type="text" class="am-form-field am-text-center am-text-mss pt10"  
		        oninput="regain();" style="font-size: 14px;">复制框内整段文字，打开👉手淘👈即可「领取优惠券」并购买{$item.tao_kou_ling}</textarea><div class="clear"></div></div></div><button type="button" id="closed" class="close" data-clipboard-action="copy" data-clipboard-target="#copy_key_android">点我复制</button>
		    </div>
				</if> 
				</div>
			
			<br>
            <div class="am-panel am-padding-horizontal-sm">
                <div class="am-panel-hd am-padding-left-0 am-padding-right-0">
                    <h4 class="am-panel-title" style="padding: 10px;background: #fff;font-size: 15px;">
                        商品图文详情<span class="am-text-primary am-text-xs" style="color:#0e90d2;font-size: 13px;">（点击展开）</span>
                    <span style="float:right">></span>
                    </h4>
                </div>
            </div>
			<br>

				<div class="item-xiangqing" style="display: none;">
					<div class="img">
						{$item.desc}
					</div>
				</div>
				<div class="pos-box clearfix">
					<p class="pos-title"><i></i>精品推荐</p>
					<div class="ads-list">
						<ht:item type="orlike" cid="$item['cate_id']">
						<volist name="items_list" id="val" key="i" mod="2">
						<div class="goods-item">
							<a data-transition="slide" href="{:U('item/index',array('id'=>$val['id']))}" class="img ui-link">
								<if condition="$item.isq eq '1'">
								<span class="coupon-wrapper">
									<span class="coupon">优惠券</span>
									<span class="price">{$val.quan}元</span>
								</span>
								</if>
								<img src="{$val.pic_url}_290x290.jpg" alt="{$val.title}">
							</a>
							<a data-transition="slide" href="{:U('item/index',array('id'=>$val['id']))}" class="title ui-link">
								<div class="text" style=" color:#777777;">{$val.title}</div>
							</a>
											<if condition="$rebate_open['data'] eq 1">

		<div class="lprice1">	<span class="buypeo1"><em class="hh4"> {:C('ht_first_word')}  </em>
		<em class="hh4"> {:C('ht_second_word')}</em></span> </div>		

		</if>
							<div class="price-wrapper">
								<span class="text"><if condition="$item.isq eq '1'">券后<ELSE/>折后</if></span>
								<span class="price">￥{$val.coupon_price}</span>
								<div class="sold-wrapper">
									<span class="sold-num" style="font-size: 10px;">{$val.volume}</span>
									<span class="text" style="font-size: 10px;">人已买</span>
								</div>
							</div>
						</div>
						</volist>
						</ht:item>
					</div>
				</div>
				<div class="buy-wrapper">
					<span class="price"><if condition="$item.isq eq '1'">券后<ELSE/>折扣</if>价：<i>&yen;<b>{$item.coupon_price}</b></i></span>
					<span class="coupon">&yen;{$item.price}</span>
					<if condition="$item.isq eq '1'"><a href="{$item.quanurl}" rel="nofollow"  isconvert="1" class="buy-btn" target="_blank">领券购买</a>
                    <elseif condition="$item.class eq 'buy'"/>
                    <if condition="$item.shop_type eq 'B' "><a <eq name="item.quanurl" value=""> href="{:U('jump/index',array('id'=>$item['id']))}" <else/>href="{$item.quanurl}" </eq> rel="nofollow"  isconvert="1" class="buy-btn" target="_blank">去天猫购买</a></if>
                    <if condition="$item.shop_type eq 'C' "><a <eq name="item.quanurl" value=""> href="{:U('jump/index',array('id'=>$item['id']))}" <else/>href="{$item.quanurl}" </eq> rel="nofollow"  isconvert="1" class="buy-btn" target="_blank">去淘宝购买</a></if>
                    
                    </if>
					<if condition="$item.isq eq '1'">
						<a href="{$item.quanurl}" class="coupon-btn normal-btn ">
							<span class="coupon-btn-l">&yen;<i>{$item.quan}</i>券</span>
							<span class="coupon-btn-r">点击<br />领取</span>
						</a>
					</if>
				</div>
			</div>
			
			
		</div>
		<include file="public:footer1" />
<div class="cd-popup3-share">
    <div class="cd-popup-container3-share">
        <div class="titl-share">
<textarea readonly name="content" id="copy_key_ios25" class="textr" style="display: none;" >
【{:C('ht_site_name')}】 
{$item.title} 
【原价】&yen;{$item.price} 
【优惠券】&yen;{$item.quan} 
【折后券后价】&yen;{$item.coupon_price} 
复制这条信息，打开【手机淘宝】即可领券下单{$item.tao_kou_ling} 
{$item.intro} 
【查看更多优惠商品】{:C('ht_header_html')}</textarea>
<textarea readonly name="content" id="copy_key_android25" class="textr" oninput="regain();"  >
【{:C('ht_site_name')}】 
{$item.title} 
【原价】&yen;{$item.price} 
【优惠券】&yen;{$item.quan} 
【折后券后价】&yen;{$item.coupon_price} 
复制这条信息，打开【手机淘宝】即可领券下单{$item.tao_kou_ling} 
{$item.intro} 
【查看更多优惠商品】{:C('ht_header_html')}
</textarea>
        </div>
<div class="but" >
		    <a class="large orange button" id="copy-share" data-clipboard-action="copy" data-clipboard-target="#copy_key_android25" >复制去分享</a>
</div>
    </div>
</div>
<script language="javascript">
function coshare()
{
            event.preventDefault();
            $('.cd-popup3-share').addClass('is-visible3-share');
            //$(".dialog-addquxiao").hide()
	
}

</script>
<script type="text/javascript">
    jQuery(document).ready(function($){
        $('.cd-popup3-share').on('click', function(event){
            if( $(event.target).is('.cd-popup-close-kf') || $(event.target).is('.cd-popup3-share') ) {
                event.preventDefault();
                $(this).removeClass('is-visible3-share');
            }
        });
        $(document).keyup(function(event){
            if(event.which=='27'){
                $('.cd-popup3-share').removeClass('is-visible3-share');
            }
        });
    });
</script>
<script type="text/javascript">
	 var copy_k = document.getElementById("copy_key_android25").value;
    function regain() {
        document.getElementById('copy_key_android25').value = copy_k;
    }
    $(document).ready(function(){ 
	            event.preventDefault();
        var clipboard = new Clipboard('#copy-share');  
     
        clipboard.on('success', function(e) {    
            console.info('Action:', e.action);    
            console.info('Text:', e.text);    
            console.info('Trigger:', e.trigger); 
			document.getElementById("copy-share").innerHTML="复制成功"; 
			alert("复制成功，现在可以分享给朋友省钱啦~");
			
  //          e.clearSelection();    
        }); 
        clipboard.on('error', function(e) {    
 
			alert("您浏览器不支持一键复制，请手动复制");
 
        }); 		
    }); 
</script>


		<script type="text/javascript">
			function show_date_time(end,style,id){
			    today=new Date(); 
				timeold=((end)*1000-today.getTime()); 
				if (timeold < 0) {
			        return;
			    }
			    setTimeout("show_date_time("+end+','+style+','+id+")", 100); 
			    sectimeold=timeold/1000;
				secondsold=Math.floor(sectimeold); 
				msPerDay=24*60*60*1000;
				e_daysold=timeold/msPerDay;
				daysold=Math.floor(e_daysold); 
				e_hrsold=(e_daysold-daysold)*24;
				hrsold=Math.floor(e_hrsold); 
				e_minsold=(e_hrsold-hrsold)*60;
				minsold=Math.floor((e_hrsold-hrsold)*60); 
				e_seconds = (e_minsold-minsold)*60;
				seconds=Math.floor((e_minsold-minsold)*60); 
				ms = e_seconds-seconds;
				ms = new String(ms);
				ms1 = ms.substr(2,1);
				ms2 = ms.substr(2,2);
				hrsold1=daysold*24+hrsold;
				if(style == 1){
					$("#end_date_"+id).html('<em>'+(hrsold1<10?'0'+hrsold1:hrsold1)+"</em>小时<em>"+(minsold<10?'0'+minsold:minsold)+"</em>分<em>"+(seconds<10?'0'+seconds:seconds)+"</em>秒");
				}else if(style == 2){
					$("#end_date_"+id).html('<em>'+daysold+"</em>天<em>"+(hrsold<10?'0'+hrsold:hrsold)+"</em>时<em>"+(minsold<10?'0'+minsold:minsold)+"</em>分<em>"+(seconds<10?'0'+seconds:seconds)+"</em>秒");
				}else if(style == 3){
					$("#end_date_"+id).html("<em>"+(hrsold1<10?'0'+hrsold1:hrsold1)+"</em>小时<em>"+(minsold<10?'0'+minsold:minsold)+"</em>分<em>"+(seconds<10?'0'+seconds:seconds)+"."+ms1+"</em>秒");
				}else{
					$("#end_date_"+id).html(daysold+"天"+(hrsold<10?'0'+hrsold:hrsold)+"小 时"+(minsold<10?'0'+minsold:minsold)+"分"+(seconds<10?'0'+seconds:seconds)+"秒."+ms2);
				}
			}
			$(".timer").each(function() {
			        var reg = /^[0-9]+$/;
			        var timer = $(this).attr('data-time');
			        if (reg.test(timer)) {
			            show_date_time(timer, 3 , 0);
			        }
				});
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

        $('.fq-explain span').html("长按框内 > 拷贝");
        $('.fq-explain span').css('background', 'white');

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

</script><script>
    var taokouling_value = document.getElementById("copy_key_android").value;
    function regain() {
        document.getElementById('copy_key_android').value = taokouling_value;
    }

    var taokouling_value_2 = document.getElementById("copy_key_android2").value;
    function regain_2() {
        document.getElementById('copy_key_android2').value = taokouling_value_2;
    }
</script>
	</body>
</html>

<script type="text/javascript">
	 
    $(document).ready(function(){     
        var clipboard = new Clipboard('#closed');  
     
        clipboard.on('success', function(e) {    
            console.info('Action:', e.action);    
            console.info('Text:', e.text);    
            console.info('Trigger:', e.trigger);    
            document.getElementById("closed").innerHTML="已复制"; 
			document.getElementById("closed").style.background = "#2f9b05";			
			document.getElementById("closed").style.color = "#ffebeb";	
            e.clearSelection();  
        });   
    }); 

    $('#copy_key_android').click(function() {
    	$('#closed').click();
    })
    $('.am-panel-title').click(function() {
    	if ($('.item-xiangqing').css('display') == 'none') {
    		$('.am-text-primary').html('（点击折叠）');
    		$('.item-xiangqing').show();
    	}else{
    		$('.am-text-primary').html('（点击展开）');
    		$('.item-xiangqing').hide();
    	}
    })

</script>
