<div id="index_table_">
<ul>
    {$cats = category_list_()}
    {foreach $cats as $cat}
    {$count_ = 0}
    {if !$cat.parent_id}
    <li>
    <a href="{$cat.url}"
    {if $cat.id == $category.id} class="active" {/if}>
    <img src="{site_url()}{$cat.image}" alt="" />
        <p>{$cat.name}</p>
</a>
        </li>{/if}

        {/foreach}
</ul>
        </div>