<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/user.css" />
<style type="text/css">
.left .user-bind .taobao_sync { background-position:0 -448px; }
.left .user-bind .taobao_sync_no { background-position:0 -464px; }
.utai {
background: url(__STATIC__/image/anniu_lv.png) no-repeat left top;
display: block;
height: 30px;
width: 77px;
line-height: 30px;
color: #FFF;
margin: 5px 0;
cursor: pointer;
}
.td_border {
border-left: 1px solid #DCDCDC;
border-bottom: 1px solid #DCDCDC;
}
.td_borders {
border-right: 1px solid #DCDCDC;
border-bottom: 1px solid #DCDCDC;
padding: 5px;
border-left: 1px solid #DCDCDC;
}
.td_bo {
border: 1px solid #DCDCDC;
border-top: 0;
text-align: center;
}
.page_now div {
height: 39px;
padding: 17px 1px 0 1px;
display: inline-block;
margin: auto;
white-space: nowrap;
}
.zhezhao {
position: fixed;
top: 0px;
left: 0px;
background: #000;
opacity: 0.7;
width: 100%;
height: 100%;
z-index: 1000;
}
.tiandanhao{width:314px;height:181px;position:fixed;top:200px;left:39%;z-index:1001;background:#FFF;}
.tiandanhaotop{padding:0 28px 0 10px;font-weight:bold;height:35px; line-height:28px;font-weight:bold;
}
.bott {
height: 38px;
line-height: 38px;
text-align: center;
margin-top: 16px;
}
.queding {
border: 0;
width: 65px;
height: 30px;
background: 0;
}
.huishen {
width: 550px;
position: fixed;
top: 100px;
left: 500px;
z-index: 1001;
background: #FFF;
height: 280px;
}
.chanshentop {
text-shadow: 0 1px 0 rgba(255, 255, 255, 0.7);
padding: 0 28px 0 10px;
height: 28px;
line-height: 28px;
font-weight: bold;
}
.chashen {
width: 550px;
position: fixed;
top: 100px;
left: 500px;
z-index: 1001;
background: #FFF;
height: 500px;
overflow-y: auto;
overflow-x: hidden;
}
</style>

</head>
<body>
<div class="main w1200">
<include file="public:header" />
</div>

<div class="main mb20 {:C('ht_site_width')} clear">
	<div class="user_main">
		<include file="user/left" />


		<div class="right">
			<div class="menu-tag">
				<ul>
					<li id="rebate"><a href="{:U('user/rebate')}">我的订单</a></li>
					<li id="subrebate"><a href="{:U('user/subrebate')}">提交订单</a></li>
					<li id="rebacomplain"><a href="{:U('user/rebacomplain')}">订单申诉</a></li>
				</ul>
			</div>
			<script>
			$('.menu-tag ul #rebacomplain').addClass('active');
			</script>

<div style="margin:10px 10px 10px 0px;">
			<table width="765" border="0" cellpadding="0" cellspacing="0" style="background:url(__STATIC__/image/shang_bgw.png) repeat-x left top">
			  <tbody>
			  
			  
			  <tr style="height:35px;line-height:35px;background:#-E0E0E0"> 	 		 	
				   <td align="center" class="tdg">订单编号</td>
				   <td align="center" class="tdg" style="width:220px;max-height:100px;overflow:hidden; ">申诉理由</td>
				    <td align="center" class="tdg" style="width:180px;">申述时间</td>
					 <td align="center" class="tdg" style="width:100px;">申述状态</td>
						 <td align="center" class="tdg"></td>
			  </tr>
			  
			<volist name="rebate_shensu" id="val">
			<tr>
					 <td align="center" class="td_border" name="ordernum">{$val.ordernum}</td>
					    <td align="center" class="td_border">{$val.ss_content}</td>
					 <td align="center" class="td_border">{$val.add_time}</td>
					    <td align="center" class="td_border">
						<if condition="$val.status eq '等待审核'">
						   <font color="#e08900">{$val.status}</font>
						   <elseif condition="$val.status eq '申诉结束'"/>
						   <font color="#379200">{$val.status}</font>
						   </if>
						
						</td>
						 <td class="td_borders" align="center" style="padding:5px">
							<a href="{:u('user/comEdit', array('id'=>$val['ordernum']))}">查看</a>
			</td>
			  </tr>
			  </volist>
			  
			</tbody></table>				<div class="page page3">
					<div class="pageNav">{$page}</div>
				</div>
	     </div>

		</div>

	</div>
</div>
<!--主部结束-->
<include file="public:footer" />
<script src="__STATIC__/js/countdowns.js"></script>
<script>
    // 多个倒计时需要这样调用
    $('.J_CountDown').each(function () {
    	
        	
        var $this = $(this),
            data = $this.attr('data-config');
        $this.countDown(eval('(' + data + ')'),{$nowtime});
        
    });

    $('#countDown2').countDown();
</script>
</body>
</html>

