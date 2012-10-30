{foreach $recent_news as $item}

 {$page=get_page($item.id)}
        {$item = $CI->load->module('cfcm')->connect_fields($item, 'page')}
<div class="top-views" onclick="location.href='/{$item.full_url}';">
    <img src="{media_url($item.field_image)}" border="0" alt="image" width="90" class="pull_left"/>
    <p>{$item.title}</p>
   <img src="/templates/default/images/eye.ico" alt=""/> <b><span class="page_showed">{$page.showed}</span></b></div>

{/foreach}


