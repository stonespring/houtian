<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>申请代理</title>
		<meta name="description" content="Fullscreen Form Interface: A distraction-free form concept with fancy animations" />
		<meta name="keywords" content="fullscreen form, css animations, distraction-free, web design" />
		<meta name="author" content="Codrops" />
		<link rel="stylesheet" type="text/css" href="__STATIC__/jwap/ucss/normalize.css" />
		<link rel="stylesheet" type="text/css" href="__STATIC__/jwap/ucss/demo.css" />
		<link rel="stylesheet" type="text/css" href="__STATIC__/jwap/ucss/component.css" />
		<link rel="stylesheet" type="text/css" href="__STATIC__/jwap/ucss/cs-select.css" />
		<link rel="stylesheet" type="text/css" href="__STATIC__/jwap/ucss/cs-skin-boxes.css" />
		<script src="__STATIC__/jwap/ujs/modernizr.custom.js"></script>
	</head>
	<body>
		<div class="container">

			<div class="fs-form-wrap" id="fs-form-wrap">
				<div class="fs-title">
					<h1>申请代理</h1>
					
				</div>
				<form id="infoset" class="fs-form fs-form-full" action="{:U('user/agentapply',array('do'=>'myinfo'))}" method="post" autocomplete="off">
					<ol class="fs-fields">
						<li>
							<label class="fs-field-label fs-anim-upper" for="q1">请输入您的名字?</label>
							<input class="fs-anim-lower" id="q1" name="q1" type="text" placeholder="您的名字" value="{$info.realname}" required/>
						</li>
						<li>
							<label class="fs-field-label fs-anim-upper" for="q2" data-info="方便我们联系您">您的电子邮件地址是什么?</label>
							<input class="fs-anim-lower" id="q2" name="q2" type="email" placeholder="mail@com" value="{$info.email}" required/>
						</li>
						<li>
							<label class="fs-field-label fs-anim-upper" for="q3">请输入您的QQ?</label>
							<input class="fs-anim-lower" id="q3" name="q3" type="text" placeholder="QQ" value="{$info.qq}" required/>
						</li>
						<li>
							<label class="fs-field-label fs-anim-upper" for="q4" data-info="方便我们为您打款">您的支付宝账号是什么?</label>
							<input class="fs-anim-lower" id="q4" name="q4" type="text" placeholder="支付宝账号" value="{$info.alipay}" required/>
						</li>
						<li>
							<label class="fs-field-label fs-anim-upper" for="q5" data-info="方便我们打款时核对">您的支付宝名称是什么?</label>
							<input class="fs-anim-lower" id="q5" name="q5" type="text" placeholder="支付宝名称" value="{$info.name}" required/>
						</li>
						<li>
							<label class="fs-field-label fs-anim-upper" for="q6" >您所在的区域(省份)？</label>
							<input class="fs-anim-lower" id="q6" name="q6" type="text" placeholder="比如：北京" required/>
						</li>
						<li>
							<label class="fs-field-label fs-anim-upper" for="q7">请填写您的申请理由或想说的话？</label>
							<textarea class="fs-anim-lower" id="q7" name="q7" placeholder="我们期待您的加入"></textarea>
						</li>
					</ol><!-- /fs-fields -->
					<button class="fs-submit" type="submit">提交申请</button>
				</form><!-- /fs-form -->
			</div><!-- /fs-form-wrap -->

		

		</div><!-- /container -->
		<script src="__STATIC__/jwap/ujs/classie.js"></script>
		<script src="__STATIC__/jwap/ujs/selectFx.js"></script>
		<script src="__STATIC__/jwap/ujs/fullscreenForm.js"></script>
		<script>
			(function() {
				var formWrap = document.getElementById( 'fs-form-wrap' );

				[].slice.call( document.querySelectorAll( 'select.cs-select' ) ).forEach( function(el) {	
					new SelectFx( el, {
						stickyPlaceholder: false,
						onChange: function(val){
							document.querySelector('span.cs-placeholder').style.backgroundColor = val;
						}
					});
				} );

				new FForm( formWrap, {
					onReview : function() {
						classie.add( document.body, 'overview' ); // for demo purposes only
					}
				} );
			})();
		</script>
	</body>
</html>