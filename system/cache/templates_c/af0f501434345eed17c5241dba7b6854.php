<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php $page_type = $CI->core->core_data['data_type'];?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php if(isset($site_title)){ echo $site_title; } ?></title>
<meta name="description" content="<?php if(isset($site_description)){ echo $site_description; } ?>" />
<meta name="keywords" content="<?php if(isset($site_keywords)){ echo $site_keywords; } ?>" />
<meta name="generator" content="ImageCMS" />

<link rel="stylesheet" type="text/css" href="<?php if(isset($THEME)){ echo $THEME; } ?>/css/general.css" />
<link rel="stylesheet" type="text/css" href="<?php if(isset($THEME)){ echo $THEME; } ?>/css/slideshow.css" />

<script type="text/javascript" src="<?php if(isset($THEME)){ echo $THEME; } ?>/js/jquery.js"></script>
<script type="text/javascript" src="<?php if(isset($THEME)){ echo $THEME; } ?>/js/jquery.hoverIntent.js"></script>
<script type="text/javascript" src="<?php if(isset($THEME)){ echo $THEME; } ?>/js/superfish.js"></script>
<script type="text/javascript" src="<?php if(isset($THEME)){ echo $THEME; } ?>/js/jquery.cycle.js"></script>
<script type="text/javascript" src="<?php if(isset($THEME)){ echo $THEME; } ?>/js/jquery.functions.js"></script>
<script type="text/javascript" src="<?php if(isset($THEME)){ echo $THEME; } ?>/js/cufon.js"></script>
<script type="text/javascript" src="<?php if(isset($THEME)){ echo $THEME; } ?>/js/js.js"></script>

<link rel="icon" href="<?php if(isset($THEME)){ echo $THEME; } ?>/images/favicon.png" type="image/x-icon" />

</head>
<body>
<!-- BEGIN LAYOUT -->
<div id="conteiner">
  <!-- BEGIN HEADER -->
  <div id="header">
  
  	<div class="topmenu">
    	<div class="topmenu_l">
        	<div class="topmenu_r">
                <ul>
					<?php if($is_logged_in): ?>
					<li class="first"><?php echo lang ('lang_logged_in_as'); ?> <b><?php if(isset($username)){ echo $username; } ?></b></li>
					<li><a href="<?php echo site_url ('user_support'); ?>">Поддержка пользователей</a></li>
					<li><a href="<?php echo site_url ('auth/logout'); ?>"><?php echo lang ('lang_logout'); ?></a></li>
					<?php else:?>
                    <li class="first"><a href="<?php echo site_url ('auth/login'); ?>">Вход</a></li>
                    <li><a href="<?php echo site_url ('auth/register'); ?>">Регистрация</a></li>
					<?php endif; ?>
                </ul>
          	</div>
        </div>    
    </div>
    
    <div class="left">
      <!-- BEGIN LOGO -->
      <div id="logo"><a href="<?php echo site_url (''); ?>"><img src="<?php if(isset($THEME)){ echo $THEME; } ?>/images/logo.png" alt="logo" border="0"/></a></div>
      <!-- BEGIN SLOGAN -->
      <div id="slogan">Наша компания бесспорно лучшая в галактике!</div>
    </div>
    <div class="right">
    	Тел. (097) 772-22-22<br />Тел. моб. (097) 772-22-22
    </div>
    <div class="sp"></div>
  </div>
  <!-- END HEADER -->
  
  <!-- BEGIN NAVIGATION -->
  <div id="navigation">
    <?php echo load_menu ('main_menu'); ?>
    <!-- BEGIN SEARCH 
    <div id="search">
      <form action="#">
        <input type="submit" class="submit" value=""/>
        <input type="text" class="text"/>
      </form>
    </div> -->
  </div>
  <div id="main">
  
  <?php if($page_type == 'main'): ?>
    <!-- BEGIN SLIDESHOW -->
    <div id="slideshow">
      <ul id="slides">
        <li><a href="#"><img src="<?php if(isset($THEME)){ echo $THEME; } ?>/images/robot1.jpg" alt="" width="922" height="287" /></a></li>
        <li><a href="#"><img src="<?php if(isset($THEME)){ echo $THEME; } ?>/images/robot2.jpg" alt=""  width="922" height="287" /></a></li>
        <li><a href="#"><img src="<?php if(isset($THEME)){ echo $THEME; } ?>/images/robot3.jpg" alt=""  width="922" height="287" /></a></li>
        <li><a href="#"><img src="<?php if(isset($THEME)){ echo $THEME; } ?>/images/robot4.jpg" alt="" width="922" height="287" /></a></li>
      </ul>
      <div id="slideshow_violator" class="clearfix">
        <div id="slide_navigation" class="clearfix"></div>
      </div>
    </div>
    <!-- END SLIDESHOW -->
   <?php endif; ?>
    
    <!-- BEGIN CONTEINER -->
