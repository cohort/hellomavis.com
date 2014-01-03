<?php

if ( ! defined( 'ABSPATH' ) ) exit ; // Exit if accessed directly

/**
 * Mavis_Job_Manager_Admin class.
 */
class Mavis_Job_Manager_Admin
{
	/**
	 * __construct function.
	 *
	 * @access public
	 * @return void
	 */
	public function __construct ( )
	{
		include_once( 'class-mavis-job-manager-writepanels.php' ) ;
	}
}

new Mavis_Job_Manager_Admin( ) ;