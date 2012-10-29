<ul>
<?php $count = 0?>
<?php if(is_true_array($recent_news)){ foreach ($recent_news as $item){ ?>
            <li <?php if($count == 0): ?> class="first" <?php endif; ?>>
            	<a href="<?php echo site_url ( $item['full_url'] ); ?>"><em><?php echo date ('d.m.Y', $item['publish_date'] ); ?></em><?php echo $item['title']; ?></a>
            </li>     
<?php $count++?>            
<?php }} ?>
</ul>
<?php $mabilis_ttl=1351619504; $mabilis_last_modified=1346759316; //C:\www\simpla.loc\www\/templates/default/widgets/news.tpl ?>