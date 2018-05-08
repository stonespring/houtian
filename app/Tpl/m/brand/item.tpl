<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
</head>
<body>
<body>       

    <div class="main">
<include file='public:brandheader'/>
<include file='public:top'/>
        <div class="app">
		<include file='public:dapp'/>
    <header class="head" id="head">
        <div class="fixtop">
                        <span id="t-find"><a href="javascript:window.history.go(-1)" class="btn btn-left btn-back"></a></span>
                        <span id="t-index">商品详情</span>
                        <span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span>
                    </div>        
    </header>
        
            <div id="item">
                <div class="item-good">
                    <div class="img_show">
                        <ul id="target" class="clear">
                            <li><img src="{$item['pic_url']}"></li>
                        </ul>                
                    </div>
                    <div class="list-price buy"><span class="price-new ml"><i>￥</i>{$item.coupon_price}</span><i class="del f14 ml2">￥{$item.price}</i><if condition="$item.cu neq ''"><em class="icon-gai ml2">{$item.cu}</em></if> </div>
                    <h1>{$item.title}</h1>
                    <div class="better_change">
                        <h3>精挑细选</h3>
                        <ul class="better_show clear">
                            <li>
                                <div class="better_info">
                                    <i class="xp"></i>
                                    <span>新品特价</span>
                                </div>
                            </li>
                            <li>
                                <div class="better_info">
                                    <i class="xs"></i>
                                    <span>限时特卖</span>
                                </div>
                            </li>
                            <li>
                                <div class="better_info">
                                    <i class="cx"></i>
                                    <span>诚信品牌</span>
                                </div>
                            </li>
                            <li>
                                <div class="better_info">
                                    <i class="tj"></i>
                                    <span>人气推荐</span>
                                </div>
                            </li>
                            <li class="last">
                                <div class="better_info">
                                    <i class="by"></i>
                                    <span>全国包邮</span>
                                </div>
                            </li>
                        </ul>
                    </div>

                </div>
        <a isconvert="1" data-itemid="{$item.num_iid}"  target="_self" class="btn-pay buy" rel="nofollow">立即去抢购</a>
                <div class="bady-part">
                    <div id="bady-tab" class="bady-tab clear">
                        <ul>
                            <li><a href="javascript:;">图文详情</a> </li>
                            <li><a href="javascript:;">产品参数</a> </li>
                            <li><a href="javascript:;">商品评论</a> </li>
                        </ul>
                    </div>
                    <div class="tab1">
					{$item.desc}
                    </div>
                    <div class="com-big tab2"  style="display:none;">
                        <div class="com-list">
                               <ul>
                               {$info.ku}
							   </ul>
                                                    </div>
                    </div>
                    <div class="com-big tab3" style="display:none">
                        <div class="com-list">
                            <ul>
                            <div class="ds-thread" data-thread-key="{$item.id}" data-title="{$item.title}" data-url="{:C('ht_site_url')}index.php?m=brand&a=item&id={$item.id}"></div>
							</ul>
                        </div>
                    </div>
                </div>
            </div>              
                <div class="buy_btn clear">
                <a href="{:C('ht_header_html')}" class="go_home"><img src="/static/jwap/images/home.png">返回首页</a>
                <div class="buy_info">
				<a isconvert="1" data-itemid="{$item.num_iid}"  target="_self" class="go_tmall" rel="nofollow">立即去抢购<i></i></a>
                </div>
            </div>
			<include file='public:footer'/>
           </div>
		   </div>

    
    <script type="text/javascript">
        $("#bady-tab li").eq(0).addClass("active");        
        $('#bady-tab li').on('click', function(){
        $("#bady-tab li").removeClass("active");
        $(this).addClass("active");
        $(".tab1,.tab2,.tab3").hide();
        $(".tab"+($(this).index()+1)).show();
        });
    </script>
	<script type="text/javascript"> var duoshuoQuery = {short_name:"houtianbest"}; (function() { var ds = document.createElement('script'); ds.type = 'text/javascript';ds.async = true; ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js'; ds.charset = 'UTF-8'; (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ds); })(); </script>
	<include file='public:footjs'/>
</body>
</html>