<!DOCTYPE html>
<html>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/clipboard.js/1.5.12/clipboard.min.js"></script>
<head>
<include file='public:head'/>
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/chaquan.css" />
<script type="text/javascript" src="__STATIC__/jwap/js/jquery-1.7.2.min.js"></script>
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/tcstyle.css">
</head>
<body>
<div class="main">    
<include file='public:top'/>
        <div class="app">
            <header id="head" class="head">
                <div class="fixtop">
                    <span id="t-find"><a href="javascript:window.history.go(-1)" class="btn btn-left btn-back" title="返回上一页"></a></span>
                    <span id="t-index">查优惠券</span>
                </div>
            </header>
<div class="q-wrap">    
	<div class="action-list1">
	<div id="search-box2">
		
	 </div>
        <div id="search-box1">

            <form id="search-form" action="{:C('ht_header_html')}" method="get">

                <div class="box-search1">

				    <input type="hidden" name="m" value="search">

				    <input type="hidden" name="a" value="index">

                    <input type="text" id="keyword" name="k" x-webkit-speech="" placeholder="粘贴淘宝或者天猫商品标题查优惠券" autocomplete="off" value="">

                    <a href="javascript:;" class="del"><img src="__STATIC__/jwap/images/del.png"></a>

                </div>                

                <button id="search-submit" type="submit" onclick="document.getElementById('keyword').value=encodeURI(document.getElementById('keyword').value);getId('search-form').submit()">

                    <img src="__STATIC__/jwap/images/search.png">&nbsp;&nbsp;&nbsp;&nbsp;

                </button>

            </form>

        </div>
	</div>
	<div style="width:100%;height:20px;text-align:center;font-size:14px; margin: 10px 0 15px 0; color:#f1083f;" >—————— 大家在看 ——————</div>
<section class="goods" id="goods">
    <ul class="goods-list clear">

<volist name="tkitems" id="tkitems" key="i" mod="4"> 
		<li>
        <if condition="$tkitems.coupon_info neq ''"><div class="lingquan"><a href="{:U('item/index',array('iid'=>$tkitems['num_iid']))}" target="_blank" rel="nofollow" ><span>独家券<br><em>{$tkitems.item_con}元</em></span><b></b></a></div></if>        
		<a class="cd-popup-trigger3" isconvert=1 href="{:U('item/index',array('iid'=>$tkitems['num_iid']))}" id="{$tkitems.coupon_click_url}@{$tkitems['pict_url']}@{$tkitems.title}@{$tkitems.isq}@{$tkitems.num_iid}">            
		<img src="{$tkitems['pict_url']}" >
		
		</a> 
		<if condition="$tkitems.user_type eq '0' ">
		<a href="{:U('item/index',array('iid'=>$tkitems['num_iid']))}" target="_self">			
		<h3>{$tkitems.title}</h3>
				<if condition="C('ht_rebate_open') eq 1">
		<div class="lprice1">	<span class="buypeo1"><em class="hh4"> {:C('ht_first_word')} </em>
		<em class="hh4"> {:C('ht_second_word')}</em></span> </div>	
		</if>			
		<div class="lprice1">	<span class="buypeo"><em ><if condition="$tkitems.volume gt 10000">{$tkitems.volume|vmwan}<else />{$tkitems.volume}</if></em><em class="hh3"> 人已买</em></span> </div>				
		<div class="list-price buy"><if condition="$tkitems.coupon_info neq ''"><span class="title-tips01">券后</span></if>                
		<span class="price-new">
		<i>￥</i>{$tkitems.zk_price}
		</span>
		           
		<span class="good-btn">淘宝</span>            
		</div>        
		</a>
        </if>
		<if condition="$tkitems.user_type eq '1' ">
		<a href="{:U('item/index',array('iid'=>$tkitems['num_iid']))}" target="_self">			
		<h3>{$tkitems.title}</h3>
				<if condition="C('ht_rebate_open') eq 1">
		<div class="lprice1">	<span class="buypeo1"><em class="hh4"> {:C('ht_first_word')}  </em>
		<em class="hh4"> {:C('ht_second_word')}</em></span> </div>	
		</if>			
		<div class="lprice1">	<span class="buypeo"><em ><if condition="$tkitems.volume gt 10000">{$tkitems.volume|vmwan}<else />{$tkitems.volume}</if></em><em class="hh3"> 人已买</em></span> </div>				
		<div class="list-price buy"><if condition="$tkitems.coupon_info neq ''"><span class="title-tips01">券后</span></if>                 
		<span class="price-new">
		<i>￥</i>{$tkitems.zk_price}
		</span>
		        
		<span class="good-btn">天猫</span>            
		</div>        
		</a>
		</if>		
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
			<a class="large green button" id="gobuy" target="_blank">浏览器购买</a>
</div>
        <a href="#0" class="cd-popup-close">close</a>
    </div>
</div>

</div>
<include file='public:footer'/>
</div>
</div>
<include file='public:footjs'/>
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
            }
        });
        //ESC关闭
        $(document).keyup(function(event){
            if(event.which=='27'){
                $('.cd-popup3').removeClass('is-visible3');
				document.getElementById('copy_key_android').value="正在生成淘口令...";
				document.getElementById('copy_key_ios').value="正在生成淘口令...";
            }
        });
    });
</script>
</body>
</html>