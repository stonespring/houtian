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
margin: 0 auto;
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
top: 300px;
left: 50%;
z-index: 1001;
background: #FFF;
height: 280px;
margin-left: -275px; 
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
<script>
	function complain(oid){
		$("#order_id").attr("value",oid);
        $(".huishen").show();
		$(".zhezhao").show()
  }
   function guanbi()
  {
        $(".huishen").hide();
        $(".chashen").hide();
		$(".zhezhao").hide();
		
		$(".tiandanhao").hide();
  }
</script>
</head>
<body>
<div class="main w1200">
<include file="public:header" />
</div>


			<!-------------提交申诉---------------->
<div class="huishen" style="display: none">
<div class="chanshentop">
<div style="width: 100px; float: left;">提交申诉</div>
<div onclick="guanbi()" class="guanbi"
	style="float: right; width: 25px; height: 25px; margin-top: 0px; margin-right: -30px;">X</div>
<div style="clear: both"></div>
</div>
<form method="post" action="{:U('user/fanlishensu')}" name="frm"	enctype="multipart/form-data">
<div style="border-radius: 4px; border: 1px solid #BCE3FE; background: #F0F9FF; padding: 10px 5px 5px; margin: 10px;">
<table>
	<tr style="line-height: 35px;">
	<td>订单号：</td>
	<td><input type="text" name="ordernum" style=""></td>
	</tr>
	<tr>
		<td>申诉理由：</td>
		<td><textarea style="width: 327px"
			class="ui-form-text ui-form-textRed" onkeyup="SizeClew(this,300,2)"
			name="ss_content"></textarea></td>
	</tr>
	<tr style="line-height: 35px;">
	<td>Q Q：</td>
	<td><input type="text" name="qq" style=""></td>
	</tr>
	<tr style="line-height: 35px;">
	<td>旺旺：</td>
	<td><input type="text" name="wangwang"></td>
	</tr>
	<tr style="line-height: 35px;">
	<td>联系电话：</td>
	<td><input type="text" name="phone"></td>
	</tr>
	<tr>
		<td align=right>上传图片：</td>
		<td><input type="file" name="ss_pz" /> 
		<input type="hidden" id="order_id" name="order_id" value="" />
		</td>
	</tr>

</table>
<div class="bott" style="margin-left: 45%; ";><input type="submit" class="smt smt1" value="提交"/></div>
</div>

</form>
</div>


<div class="main mb20 {:C('ht_site_width')} clear">
	<div class="user_main">
		<include file="user/left" />


		<div class="right">
			<div class="menu-tag">
				<ul>
					<li id="rebate"><a href="{:U('user/rebate')}">我的订单</a></li>
					<li id="subrebate"><a href="{:U('user/subrebate')}">提交订单</a></li>
					<li id="complain"><a href="{:U('user/rebacomplain')}">订单申诉</a></li>
				</ul>
			</div>
			<script>
			$('.menu-tag ul #rebate').addClass('active');
			</script>


		<div class="u-tip">
				<p>如对订单有疑问，您可以<a class="utai" href="javascript:void(0)" onclick="complain({$val.id})">【提交申诉】</a></p>
			</div>	
			
<div style="margin:10px 10px 10px 0px;">
			<table width="765" border="0" cellpadding="0" cellspacing="0" style="background:url(__STATIC__/image/shang_bgw.png) repeat-x left top">
			  <tbody>
			  
			  
			  <tr style="height:35px;line-height:35px;background:#-E0E0E0"> 	 		 	
				   <td align="center" class="tdg">订单号</td> 	
				   <td align="center" class="tdg">提交时间/下单时间</td> 	 	
			      <td align="center" class="tdg" style="width:100px;margin:10px 0">商品标题</td>
				   <td align="center" class="tdg">下单价</td>
				    <td align="center" class="tdg">约返积分</td>
					 <td align="center" class="tdg" style="width:150px;">返利时间</td>
					   <td align="center" class="tdg">订单状态</td>
			  </tr>
			  
			<volist name="rebate_order" id="val">
			<if condition="$val.rebate_abnormal eq 0">
			<tr>
					 <td align="center" class="td_border">{$val.rebate_order}</td>
					 <td align="center" class="td_border">{$val.order_time}</td>
			 <td align="center" class="td_border" style="padding:5px;width:100px;"></td>
					 <td align="center" class="td_border"></td>
					   <td align="center" class="td_border"></td>
					  <td align="center" class="td_border"></td>
					    <td align="center" class="td_border">
												                           <if condition="$val.rebate_abnormal eq 0">
						   <font color="#e08900">等待记录</font>
						   <elseif condition="$val.rebate_abnormal eq 2"/>
						   <font color="#d90000">申诉中</font>
						   <elseif condition="$val.rebate_abnormal eq 3"/>
						   <font color="#e00000">订单失效</font>
						   </if>
						</td>
			  </tr>
			  </if>
			  </volist>
			  
			  <volist name="reba_log" id="vall">
			<tr>
					 <td align="center" class="td_border">{$vall.order_no}</td>
					 <td align="center" class="td_border" style="width:140px;">{$vall.create_time}</td>
			 <td align="center" class="td_border" style="padding:5px;width:100px;"><div style="width:98px;height:30px;line-height:30px;overflow:hidden">{$vall.title}</div></a></td>
					 <td align="center" class="td_border">{$vall.pay_money}</td>
					   <td align="center" class="td_border">{$vall.rebate_money}</td>
					  <td align="center" class="td_border" style="width:140px;">{$vall.create_time}</td>
					    <td align="center" class="td_border">
						 <if condition="$vall.complain_flg eq 1">
						   <font color="#d90000">申诉中</font>
						   <elseif condition="$vall.rebate_status eq 1"/>
						   <font color="#379200">已返利</font>
						   <elseif condition="$vall.rebate_status eq 0"/>
						   <font color="#e08900">等待返利</font>
						   <elseif condition="$vall.rebate_status eq 3"/>
						   <font color="#e00000">订单失效</font>
						   </if>
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

