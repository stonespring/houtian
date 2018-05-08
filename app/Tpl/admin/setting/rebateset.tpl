<include file="public:header" />

<!--会员返利设置-->
<div class="subnav">
    <h1 class="title_2 line_x">会员返利规则</h1>
</div>

<div class="pad_lr_10">

<form id="info_form" action="{:U('setting/edit')}" method="post">

    <table width="100%" class="table_form contentWrap">
			<tr>
	                	<th>是否开启返利 :</th>
        	<td>
            	<label><input type="radio" class="J_rebate_open" <if condition="C('ht_rebate_open') eq '1'">checked="checked"</if> value="1" name="setting[rebate_open]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" class="J_rebate_open" <if condition="C('ht_rebate_open') eq '0'">checked="checked"</if> value="0" name="setting[rebate_open]"> {:L('close')}</label>
				<span class="gray ml10">更换状态后需清理缓存 </span>
            </td>
    	</tr>
			<tr>
	                	<th>返利提示语 :</th>
            <td>
                <label>前段： &nbsp;&nbsp;<input type="text" name="setting[first_word]"  size="4" value="{:C('ht_first_word')}">&nbsp;&nbsp;</label>
                <label>后段： &nbsp;&nbsp;<input type="text" name="setting[second_word]"  size="4" value="{:C('ht_second_word')}">&nbsp;&nbsp;</label>
            </td>
    	</tr>
        <tr>
            <th width="100">返利时间 :</th>
            <td>
                <label>下单后 &nbsp;&nbsp;<input type="text" name="setting[rebate_day]" class="input-text" size="4" value="{:C('ht_rebate_day')}">&nbsp;&nbsp; 天返利</label>
            </td>
        </tr>
        <tr>
            <th width="100">返利比率 :</th>
            <td>
                <input type="text" name="setting[rebate_ratio]" class="input-text" size="4" value="{:C('ht_rebate_ratio')}">&nbsp;&nbsp; (<span style="color:#ff0000"> 请填写0--1间的数，0.5代表佣金的50%</span>)
            </td>
        </tr>
		<tr>
            <th width="100">积分价值 :</th>
            <td>
			                <label>1元等于 &nbsp;&nbsp;<input type="text" name="setting[rebate_value]" class="input-text" size="4" value="{:C('ht_rebate_value')}">&nbsp;&nbsp; 积分</label>
            </td>
        </tr>
		<tr>
            <th width="100">最低返利 :</th>
            <td>
			                <label><input type="text" name="setting[rebate_low]" class="input-text" size="4" value="{:C('ht_rebate_low')}">&nbsp;&nbsp; 积分</label>
            </td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="smt mr10" /></td>
        </tr>

    </table>

</form>

</div>

<include file="public:footer" />

<script>

$('#info_form').find('.input-text').live('keyup keydown blur',function(){

    var self = $(this);

    var val = self.val();

    val = val.replace(/[^0-9\.]/g,'');

    self.val(val);

});

</script>

</body>

</html>