{literal}
<style>
#rating {padding:10px;}
#up_rate,#down_rate {cursor:pointer}
#rate {font-size:18px; font-weight:bold;}
</style>
{/literal}

<script type="text/javascript" src="{site_url('application/modules/rating')}/templates/js/rating.js"></script>

<div id="rating">
<img src="{site_url('application/modules/rating')}/templates/img/thumbs_down.gif" title="Плохо" alt="Плохо" id="down_rate" /> <span id="rate"></span> <img src="{site_url('application/modules/rating')}/templates/img/thumbs_up.gif" title="Хорошо" alt="Хорошо" id="up_rate" /> 
</div>
