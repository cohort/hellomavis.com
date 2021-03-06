<?php

if ( ! defined( 'ABSPATH' ) ) exit ; // Exit if accessed directly

/**
 * Mavis_Job_Manager_Shortcodes class.
 */
class Mavis_Job_Manager_Shortcodes
{
	/**
	 * __construct function.
	 *
	 * @access public
	 * @return void
	 */
	public function __construct ( )
	{
		add_shortcode( 'latest_job' , array( $this , 'output_latest_job' ) ) ;
	}

	/**
	 * output_latest_job function.
	 *
	 * @access public
	 * @return string
	 */
	public function output_latest_job ( )
	{
		$args = array(
			'post_type'   => 'job_listing' ,
			'post_status' => 'publish' ,
			'showposts' => 1
		) ;

		ob_start( ) ;

		$jobs = new WP_Query( $args ) ;

		if ( $jobs->have_posts( ) ) : $jobs->the_post( ) ; ?>

			<div class="inner">
				<h1><?php the_title( ) ; ?></h1>
				<ul class="details">
					<li><?php the_field( '_job_location' , $post->ID ) ; ?>,</li>
					<?php if ( get_field( '_job_salary' , $post->ID ) ) : ?>
					<li>Salary: <?php the_field( '_job_salary' , $post->ID ) ; ?></li>
					<?php elseif ( get_field( '_job_day_rate' , $post->ID ) ) : ?>
					<li>Day Rate: <?php the_field( '_job_day_rate' , $post->ID ) ; ?></li>
				</ul>
				<?php endif ; ?>
			</div>

		<?php endif ;

		return '<div class="latest-job-box">' . ob_get_clean( ) . '</div>' ;
	}	
}

new Mavis_Job_Manager_Shortcodes( ) ;