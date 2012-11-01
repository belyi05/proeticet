<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Rating_Widgets extends MY_Controller {

   	public function __construct()
	{
		parent::__construct();
    } 
	
    public function rate_show($widget = array())
    {
		return $this->template->fetch('widgets/'.$widget['name']); 
    }

}
