<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Rating extends MY_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->module('core');
	}
	
	public function index()
	{
		$this->core->error_404();
	}
	
	public function up() {
		$user_ip = $this->input->ip_address();
		if(count($_GET) > 0) {
		$param = array('user_ip'=>$user_ip,'page_url'=>$_GET['page_url']);
		$ip_ban = $this->db->select('user_ip')->where($param)->get('rating')->result();
			if(count($ip_ban)>0) {
				return 3;
				} else {
			$data = array(
				'page_url' => $_GET['page_url'],
				'user_ip' => $user_ip,
				'rating' => '1'
			);
				if($this->db->insert('rating',$data)) {		
					return 1;
				} else {
					return 0;
				}
			}
		} else {
			$this->core->error_404();
		}
	}
	
	public function down() {
		$user_ip = $this->input->ip_address();
		if(count($_GET) > 0) {
		$param = array('user_ip'=>$user_ip,'page_url'=>$_GET['page_url']);
		$ip_ban = $this->db->select('user_ip')->where($param)->get('rating')->result();
		if(count($ip_ban)>0) {
				return 3;
				} else {
		$data = array(
				'page_url' => $_GET['page_url'],
				'user_ip' => $user_ip,
				'rating' => '-1'
			);
		if($this->db->insert('rating',$data)) {		
			return 1;
		} else {
			return 0;
		}
		}
		} else {
			$this->core->error_404();
		}
	}
	
	public function show() {
		if(count($_GET) > 0) {
		$fi = $this->db->select('rating')->where('page_url',$_GET['page_url'])->get('rating')->result();
		foreach($fi as $ok) {
			$ko = $ko + $ok->rating;
		}
		return $ko;
		} else {
			$this->core->error_404();
		}
	}

    public function _install()
    {
        
    	if( $this->dx_auth->is_admin() == FALSE) exit;

        $this->load->dbforge();

        $fields = array(
            'id' => array(
                         'type' => 'INT',
                         'constraint' => 11,
                         'auto_increment' => TRUE,
                     ),
            'page_url' => array(
                         'type' => 'VARCHAR',
						 'constraint' => 255,
                     ),
			'user_ip' => array(
                         'type' => 'CHAR',
						 'constraint' => 16,
                     ),
			'rating' => array(
                         'type' => 'INT',
                         'constraint' => 2,
                     )
                 );
        
        $this->dbforge->add_key('id', TRUE);
        $this->dbforge->add_field($fields);
        $this->dbforge->create_table('rating', TRUE);

        $this->db->where('name', 'rating');
        $this->db->update('components', array('autoload' => '1','enabled'=>'1'));
        
    }

    // Delete module
    public function _deinstall()
    {
        
       	if( $this->dx_auth->is_admin() == FALSE) exit;
    
        $this->load->dbforge();
        $this->dbforge->drop_table('rating');
        
    }

   //Display template file
	private function display_tpl($file = '')
	{
        $file = realpath(dirname(__FILE__)).'/templates/public/'.$file;  
		$this->template->show('file:'.$file);
	}

    /**
     * Fetch template file
     */ 
	private function fetch_tpl($file = '')
	{
        $file = realpath(dirname(__FILE__)).'/templates/public/'.$file.'.tpl';  
		return $this->template->fetch('file:'.$file);
	}


}

/* End of file sample_module.php */
