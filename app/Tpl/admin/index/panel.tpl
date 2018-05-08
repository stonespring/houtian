<include file="public:header" />
<script src="__STATIC__/js/jquery/jquery.js"></script>
<script src="__STATIC__/js/htian.js"></script>
<script src="__STATIC__/js/admin.js"></script>
<div class="pad_10">
	<div class="clearfix">

		<div class="col-2 mt20" style="width:100%;text-align: center;">
			<h6>个人信息</h6>
			<div class="content">
				您好，<b style="color:#06C"> {$my_admin.username}</b> &nbsp;[超级管理员] &nbsp;&nbsp;&nbsp;<a class="red" href="{:u('index/logout')}">[{:L('logout')}]</a><br />
				登录IP： {$ip} [ {$time}]<br />
                
				<div class="bk20 hr"><hr /></div>
			</div>
		</div>
		<div class="bk10"></div>
		<div class="col-2 mt20"  style="width:100%;text-align: center;">
			<h6>提示建议</h6>
			<div class="content">
				<div class="bk20 hr"><hr /></div>
					<notempty name="message">
						<volist name="message" id="val">
						<div class="on{$val.type}">&nbsp;{$val.content}</div><br />
						</volist>
					</notempty>
			</div>
		</div>
		<div class="bk10"></div>
		<div class="col-2 mt20" style="width:100%;text-align: center;">
			<h6>系统信息</h6>
			<div class="content">
				{:L('htian_version')}：<font style="color:#090">后天网络淘客程序</font>{$system_info.htian_version}<br />
				{:L('server_os')}：{$system_info.server_os}<br />
				{:L('web_server')}：{$system_info.web_server}<br />
				{:L('php_version')}：{$system_info.php_version}<br />
				支持函数：<span class="{$system_info.curl}">远程读取</span>
				<span class="onCorrect">编码转换</span>
				<span class="{$system_info.zlib}">页面压缩</span>
				<br />
			</div>
		</div>
		<div class="bk10"></div>
		<div class="col-2 mt20"  style="width:100%;text-align: center;">
			<h6>授权信息</h6>
			<div class="content">
				授权类型：<span><font color="green">后天网络终身授权</font></span><br />
				授权域名：<span><font color="green"><a href="{:C('ht_site_url')}" target="_blank">{$system_info.server_domain}</a></font></span><br />
				<div class="bk20 hr"><hr /></div>
				淘客论坛：<a href="http://houtianbest.cn" target="_blank">houtianbest.cn</a> <br />
				技术支持：<a href="http://wpa.qq.com/msgrd?v=3&uin=597990793&site=qq&menu=yes" target="_blank"><img border="0" src="http://wpa.qq.com/pa?p=2:597990793:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a> 
			</div>
		</div>
        <div class="bk10"></div>
	</div>
</div>
</body>
</html>