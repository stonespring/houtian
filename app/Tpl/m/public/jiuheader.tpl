<div class="app-other">
    <ul>
        <li class="normal <if condition='$nav_curr eq index'> active</if> "> <a href="{:C('ht_header_html')}"><em class="home"></em>网站首页</a></li>
        <li class="normal  <if condition='$nav_curr eq jiu'> active</if>"><a href="{:U('jiu/index')}"><em></em>9.9包邮</a></li>
        <notempty name="tag_list"> 
		<volist name="tag_list" id="bcate">	
		<li class="normal <if condition="$tag eq $bcate['id']"> active</if>"><a href="{:U('jiu/index',array('tag'=>$bcate['id']))}" title="{$bcate.name}"><em></em>{$bcate.name}</a></li>
		</volist>
		</notempty>
        </ul>
</div>