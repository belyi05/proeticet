<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    {$page_type = $CI->core->core_data['data_type'];}
    <title>{$site_title}</title>
    <meta name="description" content="{$site_description}" />
    <meta name="keywords" content="{$site_keywords}" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="robots" content="all">

    <link rel="stylesheet" href="{$THEME}/css/style.css" type="text/css" media="screen" charset="utf-8" >

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"> </script>
    {literal}
     <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-6675837-5']);
        _gaq.push(['_addOrganic', 'liveinternet.ru', 'ask']);
        _gaq.push(['_addOrganic', 'quintura.ru', 'request']);
        _gaq.push(['_addOrganic', 'search.qip.ru', 'query']);
        _gaq.push(['_addOrganic', 'gde.ru', 'keywords']);
        _gaq.push(['_addOrganic', 'gogo.ru', 'q']);
        _gaq.push(['_addOrganic', 'ru.yahoo.com', 'p']);
        _gaq.push(['_addOrganic', 'akavita.by', 'z']);
        _gaq.push(['_addOrganic', 'tut.by', 'query']);
        _gaq.push(['_addOrganic', 'all.by', 'query']);
        _gaq.push(['_addOrganic', 'meta.ua', 'q']);
        _gaq.push(['_addOrganic', 'bigmir.net', 'q']);
        _gaq.push(['_addOrganic', 'i.ua', 'q']);
        _gaq.push(['_addOrganic', 'online.ua', 'q']);
        _gaq.push(['_addOrganic', 'a.ua', 's']);
        _gaq.push(['_addOrganic', 'ukr.net', 'search_query']);
        _gaq.push(['_addOrganic', 'search.com.ua', 'q']);
        _gaq.push(['_addOrganic', 'search.ua', 'query']);
        _gaq.push(['_addOrganic', 'search.ukr.net', 'search_query']);
        _gaq.push(['_addOrganic', 'market.yandex.ru', 'text', true]);
        _gaq.push(['_addOrganic', 'price.ru', 'pnam']);
        _gaq.push(['_addOrganic', 'tyndex.ru', 'pnam']);
        _gaq.push(['_addOrganic', 'torg.mail.ru', 'q']);
        _gaq.push(['_addOrganic', 'tiu.ru', 'query']);
        _gaq.push(['_addOrganic', 'tech2u.ru', 'text']);
        _gaq.push(['_addOrganic', 'goods.marketgid.com', 'query']);
        _gaq.push(['_addOrganic', 'poisk.ngs.ru', 'q']);
        _gaq.push(['_addOrganic', 'sravni.com', 'q']);
        _gaq.push(['_addOrganic', 'e-katalog.ru', 'search_']);
        _gaq.push(['_addOrganic', 'market.meta.ua', 'q']);
        _gaq.push(['_addOrganic', 'sravni.ua', 'q']);
        _gaq.push(['_addOrganic', 'shop.bigmir.net', 'q']);
        _gaq.push(['_addOrganic', 'av.hotline.ua', 'q']);
        _gaq.push(['_addOrganic', 'bt.hotline.ua', 'q']);
        _gaq.push(['_addOrganic', 'dom.hotline.ua', 'q']);
        _gaq.push(['_addOrganic', 'sport.hotline.ua', 'q']);
        _gaq.push(['_addOrganic', 'auto.hotline.ua', 'q']);
        _gaq.push(['_addOrganic', 'hotline.ua', 'q']);
        _gaq.push(['_addOrganic', 'e-katalog.com.ua', 'search_']);
        _gaq.push(['_addOrganic', 'svitpokupok.com', 'q']);
        _gaq.push(['_addOrganic', 'search.topping.com.ua', 'query']);
        _gaq.push(['_addOrganic', 'searchcat.mytop-in.net', 'search']);
        _gaq.push(['_addOrganic', 'hit24.com.ua', 'sw']);
        _gaq.push(['_addOrganic', 'hotsale.ua', 'q']);
        _gaq.push(['_addOrganic', 'shop.i.ua', 'q']);
        _gaq.push(['_addOrganic', 'catalog.i.ua', 'q']);
        _gaq.push(['_addOrganic', 'price-list.in.ua', 'word']);
        _gaq.push(['_addOrganic', 'pay.ua', 'q']);
        _gaq.push(['_addOrganic', 'hotprice.ua', 's_text']);
        _gaq.push(['_trackPageview']);
        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
    <script type="text/javascript">
        window.google_analytics_uacct = "UA-6675837-5";
    </script>
    {/literal}
    <link rel="icon" href="{$THEME}/images/favicon.png" type="image/x-icon" />

