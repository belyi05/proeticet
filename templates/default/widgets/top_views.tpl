{foreach $recent_news as $item}

 {$page=get_page($item.id)}
        {$item = $CI->load->module('cfcm')->connect_fields($item, 'page')}
<div class="fact" onclick="location.href='/{$item.full_url}';">
    <img src="{media_url($item.field_image)}" border="0" alt="image" width="90" />
    <span>{$item.title}</span><br><br>
    Просмотров: <b>{$page.showed}</b></div>

{/foreach}


