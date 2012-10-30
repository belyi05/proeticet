<ul>
{$cats = category_list_()}
        {foreach $cats as $cat}

        {if !$cat.parent_id}
<li{if $cat.id == $page.category} class="active" {/if}>
<a href="{$cat.url}"
        {if $cat.id == $category.id} class="active" {/if}>{$cat.name}
        </a>
        </li>{/if}
        {/foreach}
        </ul>