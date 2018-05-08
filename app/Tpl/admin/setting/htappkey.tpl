<include file="public:header" />
<script src="http://cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
<script src="__STATIC__/js/layer/layer.js"></script>

<!--授权设置-->
<div class="subnav">
    <h1 class="title_2 line_x">授权</h1>
</div>

<div class="pad_lr_10">

<form id="info_form" action="{:U('setting/edit')}" method="post">

    <table width="100%" class="table_form contentWrap">
	        <tr>
			<th width="150">注意:</th>
        	<td><span stytle="width:500px;"><b>阿里限制每次授权有效期最多30天，授权快到期前请及时重新授权。</b></span></td>
    	</tr>
        <tr>
            <th></th>
            <td>
          <div>
              <a href="javascript:void(0)"  id = "oauth_but" onclick ="oauth()"><img src="./static/image/taobao_login.png"/></a>
          </div>

			</td>
        </tr>
        <tr>
        	<th width="150">session:</th>
        	<td><input type="text" name="setting[privilege_session]" class="input-text" size="30" value="{:C('ht_privilege_session')}"><span class="gray ml10"></span></td>
    	</tr>
		<tr>
        	<th width="150">PID第二段:</th>
        	<td><input type="text" name="setting[privilege_pid1]" class="input-text" size="30" value="{:C('ht_privilege_pid1')}"><span class="gray ml10"></span></td>
    	</tr>
        <tr>
        	<th width="150">PID第三段:</th>
        	<td><input type="text" name="setting[privilege_pid2]" class="input-text" size="30" value="{:C('ht_privilege_pid2')}"><span class="gray ml10"></span></td>
    	</tr>
        <tr>
        	<th width="150">淘宝数字ID:</th>
        	<td><input type="text" name="setting[houtian_appkey]" class="input-text" size="30" value="{:C('ht_houtian_appkey')}"><span class="gray ml10"></span></td>
    	</tr>

        <tr>
        	<th></th>
        	<td><input type="hidden" name="menuid"  value="{$menuid}"/><input type="submit" class="smt mr10" value="{:L('submit')}"/></td>
    	</tr>

    </table>

</form>

</div>

<include file="public:footer" />
<script>
function oauth(){

layer.ready(function(){ 
  layer.open({
    type: 2,
    title: '阿里妈妈登录授权',
    maxmin: true,
    area: ['800px', '500px'],
    content: ['https://oauth.taobao.com/authorize?response_type=token&client_id=23590390&state=1212&view=web', 'no'],
    end: function(){
      location.reload();
    }
  });
});

}
</script>


</body>

</html>