</head>
<ul>


    {$cats = category_list_()}
    {foreach $cats as $cat}
    {$count_ = 0}
    {if !$cat.parent_id}
    <li{if $cat.id == $page.category} class="active" {/if}>
    <a href="{$cat.url}"
    {if $cat.id == $category.id} class="active" {/if}>{$cat.name}
</a>
</li>{/if}
        {if $cat.id==$page.category}
        {$pages=category_pages($cat.id)}
<ul>
{foreach $pages as $current_page}
<li
{if $page.id == $current_page.id} class="active" {/if}>{if $page.id != $current_page.id}<a href="{$current_page.url}"
{if $cat.id == $category.id} class="active" {/if}>{/if}{$current_page.title}{if $page.id != $current_page.id}
</a>{/if}</li>
        {/foreach}
        </ul>
        {/if}

        {$n=$cat.id}
        {$sub_cats = get_sub_categories($n)}
        {$count = 0}
<ul>

{foreach $sub_cats as $sub_cat}
<li
{if $count == 0} class="first" {/if}><a href="/{get_category_url($sub_cat.parent_id)}/{$sub_cat.url}"
{if $sub_cat.id == $category.id} class="active" {/if}>{$sub_cat.name}
</a></li>
        {$count++}
        {/foreach}
        </ul>
        {$count_++}
        {/foreach}
        </ul>

<body onвcopy="window.alert('© 2007-2010 «www.proeticet.ru». Авторские права статей и элементов дизайна защищены в соответствии с законом об авторском праве. Использование материалов в Интернете возможно только с указанием работающей гиперссылки на портал. Использование элементов дизайна ЗАПРЕЩАЕТСЯ !'); return false;">

<div id="wrapper">

<div id="header">
   <div id="logo" onclick="location.href='{site_url('')}'"></div>
</div><!-- #header-->
<div class="tabsBar">
    <ul>


        {$cats = category_list_()}
        {foreach $cats as $cat}
        {$count_ = 0}
        {if !$cat.parent_id}
        <li{if $cat.id == $page.category} class="active" {/if}>
        <a href="{$cat.url}"
        {if $cat.id == $category.id} class="active" {/if}>{$cat.name}
    </a>
</li>{/if}
    {/foreach}
        <li><form action="http://www.proeticet.ru/search.htm" id="cse-search-box" style="padding-left:13px;background-color:#589442;padding-bottom:3px;padding-right:18px;"></li>

            <input type="hidden" name="cx" value="partner-pub-7888413920772717:tlb8sn-s22z" />
            <input type="hidden" name="cof" value="FORID:11" />
            <input type="hidden" name="ie" value="windows-1251" />
            <input type="text" name="q" size="24" />
            <input type="submit" name="sa" value="Поиск" style="width:55px;height:22px;font-size:14px;"/>

    </form>
        <script type="text/javascript" src="http://www.google.ru/cse/brand?form=cse-search-box&amp;lang=ru"></script>
    </ul>
</div>
<div id="middle">

<div id="container">
    <div id="content">

        <div style="padding:10px; margin-left:-10px;margin-right:-10px;">
            {literal}
            <script type="text/javascript"><!--
