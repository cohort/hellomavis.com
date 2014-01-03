<?php

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

class Mavis_Job_Manager_Writepanels
{
	/**
	 * __construct function.
	 *
	 * @access public
	 * @return void
	 */
	public function __construct( )
	{
		add_action( 'job_manager_job_listing_data_fields' , array( $this , 'job_listing_fields' ) ) ;
	}

	/**
	 * job_listing_fields function.
	 *
	 * @access public
	 * @return void
	 */
	public function job_listing_fields ( )
	{
		return array(
			'_job_location' => array(
				'label' => __( 'Job location' , 'job_manager' ) ,
				'placeholder' => __( 'e.g. "London, UK", "New York", "Houston, TX"' , 'job_manager' )
			) ,
			'_job_salary' => array(
				'label' => __( 'Salary' , 'job_manager' ) ,
				'placeholder' => __( 'e.g. £40,000' , 'job_manager' ) ,
				'description' => __( 'Leave this blank if the job has a Day Rate.' , 'job_manager' )
			) ,
			'_job_day_rate' => array(
				'label' => __( 'Day Rate' , 'job_manager' ) ,
				'placeholder' => __( 'e.g. £350' , 'job_manager' ) ,
				'description' => __( 'Leave this blank if the job has a Salary.' , 'job_manager' )
			) ,
			'_filled' => array(
				'label' => __( 'Position filled?' , 'job_manager' ) ,
				'type'  => 'checkbox'
			) ,
			'_featured' => array(
				'label' => __( 'Feature this job listing?' , 'job_manager' ) ,
				'type'  => 'checkbox' ,
				'description' => __( 'Featured listings will be sticky during searches, and can be styled differently.' , 'job_manager' )
			) ,
			'_job_expires' => array(
				'label'       => __( 'Job Expires' , 'job_manager' ) ,
				'placeholder' => __( 'yyyy-mm-dd' , 'job_manager' )
			)
		) ;
	}
}

new Mavis_Job_Manager_Writepanels( ) ;