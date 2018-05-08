<include file='public:nav'/>
<div  id="back_top"  class="slide-box" style="display:none">
<a href="{:U('user/like')}" class="bag-enter" title="我的收藏">
<img src="/static/jwap/images/bag-icon.png" alt="我的收藏"></a>
<a href="#" class="back-top" title="返回顶部">
<img src="/static/jwap/images/back-top.png" alt="返回顶部"></a>
</div>
<div id="foot">
    <div class="foot-nav">

    </div>
</div>
<script type="text/javascript">
var HTIANER = {
    root: "__ROOT__",
	site: "{:C('ht_header_html')}",
    uid: "<?php echo $visitor['id'];?>", 
    url: {}
};
var lang = {};
<volist name=":L('js_lang')" id="val">lang.{$key} = "{$val}";</volist>
</script>
<ht:load type="js" href="__STATIC__/js/jquery/plugins/jquery.tools.min.js,__STATIC__/js/jquery/plugins/jquery.masonry.js,__STATIC__/js/jquery/plugins/formvalidator.js,__STATIC__/js/fileuploader.js,__STATIC__/js/htian.js,__STATIC__/js/front.js,__STATIC__/js/dialog.js,__STATIC__/js/item.js,__STATIC__/js/user.js,__STATIC__/red/js/comment.js,__STATIC__/red/js/comm.js" />
<div class="toTop" onclick=" $('body,html').animate({scrollTop:0},1000);" style="position: fixed;
    right: 2rem;
    bottom: 6rem;
    font-family: iconfont;
    display: none;
    font-size: 3.7rem;
    width: 4rem;
    height: 4rem;
    background-color: #fff;
    border: 1px solid #CCCCCC;
    border-radius: 5rem;
    text-align: center;
    z-index: 80;
    line-height: 3.8rem;
    color: #8c8c8c;">&#xe601;</div>
		<script type="text/javascript">
			window.setInterval("$('.ucautopager_guidebar').remove();$('.goods-item a').height($('.goods-item a').width());",100);
			$(".lazyload").lazyload({
				"placeholder": "/static/images/logo.jpg"
			});
		</script>
		<script type="text/javascript" charset="utf-8">
    $(document).ready(function () {
        var menu = $('#new-left-menu');
        var menuHeight = $('#menu-mask').height();
        var windowHeight = $(window).height();
        $(menu).find('.mask').css('height', (menuHeight > windowHeight ? menuHeight : windowHeight) + 'px');
        $(menu).find('.menu-content').css('height', (menuHeight > windowHeight ? menuHeight : windowHeight) + 'px');

        $(window).resize(function () {
            $(menu).find('.mask').css('height', (menuHeight > windowHeight ? menuHeight : windowHeight) + 'px');
            $(menu).find('.menu-content').css('height', (menuHeight > windowHeight ? menuHeight : windowHeight) + 'px');
        });

        $('.main-icon').click(function () {
            $(menu).css('z-index', 100);
            $(menu).addClass('opened-menu');
            $(menu).animate({left: 0},300);
        });
        $('#menu-mask').on('click',function () {
            $(menu).animate({left: -1 * $(window).width()},300,function(){
                $(menu).removeClass('opened-menu');
            });
        });
        $(window).scroll(function () {
            if ($(window).scrollTop() > 500) {
                $(".toTop").fadeIn(1500);
            }
            else {
                $(".toTop").fadeOut(1500);
            }
        });
    });
</script>

<div class="iconfont kf-g icon-kefu" onclick="kefu()" ></div>


<div class="cd-popup3-kf">
    <div class="cd-popup-container3-kf">
        <div class="titl-kf">
