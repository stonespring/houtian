<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/user.css" />
<script type="text/javascript" src="__STATIC__/red/js/funs.js"></script>
<style type="text/css">
.left .user-bind .taobao_sync { background-position:0 -448px; }
.left .user-bind .taobao_sync_no { background-position:0 -464px; }
</style>
</head>
<body>
<div class="main w1200">
<include file="public:header" />
</div>
<script charset="utf-8" type="text/javascript" src="__STATIC__/red/js/jquery.validate.js" ></script>
<script>
$(function(){

	$('#subreb').validate({
        errorPlacement: function(error, element){
            var error_td = element.parent('div').next('div');
            error_td.find('.warn').hide();
            error_td.append(error);
        },
        success       : function(label){
            label.addClass('ok').text('OK!');
        },
        onkeyup: false,
        rules : {
            rebatenum : {
                required : true,
                minlength: 15
            },
        },
	messages : {
            rebatenum  : {
                required : '您必须提供一个订单号',
                minlength: '订单号位数不正确'
            },
        },
		submitHandler: function(form) {   
	        var query=$(form).serialize();
	        var url=$(form).attr('action');
	        ajaxPost(url,query);
        }

});

});
</script>
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
			$('.menu-tag ul #subrebate').addClass('active');
			</script>
			<div class="u-tip">
				<p>请填写通过本网站购买商品的订单号，不是通过本网站购买的商品没有返利</p>
			</div>


			<form id="subreb" name="form1" action="{:U('user/subrebate')}" method="post" class="ml30 mt30">
				<div class="address">
					<ul>
						<li>
							<div class="user">
								<label>订单号：</label>
								<input name="rebatenum" type="text" id="rebatenum" size="20" maxlength="20" style="width:150px;" class="ddinput"/>
							</div>
							<div class="error-box">
								<label class="warn">请准确填写订单号否则无法记录</label>
							</div>
						</li>
						<li>
							<input type="hidden" name="sub" value="1" />
							<input type="submit" class="smt smt1" value="提交">
						</li>
					</ul>
				</div>
			</form>

		</div>

	</div>
</div>
<!--主部结束-->
<include file="public:footer" />
</body>
</html>

