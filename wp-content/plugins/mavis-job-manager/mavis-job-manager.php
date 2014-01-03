<?php

/*
Plugin Name: Mavis Job Manager
Plugin URI: hellomavis.com
Description: Extends the functionality of WP Job Manager for the Mavis website.
Version: 1.0
Author: Robert Sargent
Author URI: http://www.robertsargent.co.uk
License: GPL2
*/

if ( ! defined( 'ABSPATH' ) )
	exit ;

/**
 * Mavis_Job_Manager class.
 */
class Mavis_Job_Manager {

	/**
	 * __construct function.
	 */
	public function __construct ( )
	{
		define( 'MAVIS_JOB_MANAGER_VERSION' , '1.0.0' ) ;
		define( 'MAVIS_JOB_MANAGER_PLUGIN_URL', untrailingslashit( plugins_url( basename( plugin_dir_path( __FILE__ ) ) , basename( __FILE__ ) ) ) ) ;

		if ( is_admin( ) )
			include( 'includes/admin/class-mavis-job-manager-admin.php' ) ;

		add_action( 'wp_enqueue_scripts' , array( $this , 'frontend_scripts' ) ) ;
	}

	/**
	 * frontend_scripts function.
	 *
	 * @access public
	 * @return void
	 */
	public function frontend_scripts ( )
	{
		wp_register_script( 'mavis-job-manager-ajax-filters' , MAVIS_JOB_MANAGER_PLUGIN_URL . '/assets/js/ajax-filters.js', array( 'jquery' ) , MAVIS_JOB_MANAGER_VERSION , true ) ;

		wp_enqueue_style( 'mavis-job-manager-frontend' , MAVIS_JOB_MANAGER_PLUGIN_URL . '/assets/css/frontend.css' ) ;
	}
}

$GLOBALS[ 'mavis_job_manager' ] = new Mavis_Job_Manager( ) ;