<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo L('page_title');?></title>
<link rel="stylesheet" type="text/css" href="__TMPL__public/css/install.css" />
<script type="text/javascript" src="__TMPL__public/js/jquery.js"></script>
</head>

<body>
<div class="header">
	<div class="logo fl"></div>
    <div class="fr">
    	<ul class="top_nav fr">
        	<li><a href="http://houtianbest.cn/" target="_blank"><?php echo L('official_bbs');?></a></li>
            <li><a href="http://www.houtianbest.cn/" target="_blank">后天网络</a></li>
        </ul>
    </div>
</div>
<div class="content">
	<div class="step fl">
    	<h3>开始安装程序</h3>
        <ul>
        	<li <?php if($step_curr == 'eula'): ?>class="curr"<?php endif; ?>><h4><?php echo L('step_eula');?></h4></li>
            <li <?php if($step_curr == 'check'): ?>class="curr"<?php endif; ?>><h4><?php echo L('step_check');?></h4></li>
            <li <?php if($step_curr == 'setconf'): ?>class="curr"<?php endif; ?>><h4><?php echo L('step_setconf');?></h4></li>
            <li <?php if($step_curr == 'install'): ?>class="curr"<?php endif; ?>><h4><?php echo L('step_install');?></h4></li>
            <li <?php if($step_curr == 'finish'): ?>class="curr"<?php endif; ?>><h4><?php echo L('step_finish');?></h4></li>
        </ul>
    </div>
<div class="c_main fr">
<form id="J_install_form" action="<?php echo U('finish_done');?>" method="post">
    <div class="c_main_title"><?php echo L('step_install_desc');?></div>
    <div id="J_process" class="c_main_body process"></div>
    <div id="J_link" class="act" style="display:none;">
        <div class="btn"><input type="button" value="<?php echo L('next');?>" class="btn_next" onclick="window.location.href='<?php echo U('finish');?>';" /></div>
    </div>
    <iframe src="about:blank" style="width:500px; height:300px;display:none;" name="post_target"></iframe>
</form>
</div>
<script>
$(function(){
    $('#J_install_form').attr('target', 'post_target');
    $('#J_install_form').submit();
});
function show_process(html){
    $('#J_process').html($('#J_process').html() + html);
    var _t = $('#J_process').get(0);
    _t.scrollTop = _t.scrollHeight;
}
function install_successed(){
    $('#J_link').show();
}
</script>
</div>
</body>
</html>