<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<include file="public:head" />
<script src="__STATIC__/red/js/jquery1.7.2.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/jquery.lazyload.min.js" type="text/javascript"></script>   
<script src="__STATIC__/red/js/pp18610_v2.1.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/tuanpub3.0.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/jucore.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/zdm.js" type="text/javascript"></script>
<script type="text/javascript" src="__STATIC__/red/js/index.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/funs.js"></script>
<link href="__STATIC__/red/css/articlezdm.css" media="screen" rel="stylesheet" type="text/css"/>
</head>
<body>
  <include file="public:header" />
  <include file="public:nav-classify" />
  <div class="area">  
  <div id="contentB" class="area ">
  <div class="fblockA">
  <span>
  <a href="{:U('article/index')}" <empty name="cid">class="on"</empty>><em>文章中心</em></a>
 <volist name="acats" id="vol">
		<a href="{:U('article/cate',array('id'=>$vol['id']))}" <if condition="$vol.id eq $cid"> class="on" </if>><em>{$vol.name}</em></a>
		</volist> 
  
    </span>
  </div>
</div>
<div id="contentA" class="area">
<div class="right"> 
  <div class="rightSJ">
  <h2>热门品牌</h2>
  <ul class="clear">
<ht:item type="hotbrand" num="30" order="id desc">
<volist name="data" id="item">
<li>
<div class="sjimg">
<a target="_blank" href="{:U('brand/view',array('id'=>$item['id']))}"><img src="{$item.pic_url}" width="70" height="35" alt="{$item.title}" title="{$item.title}"></a>
</div>  
</li>
</volist>
</ht:item>
  </ul>
  </div>
<div class="rightHD">
<h2>浏览排行榜</h2>
<div class="re-top10">
<ul class="top-list">
<ht:article type="articlelists" num="10" cateid="$cid">
<volist name="data" id="val" mod="10">
<li><a href="{:U('article/read',array('id'=>$val['id']))}" target="_blank" title="{$val.title}">
<eq name="mod" value="0"><span class="rank rank-red">1</span></eq>
<eq name="mod" value="1"><span class="rank rank-red">2</span></eq>
<eq name="mod" value="2"><span class="rank rank-red">3</span></eq>
<eq name="mod" value="3"><span class="rank">4</span></eq>
<eq name="mod" value="4"><span class="rank">5</span></eq>
<eq name="mod" value="5"><span class="rank">6</span></eq>
<eq name="mod" value="6"><span class="rank">7</span></eq>
<eq name="mod" value="7"><span class="rank">8</span></eq>
<eq name="mod" value="8"><span class="rank">9</span></eq>
<eq name="mod" value="9"><span class="rank">10</span></eq>
{$val.title}</a></li>
</volist>
</ht:article> 
</li>
</ul>
</div>   
</div>

</div>
<div class="left hengdeal">
<volist name="article_list" id="article">
<div class="deal">
  <h3>
  <a href="{:U('article/read',array('id'=>$article['id']))}" target="_blank">{$article.title}</a>
  </h3>
  <div class="info">
    <p>
	{$article.info}...
	</p>
<p>&nbsp;</p>
  </div>
  <h4>
      <a rel="nofollow" href="{:U('article/read',array('id'=>$article['id']))}" target="_blank"></a>
  </h4>
  <h5>
    <span class="sj">{$article.add_time|date="Y-m-d H:i",###}</span>
    <span class="pl">来源：<a href="{:U('article/cate',array('id'=>$acats[$article['cate_id']]['id']))}">【{$acats[$article['cate_id']]['name']}】</a></span>
    <span class="fx"><u>分享</u></span>
  </h5>
</div>
</volist>
<div class="blockB"></div>      
<div class="page">
<em></em>
<div>
{$page}
</div>
</div>
</div>
</div>
</div>
<include file="public:footer" />
</body>
</html>
