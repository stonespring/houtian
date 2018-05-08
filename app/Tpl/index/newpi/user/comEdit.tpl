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
.inputc{
	box-sizing: border-box;
  text-align:center;
  font-size:1.4em;
  height:2.7em;
  border-radius:4px;
  border:1px solid #c8cccf;
  color:#6a6f77;
  -web-kit-appearance:none;
  -moz-appearance: none;
  display:block;
  outline:0;
  padding:0 1em;
  text-decoration:none;
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
<form id="info_form" name="info_form" action="{:u('user/comEdit')}" method="post" enctype="multipart/form-data">
<div style="margin:10px 10px 10px 0px;">
			<table width="765" border="0" cellpadding="0" cellspacing="0" style="border-spacing:10px;border-collapse:separate;" >
<tr style="margin:20px 20px 20px 20px;">
				<th>订单号 :</th>
				<td>
                	<input type="text" readonly="readonly" name="order_no" id="J_order_no" class="inputc"  size="20" value="{$reba_item.order_no}">
                </td>
				<td></td>
			</tr>
            <tr>
				<th>商品名称 :</th>
				<td><input type="text" readonly="readonly" name="title" id="J_title" class="inputc"  size="60" value="{$reba_item.title}"></td>
			</tr>
			 <tr>
				<th>下单时间 :</th>
				<td><input type="text" readonly="readonly" name="create_time" id="J_create_time" class="inputc"  size="60" value="{$reba_item.create_time}"></td>
			</tr>
			 <tr>
				<th>申诉时间 :</th>
				<td><input type="text" readonly="readonly" name="add_time" id="J_add_time" class="inputc"  size="60" value="{$shen.add_time}"></td>
			</tr>
            <tr>
				<th>附件图片 :</th>
				<td>
					<img src="{$shen.ss_pz}" width="200" id="J_ss_pz" onclick="datu()">
				</td>
 			</tr>
 
            <tr>
				<th>联系QQ :</th>
				<td><input type="text" readonly="readonly" name="qq" id="J_qq" class="inputc"  size="60" value="{$shen.qq}"></td>
			</tr>
            <tr>
				<th>联系旺旺 :</th>
				<td><input type="text" readonly="readonly" name="wangwang" id="J_wangwang" class="inputc"  size="60" value="{$shen.wangwang}"></td>
			</tr>	
			 <tr>
				<th>联系电话 :</th>
				<td><input type="text" readonly="readonly" name="phone" id="J_phone" class="inputc" size="60" value="{$shen.phone}"></td>
			</tr>
			<tr>
			<th>留言记录 :</th>
			</tr>

			<volist name="shen_message" id="val" key="k" >
			<tr>
			<th></th>
            <td><p name="ss_content" id="J_ss_content">{$val}</p></td>
			</tr>
 			</volist>	
			<tr>
                <th>添加留言 :</th>
                <td><textarea name="add_msg" id="J_add_msg" cols="80" rows="3"></textarea></td>
            </tr>
			
			<if condition="$shen['status'] eq '等待审核'">
			<tr>
                <th>更改状态 :</th>
                <td><select name="complain_flg" id="J_complain_flg"><option value ="--">--</option><option value ="结束申诉">结束申诉</option></select></td>
            </tr>
			<else/>
			<tr>
                <th>申诉状态 :</th>
                <td>申诉结束</td>
            </tr>
			</if>
			
			</table>			
			
	     </div>
					<div class="mt10"><input type="submit" class="smt smt1" id="dosubmit" name="dosubmit" value="提交"></div>
					<input type="hidden" name="id" value="{$info.id}" />
			</form>
		</div>

	</div>
</div>
<!--主部结束-->
<include file="public:footer" />
<script src="__STATIC__/js/countdowns.js"></script>
<script type="text/javascript">
	function datu(){
		var width=document.getElementById("J_ss_pz").style.width;
		if(width="200"){
		document.getElementById("J_ss_pz").style.width="700px";
		}
		else{
		document.getElementById("J_ss_pz").style.width="200px";
		}
		
	}

</script>


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

