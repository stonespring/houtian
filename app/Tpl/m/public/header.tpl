<div class="app-other">

    <ul>

    <li class="search">

        <div id="search-box">

            <form id="search-form" action="{:C('ht_header_html')}" method="get">

                <div class="box-search">

				    <input type="hidden" name="m" value="search">

				    <input type="hidden" name="a" value="index">

                    <input type="text" id="keyword" name="k" x-webkit-speech="" placeholder="搜索商品" autocomplete="off" value="">

                    <a href="javascript:;" class="del"><img src="__STATIC__/jwap/images/del.png"></a>

                </div>                

                <button id="search-submit" type="submit" onclick="document.getElementById('keyword').value=encodeURI(document.getElementById('keyword').value);getId('search-form').submit()">

                    <img src="__STATIC__/jwap/images/search.png">

                </button>

            </form>

        </div>

    </li>

        <li class="normal <if condition='$nav_curr eq index'> active</if> ">

        <a href="{:C('ht_header_html')}">

        <em class="home"></em>首页</a></li>

        <ht:nav type="lists" style="wap">

    	<volist name="data" id="val">

        <li class="normal  <if condition="$nav_curr eq $val['alias']">active</if>">

        <a href="{$val.link}">

        <em class="['alias']"></em>{$val.name}</a></li>

        </volist>

		</ht:nav> 

        </ul>

</div>