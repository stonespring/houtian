<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="pad_lr_10">

				<form id="info_form" action="{:U('setting/edit')}" method="post">

    <table width="100%" class="table_form contentWrap">
		<tr>
            <th width="100">轻淘客Appkey :</th>
            <td>
			                <label><input type="text" name="setting[qingtaoke]" class="input-text" size="20" value="{:C('ht_qingtaoke')}"><a href="http://houtianbest.cn/forum.php?mod=viewthread&tid=67&extra=page%3D1" target="_blank">查看教程</a></label>
            </td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="保存Appkey" id="dosubmit" name="dosubmit" class="smt mr10" /></td>
        </tr>

    </table>

</form>
		
    <table width="100%" cellspacing="0" class="table_form">
		<tr>
            <th width="150">采集分类 :</th>
            <td><select class="J_quan_select mr10" onclick="$('#J_quan_cate_id').val($(this).val());">
		<option value="">--请选择--</option><option value="2">母婴</option></option><option value="3">美妆</option>
        <option value="4">居家</option><option value="5">鞋包配饰</option><option value="6">美食</option><option value="7">文体</option><option value="8">家电数码</option><option value="9">其它</option><option value="10">女装</option><option value="11">内衣</option><option value="12">男装</option>
		</select></td>

            <th width="150">入库分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select></td>
        </tr>
        <tr>
            <th width="150">对应分类 :</th>
            <td><input onclick="CJ($('#J_quan_cate_id').val(),$('#J_cate_id').val())" type="button" value="添加" name="dosubmit" class="smt mr10"></td>
			<td><a href="{:U('houtianyouhui/caiji')}" class="smt mr10" >手动采集</a><span class="gray ml10">一次50页，一分钟内不要采集超过2次，一共600页（12次）</span></td>
        </tr>
    </table>
	<input type="hidden" name="cate_id" id="J_cate_id" value="0" />
	<input type="hidden" name="quan_cate_id" id="J_quan_cate_id" value="0" />
	<input type="hidden" name="PD" id="PD" value="NO" />
<div class="J_tablelist table_list">
	<table width="100%" cellspacing="0">
		<thead>
			<tr>
				<th width="25">ID</th>
				<th width="25">ID:采集分类</th>
				<th width="25">ID:入库分类</th>
				<th width="25">操作</th>
			</tr>
		</thead>
		<tbody>
			<volist name="cinfo" id="item_cate">
			<tr>
				<td align="center">{$i}</th>
				<td align="center">{$item_cate.cate}:{$item_cate.name}</td>
				<td align="center">{$item_cate.cate1}:{$item_cate.name1}</td>
				<td align="center"><input value="删除" type="button" onclick="SC('{$item_cate.id}')" class="input3"></td>
			</tr>
			</volist>
		</tbody>
	</table>
	<table width="100%" cellspacing="0" class="table_form">
		<th width="20%">执行提示 :</th>
		<td id="TS" width="80%"><if condition="$check neq '1'">{$check}</if></td>
	</table>
</div>
</div>
<script src="/static/js/jquery/jquery.js"></script>
<script src="/static/js/admin.js"></script>
<script>
function secret(secret){
	secret=$('#secret').val()
	$.getJSON("{:U('houtianyouhui/secret')}",{secret:secret}, function(result){
		$("#TS").empty();
		if (result.ts == 'OK'){
			$("#TS").append('保存成功！');
		}else{
			$("#TS").append('保存失败！');
		}
	});
}
function SC(id){
	$.getJSON("{:U('houtianyouhui/delete')}",{id:id}, function(result){
		$("#TS").empty();
		if (result.ts == 'OK'){
			$("#TS").append('删除成功！');
		}else{
			$("#TS").append('删除失败！');
		}
		window.location.reload();
	});
}
function CJ(cate,cate1){
	$.getJSON("{:U('houtianyouhui/add')}",{cate:cate,cate1:cate1}, function(result){
		$("#TS").empty();
		if (result.ts == 'OK'){
			$("#TS").append('添加成功！');
		}else{
			$("#TS").append('添加失败！');
		}
		window.location.reload();
	});
} 

$(function(){
    $('.J_cate_select').cate_select({field:'J_cate_id'});
});
</script>
</body>
</html>