google_ad_client = "pub-7888413920772717";
/* 728x15, создано 21.09.10 */
google_ad_slot = "3481932662";
google_ad_width = 728;
google_ad_height = 15;
-->
            </script>
            <script type="text/javascript"
                    src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
            </script> {/literal}
        </div>
        <h1>Заголовок</h1>

        Хлебные крошки


        {if $page_type == 'main'}

        {widget('cats_main_page')}



        {/if}

        {widget('banners_vse_mayki')}
        <div style="float:left;padding-right:10px;">
            <!-- Put this script tag to the <head> of your page -->
          {literal}  <script type="text/javascript" src="http://vkontakte.ru/js/api/openapi.js?20" charset="windows-1251"></script>
            <script type="text/javascript">
                VK.init({apiId: 2114700, onlyWidgets: true});
            </script>
            <!-- Put this div tag to the place, where the Like block will be -->
            <div id="vk_like" style=" "></div><br>
            <script type="text/javascript">
                VK.Widgets.Like("vk_like", {width: "496"});
            </script>
            <div style="">
                <!-- Put this script tag to the <head> of your page -->
                <script type='text/javascript' src='http://vkontakte.ru/js/api/share.js?10' charset='windows-1251'></script>
                <!-- Put this script tag to the place, where the Share button will be -->
                <script type='text/javascript' >
                    document.write(VK.Share.button(false,{type: 'round', text: 'Сохранить'}));
                </script>
                {/literal}
            </div>

        </div>
        <br>



        <div class="google">
            <div style="padding:10px;">
                {literal}
                <script type="text/javascript"><!--
            google_ad_client = "ca-pub-7888413920772717";
            /* 336x280, пїЅпїЅпїЅпїЅпїЅпїЅпїЅ 30.10.09 */
            google_ad_slot = "3517841568";
            google_ad_width = 336;
            google_ad_height = 280;
            //-->
            </script>
                <script type="text/javascript"
                        src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
                </script>
                {/literal}
            </div>
        </div>


        <div id="my_cont">
            {$content}
{literal}
            <?php

                    if($_SERVER['REQUEST_URI']=='/5_kak_zavyazat_sharf.html') {include ("php/image.php");  my_image(61);}
                    if($_SERVER['REQUEST_URI']=='/5_kak_zavyazat_platok.html') {include ("php/image.php");  my_image(94);}
                    echo str_replace(array ("\r", "\n"),'',$content); ?>
            {/literal}
        </div>


        {literal}
        <script type="text/javascript" >
            $(document).ready(function () {
                $("#vko_com").click(function () {
                    $("#stand").show();
                    $("#vko").hide();
                });
                $("#standart").click(function () {
                    $("#stand").hide();
                    $("#vko").show();
                })
            });

        </script>



        <style>
            #vko_com, #standart{border-bottom:dotted 1px blue;background:url(dar.jpg)right no-repeat;color:blue;font-size:14px;padding-right:15px;}
            #vko_com:hover, #standart:hover{cursor:pointer;}
        </style> {/literal}
        <div id="block_comments">

            <div id="vko">
                <div style="float:right;">

                </div>
                <span id="vko_com">Обычные комментарии</span><br><br>
                {literal}
                <!-- Put this script tag to the <head> of your page -->
                <script type="text/javascript" src="http://userapi.com/js/api/openapi.js?20"></script>

                <script type="text/javascript">
                    VK.init({apiId: 2114712, onlyWidgets: true});
                </script>

                <!-- Put this div tag to the place, where the Comments block will be -->
                <div id="vk_comments"></div>
                <script type="text/javascript">
                    VK.Widgets.Comments("vk_comments", {limit: 15, width: "600", attach: "*"});
                </script>
            </div>

            {/literal}


            <div id="stand" style="display:none">
                <span id="standart" style="border-bottom:dotted 1px blue;">Комментарии от Вконтакте</span>


            </div>


        </div>






    </div><!-- #content-->
</div><!-- #container-->

<div class="sidebar" id="sideLeft">

    {load_menu('main_menu')}

</div><!-- .sidebar#sideLeft -->

<div class="sidebar" id="sideRight">




    <h3>Лучшие за неделю</h3>

    {load_menu('main_menu')}

    <!--
<a href="http://www.vsemayki.ru/?ref=4714"><img src="http://www.proeticet.ru/uploaded/image/banners_b_82_240x400_summer_foto1_text2.gif"  height="400"  width="240" alt=""></a> -->

    <div style="text-align:center">
        баннеры
    </div>


</div><!-- .sidebar#sideRight -->

</div><!-- #middle-->

</div><!-- #wrapper -->

<div id="footer">



    <p>Копировать материалы с нашего сайта ЗАПРЕЩЕНО. © 2007-2011 belyi05</p>




    <p><a href="http://www.proeticet.ru/privacy.html" >Политика конфиденциальности</a></p>
{literal}
    <!--LiveInternet counter--><script type="text/javascript"><!--
document.write("<a href='http://www.liveinternet.ru/click' "+
        "target=_blank><img src='http://counter.yadro.ru/hit?t23.6;r"+
        escape(document.referrer)+((typeof(screen)=="undefined")?"":
        ";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
                screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
        ";"+Math.random()+
        "' alt='' title='Показано число посетителей за"+" сегодня' "+
        "border=0 width=88 height=15><\/a>")//--></script><!--/LiveInternet-->

    {/literal}


</div><!-- #footer -->


{literal}
<!-- Yandex.Metrika counter -->
<div style="display:none;"><script type="text/javascript">
    (function(w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter12479896 = new Ya.Metrika({id:12479896, enableAll: true, trackHash:true, webvisor:true});
            }
            catch(e) { }
        });
    })(window, "yandex_metrika_callbacks");
</script></div>
<script src="//mc.yandex.ru/metrika/watch.js" type="text/javascript" defer="defer"></script>
<noscript><div><img src="//mc.yandex.ru/watch/12479896" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

{/literal}



</body>
</html>