<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">模板中心</h1>
</div>
<div class="pad_lr_10">
    <form action="" method="get">
    <volist name="template_list" id="val">
    <div class="table_block">
        <div class="pad_10">
        <table>
            <tr>
              <td><img src="{$val.preview}" width="120" height="160" style="border:1px #E4E4E4 solid;" /></td>
              <td valign="top">
                    <table>
                        <tr>
                            <th align="right"><input type="radio" name="dirname" value="{$val.dirname}" <if condition="$def_tpl eq $val['dirname']">checked="checked"</if> /></th>
                            <td width="160"><if condition="$def_tpl eq $val['dirname']"><span class="red">默认电脑样式</span><else/><a href="{:U('template/index',array('dirname'=>$val['dirname']))}" class="blue">点这里设为默认</a></if></td>
                        </tr>
                        <tr><th align="right">模板文件夹：</th><td>{$val.dirname}</td></tr>
                        <tr><th align="right">模板名称：</th><td>{$val.name}</td></tr>
                        <tr><th align="right">模板作者：</th><td>{$val.author}</td></tr>
                        <tr><th align="right">版本：</th><td>{$val.version}</td></tr>
                    </table>
              </td>
            </tr>
        </table>
        </div>
    </div>
    </volist>
    <input type="hidden" name="g" value="admin" />
    <input type="hidden" name="m" value="template" />
    </form>
</div>
<div class="pad_lr_10" >
	<form id="info_form" action="{:u('setting/edit')}" method="post" enctype="multipart/form-data">
<table width="100%" border="0" cellpadding="0" cellspacing="0" >
<tbody>
<tr style="height:35px;line-height:20px;">
<td align="center"valign="bottom" ><img src="{:C('ht_site_url')}/data/upload/m/1008/1111.png" width="140" height="248" style="border:1px #E4E4E4 solid;" /></td>  
<td align="center"valign="bottom" ><img src="{:C('ht_site_url')}/data/upload/m/1008/2222.png" width="140" height="248" style="border:1px #E4E4E4 solid;" /></td> 
<td align="center"valign="bottom" ><img src="{:C('ht_site_url')}/data/upload/m/1008/3333.png" width="140" height="248" style="border:1px #E4E4E4 solid;" /></td>
</tr>
<tr style="height:30px;line-height:20px;">
<td align="center" style="font-size:1rem;"><input type="radio" <if condition="C('ht_wap_template') eq '1'">checked="checked"</if> value="1" name="setting[wap_template]"> 手机样式一</td>  
<td align="center" style="font-size:1rem;"><input type="radio" <if condition="C('ht_wap_template') eq '2'">checked="checked"</if> value="2" name="setting[wap_template]"> 手机样式二</td> 
<td align="center" style="font-size:1rem;"><input type="radio" <if condition="C('ht_wap_template') eq '3'">checked="checked"</if> value="3" name="setting[wap_template]"> 经典样式</td>
</tr>
<tr style="height:30px;line-height:20px;" >
</tr>
<tr style="height:30px;line-height:20px;" >
<td colspan="7">
<div style="width:100%; text-align:center;">
<input type="hidden" name="menuid"  value="{$menuid}"/><input type="submit" class="smt mr10" value="{:L('submit')}"/>
</div>
</td>
</tr>
</tbody></table>
	
	</form>
</div>
<include file="public:footer" />
</body>
</html>