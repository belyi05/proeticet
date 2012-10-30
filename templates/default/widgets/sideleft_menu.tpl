<div class="menu none_decoration">
<ul>
    {$cats = category_list_()}
    {foreach $cats as $cat}

    {//если это родительские категории, выводим их сразу}
    {if !$cat.parent_id}
    <li{if $cat.id == $page.category} class="active" {/if}>
    <a href="/{$cat.url}"{if $cat.id == $category.id} class="active" {/if}>{$cat.name}</a>
        </li>{/if}

        {//выводим список страниц текущей категории}
        {if $cat.id==$page.category}
        {$pages=category_pages($cat.id)}
<ul>

{ //подсвечиваем активную страницу}
{foreach $pages as $current_page}
<li {if $page.id == $current_page.id} class="active" {/if}>
{//текущая страница не является ссылкой}
{if $page.id != $current_page.id}
<a href="{$current_page.url}">{/if}
    {$current_page.title}
    { //текущая страница не является ссылкой}
    {if $page.id != $current_page.id}
</a>{/if}
</li>
        {/foreach}
        </ul>
        {/if}
        {//если у категории есть подкатегории, выводим их}
        {$n=$cat.id}
        {$sub_cats = get_sub_categories($n)}

<ul>

{foreach $sub_cats as $sub_cat}
<li><a href="/{get_category_url($sub_cat.parent_id)}/{$sub_cat.url}"
    {if $sub_cat.id == $category.id} class="active" {/if}>{$sub_cat.name}</a></li>

        {/foreach}
        </ul>

        {/foreach}
        </ul>

        </div>