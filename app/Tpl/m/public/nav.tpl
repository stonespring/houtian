<div class="nav_box">
        <nav class="nav" id="nav">
            <ul class="" id="bot-nav">  
    <ht:nav type="lists" style="botmenu">
	<volist name="data" id="val">
			
			<li><a class="active" href="{$val.link}" target="_self">
			
			<img src="{:attach($val['icon'],'m')}" alt="{$val.name}" class="icon icon-bm">
			
			<span style="color:#ff7200;">{$val.name}</span><em class="line"></em></a></li>
    </volist>
	</ht:nav>  
			</ul>
        </nav>
</div>
