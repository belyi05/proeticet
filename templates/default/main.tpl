<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    {$page_type = $CI->core->core_data['data_type'];} <title>{$site_title}</title>
    <meta name="description" content="{$site_description}"/>
    <meta name="keywords" content="{$site_keywords}"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="robots" content="all">
    <link rel="stylesheet" href="{$THEME}/css/styles-responsive.css" type="text/css" media="screen" charset="utf-8">

    <link rel="stylesheet" href="{$THEME}/css/styles.css" type="text/css" media="screen" charset="utf-8">

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"> </script>
    {widget('GA')}
    <link rel="stylesheet/less" type="text/css" href="{$THEME}/css/styles.less">
    <script src="http://lesscss.ru/js/less.js" type="text/javascript"></script>
    <link rel="icon" href="{$THEME}/images/favicon.png" type="image/x-icon"/>

    {literal}
    <?php echo "sdf" ;?>
    {/literal}
</head>
<body>
<div id="wrapper">
    <div id="header">
        <div id="logo" onclick="location.href='{site_url('')}'">
        </div>
    </div>
    <!-- #header-->
    <div class="tabsBar">
        {widget('top_menu')}
    </div>
    <div id="middle">
        <div id="container">
            <div id="content">
                <div style="background: #eee;">
                    <!-- Гугл поиск -->
                    {literal} <gcse:search></gcse:search> {/literal}
                </div>
                {//widget('Ads_links_728_15')}
                {if $page_type == 'main'}
                     {widget('cats_main_page')}
                {/if}

                {//widget('banners_vse_mayki_gor')}
                <div class="google">

                        {//widget('Ads_336_280')}

                </div>

                    {$content}

                {widget('rating')}{literal} <?php
                        if($_SERVER['REQUEST_URI']=='/5_kak_zavyazat_sharf.html') {include ("php/image.php");  my_image(61);}
                        if($_SERVER['REQUEST_URI']=='/5_kak_zavyazat_platok.html') {include ("php/image.php");  my_image(94);}
                        echo str_replace(array ("\r", "\n"),'',$content); ?>
                    {/literal}

                <div id="block_comments">
                    {widget('vk_com')}
                </div>
            </div>
            <!-- #content-->
        </div>
        <!-- #container-->
        <div class="sidebar " id="sideLeft">
            {widget('sideleft_menu')}
        </div>


        <!-- .sidebar#sideLeft -->
        <div class="sidebar" id="sideRight">
            <h3>Лучшие за неделю</h3>
            {widget('top_views')}
        </div>

        <!-- .sidebar#sideRight -->
    </div>
    <!-- #middle-->
</div>
<!-- #wrapper -->
<div id="footer">
    <div>
    <p>
        Копировать материалы с нашего сайта ЗАПРЕЩЕНО. © 2007-2011 belyi05
    </p>
    <p>
        <a href="http://www.proeticet.ru/privacy.html">Политика конфиденциальности</a>
    </p>
    {widget('liveinternet')}
    </div>
</div>
<!-- #footer -->
{widget('metrika')}
</body>
</html>