<form action="{$BASE_URL}admin/components/cp/user_manager/save/{$id}" method="post" id="groups_edit_form" style="width:100%;">
	<div class="form_text">{lang('amt_tname')}:</div>
	<div class="form_input"><input type="text" name="alt_name" id="alt_name" value="{$alt_name}" class="textbox_short" /></div>
	<div class="form_overflow"></div>

	<div class="form_text">{lang('amt_identif')}:</div>
	<div class="form_input"><input type="text" name="name" value="{$name}" id="name" class="textbox_short" /> <h5>({lang('amt_identif')})</h5></div>
	<div class="form_overflow"></div>

	<div class="form_text">{lang('amt_description')}:</div>
	<div class="form_input">
	<textarea id="desc" name="desc" class="textearea">{$desc}</textarea>
	</div>
	<div class="form_overflow"></div>

	<div class="form_text"></div>
	<div class="form_input"><input type="submit" name="button" class="button"  value="{lang('amt_save')}" onclick="ajax_me('groups_edit_form');" /></div>
	<div class="form_overflow"></div>
{form_csrf()}</form>