<?php if($CI->uri->segment(1) != 'feedback' && $CI->uri->segment(1) != 'gallery'): ?>
	<div id="content"><?php if(isset($content)){ echo $content; } ?></div>
<?php else:?>
	<div id="no_sidebar_content"><?php if(isset($content)){ echo $content; } ?></div>
<?php endif; ?>    

    <!-- END CONTENT -->
    
    
    <?php if($CI->uri->segment(1) != 'feedback' && $CI->uri->segment(1) != 'gallery'): ?>
    
    <?php if($category['id']  == 59 ||  $category['parent_id']  == 59): ?>
    
    
    <!-- START SIDEBAR -->
    <div id="sidebar">
    
    	
         <div class="content">
            <div id="search">
              <form action="<?php echo site_url ('search'); ?>" method="POST">
                <input type="submit" class="submit" value=""/>
                <input type="text" class="text" name="text" value="Поиск" onfocus="if(this.value=='Поиск') this.value='';" onblur="if(this.value=='') this.value='Поиск';"/>
              <?php echo form_csrf (); ?>
			  </form>
            </div> 
        </div>
    
      <div class="box">
        <h4 class="title"><span>Категории</span></h4>
        <div class="content">
        	<ul>
          <?php $sub_cats = get_sub_categories('59')?>
          <?php $count = 0?>
          <?php if(is_true_array($sub_cats)){ foreach ($sub_cats as $sub_cat){ ?>
          		<li <?php if($count == 0): ?> class="first" <?php endif; ?>><a href="<?php echo site_url ('bloh/'.  $sub_cat['url'] ); ?>" <?php if($sub_cat['id']  ==  $category['id']): ?> class="active" <?php endif; ?>><?php echo $sub_cat['name']; ?></a></li>
          <?php $count++?> 
          <?php }} ?>
          	</ul>
        </div>
      </div>
    
      <div class="box">
        <h4 class="title"><span>Последние комментарии</span></h4>
        <div class="content">
          <?php echo widget ('comments '); ?>
        </div>
      </div>
      
      
      <div class="box">
        <h4 class="title"><span>Облако Тегов</span></h4>
        <div class="content">
			<div>
				<?php echo widget ('tags'); ?>
			</div>
        </div>
      </div>


	<div class="box"><a href="/rss" class="button1">Подписаться на блог</a></div>
    </div>
    <!-- END SIDEBAR -->
    
    <?php elseif ( $category['id']  == 55 ): ?>
    
    <div id="sidebar">
      <div class="box">
        <h4 class="title"><span>Продукция</span></h4>
        <div class="content">
          <?php echo widget ('product_all'); ?>
        </div>
      </div>
    </div>
    
    <?php elseif ( $category['id']  == 56 ): ?>
    
    <div id="sidebar">
      <div class="box">
        <h4 class="title"><span>Услуги</span></h4>
        <div class="content">
          <?php echo widget ('offers_all'); ?>
        </div>
      </div>
    </div>
    
    
    <?php elseif ( $category['id']  == 58 ): ?>
    
    <div id="sidebar">
      <div class="box">
        <h4 class="title"><span>Вакансии</span></h4>
        <div class="content">
          <?php echo widget ('works'); ?>
        </div>
      </div>
    </div>
    
    
    <?php elseif ( $category['id']  == 57 ): ?>
    
    <div id="sidebar">
      <div class="box">
        <h4 class="title"><span>Галерея</span></h4>
        <div class="content">
          <?php echo widget ('rand_images'); ?>
        </div>
      </div>
    </div>
    
    
    <?php else:?>
    
    <!-- START SIDEBAR -->
    <div id="sidebar">
      <div class="box">
        <h4 class="title"><span>Новости компании</span></h4>
        <div class="content">
          <?php echo widget ('news'); ?>
        </div>
      </div>
      <div class="box">
        <h4 class="title"><span>Последнее из блога</span></h4>
        <div class="content">
         	<?php echo widget ('blog'); ?>
        </div>
      </div>
		<div class="box"><a href="/rss" class="button1">Подписаться на блог</a></div>
    </div>
    <!-- END SIDEBAR -->
    
    <?php endif; ?>
    
    
    <?php endif; ?>
    
    
    
    
    
    <div class="sp"></div>
  </div>
  <div class="sp"></div>
</div>
<!-- BEGIN FOOTER -->
<div id="footer">
  <div class="left">© 2012  <strong>Image Robotics</strong> - лидер в производстве роботов<br/>
    <div class="credits">Powered by <a href="http://www.imagecms.net">ImageCms</a></div>
  </div>
  <?php echo load_menu ('bottom_menu'); ?>
  <div class="sp"></div>
</div>
<!-- END FOOTER -->
</body>
</html><?php $mabilis_ttl=1351619549; $mabilis_last_modified=1346759316; //C:\www\simpla.loc\www\/templates/default/main.tpl ?>