<ul class="kf">
<if condition="C('ht_qq') neq '' ">
<li><em class="iconfont ico-tb icon-qq"></em><span class="sp">Q Q</span><b class="sp">{:C('ht_qq')}</b> <a class="butn" href="mqq://im/chat?chat_type=wpa&uin={:C('ht_qq')}&version=1&src_type=web"rel="nofollow">在线交谈</a></li>
</if>
<if condition="C('ht_phone') neq '' ">
<li><em class="iconfont ico-tb icon-dianhua"></em><span class="sp">电话</span><b class="sp">{:C('ht_phone')}</b><a class="butn" href="tel:{:C('ht_phone')}">拨打电话</a></li>
</if>
<if condition="C('ht_WeChat') neq '' ">
<li><em class="iconfont ico-tb icon-weixin"></em><span class="sp">微信</span><b class="sp" id="copy_key_android">{:C('ht_WeChat')}</b><a class="butn" id="copy-we" data-clipboard-action="copy" data-clipboard-target="#copy_key_android" >复制账号</a></li>
</if>
</ul>
        </div>

    </div>
</div>
<script language="javascript">
function kefu()
{
            event.preventDefault();
            $('.cd-popup3-kf').addClass('is-visible3-kf');
            //$(".dialog-addquxiao").hide()
	
}

</script>
<script type="text/javascript">
    jQuery(document).ready(function($){
        $('.cd-popup3-kf').on('click', function(event){
            if( $(event.target).is('.cd-popup-close-kf') || $(event.target).is('.cd-popup3-kf') ) {
                event.preventDefault();
                $(this).removeClass('is-visible3-kf');
            }
        });
        $(document).keyup(function(event){
            if(event.which=='27'){
                $('.cd-popup3-kf').removeClass('is-visible3-kf');
            }
        });
    });
</script>
<script type="text/javascript">
	 var copy_k = document.getElementById("copy_key_android").value;
    function regain() {
        document.getElementById('copy_key_android').value = copy_k;
    }
    $(document).ready(function(){ 
	            event.preventDefault();
        var clipboard = new Clipboard('#copy-we');  
     
        clipboard.on('success', function(e) {    
            console.info('Action:', e.action);    
            console.info('Text:', e.text);    
            console.info('Trigger:', e.trigger); 
			alert("微信账号已复制，请打开微信添加朋友");
  //          e.clearSelection();    
        }); 
        clipboard.on('error', function(e) {    
 
			alert("您浏览器不支持一键复制，请手动复制");
 
        }); 		
    }); 
</script>

<style type="text/css">
/*foot start*/
#foot {
	width: 100%;
	height: 150px;
	position: relative;
	border-top: 1px solid rgba(255, 255, 255, 1);
	background:#fff;
	max-width: 640px;
    min-width: 320px;
    margin: 0px auto;
}
.foot-copyright:before {
	display: block;
	content: "";
	background-image: -webkit-gradient(radial, center center, 0, center center, 460, from(#b4b4b4), to(#efefef));
	background-image: -webkit-radial-gradient(circle, #b4b4b4, #efefef);
	background-image: -moz-radial-gradient(circle, #b4b4b4, #efefef);
	background-image: radial-gradient(circle, #b4b4b4, #efefef);
	background-repeat: no-repeat;
	height: 1px;
	width:90%;
	margin:0 auto;
	overflow: hidden;
}
.foot-nav {
	padding:10px 0 20px;
	height: 80px;
	line-height: 40px;
	position: relative;
}
.foot-nav a {
	color: #666;
	display: inline-block;
	font-size: 15px;
	height: 25px;
	line-height: 25px;
	margin: 0 auto;
	width: 32%;
	text-align: center;
	border-right:#ccc solid 1px;
	position:relative;
}
.foot-nav a:hover {
	text-decoration: none;
	color:#f8285c;
}
.foot-nav a img{height:18px;vertical-align:-3px;margin-right:5px;}
.foot-nav a .icon-tips{position:absolute;bottom:-16px;left:30%;z-index:10;height:auto;width:53px;}
#foot h2 {
	font-size: 12px;
	font-weight: 500;
	display: block;
	position: absolute;
	color: rgba(153, 153, 153, 1);
	background: #fff;
	top: 70px;
	left: 50%;
	padding: 0 4px;
	margin-left: -76px;
}
._border{border:none !important;}
/*foot end*/
</style>