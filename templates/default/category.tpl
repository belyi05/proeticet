

<h1>{$page.title}</h1>
        {widget('path')}

        {if $no_pages}
<p>{$no_pages}</p>
        {/if}
        {foreach $pages as $page}
        {widget('rating')}
<div class="post">
<h2><a href="{site_url($page.full_url)}">{$page.title}</a></h2>
        <span class="post-pub-info">

            Раздел: <a href="{site_url($page.cat_url)}">{get_category_name($page.category)}</a>
			{if $tags = page_tags($page.id)} | Теги: {foreach $tags as $tag}
               <a href="{site_url('tags/search/'.$tag.value)}">{$tag.value}</a>
            {/foreach}{/if}
        </span>

{$page.prev_text}

<div class="postinfo pull-right">
     <img src="http://shkolazhizni.ru/i/icons/ico_views.png" style="padding:0;" alt=""/>{$page.showed}
    <a href="{site_url($page.full_url)}">{lang('full_article')}</a>
</div>
<div class="clearfix"></div>
<div style="border-bottom:1px solid #ECECEC;">
    &nbsp;
</div>

</div>
        {/foreach}

<div class="pagination" align="center">
{$pagination}
</div>