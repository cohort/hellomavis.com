<?php

if ( ! defined( 'ABSPATH' ) ) exit ; // Exit if accessed directly

/**
 * Mavis_Job_Manager_Install
 */
class Mavis_Job_Manager_Install
{
	/**
	 * __construct function.
	 *
	 * @access public
	 * @return void
	 */
	public function __construct ( )
	{
		$this->init_user_roles( ) ;
	}

	/**
	 * Init user roles
	 *
	 * @access public
	 * @return void
	 */
	public function init_user_roles ( )
	{
		global $wp_roles ;

		if ( class_exists( 'WP_Roles' ) && ! isset( $wp_roles ) )
			$wp_roles = new WP_Roles( ) ;

		if ( is_object( $wp_roles ) )
		{
			$wp_roles->add_cap( 'editor' , 'manage_job_listings' ) ;
		}
	}
}

new Mavis_Job_Manager_Install( ) ;