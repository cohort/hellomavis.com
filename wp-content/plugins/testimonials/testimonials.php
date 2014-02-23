<?php

/*
Plugin Name: Testimonials
Plugin URI: 
Description: Creates a "Testimonials" custom post type.
Version: 1.0
Author: Robert Sargent
Author URI: http://www.robertsargent.co.uk
License: GPL2
*/

/*
* Create testimonials post type.
*/
function testimonials_create_post_type ( )
{
	$args = array(
		'labels' => array(
			'name' => __( 'Testimonials' ) ,
			'singular_name' => __( 'Testimonial' )
		) ,
		'public' => true ,
		'taxonomies' => array( 'testimonials_role' ) ,
		'rewrite' => array( 'slug' => 'testimonials' ) ,
		'has_archive' => true ,
		'supports' => array( 'title' , 'editor' )
	  ) ;

	register_post_type( 'testimonials' , $args ) ;
}

add_action( 'init' , 'testimonials_create_post_type' ) ;

/*
* Create testimonials edit columns.
*/
function testimonials_edit_columns ( $columns )
{  
	$columns = array(  
		'cb' => '<input type=\'checkbox\' />' ,
		'title' => 'Title'
	) ;

	return $columns ;  
}

add_filter( 'manage_edit-testimonials_columns' , 'testimonials_edit_columns' ) ;

/*
* Filter testimonials edit columns.
*/
function testimonials_custom_columns ( $column )
{
	global $post ;

	switch ( $column )
	{
		case 'type' :
			the_taxonomies( ) ;
			break ;
	}
}

add_action( 'manage_posts_custom_column' ,  'testimonials_custom_columns' ) ;

/*
* Register random testimonial shortcode.
*/
function random_testimonial_shortcode ( $args )
{
	$posts = get_posts(
		array(
			'post_type' => 'testimonials' ,
			'testimonial_type' => $types ,
			'posts_per_page' => 9999
		)
	) ;

	$content = '<ul class="testimonials">' ;

	if ( $posts && count( $posts ) > 0 )
	{
		foreach ( $posts as $post )
		{
			$content .= '<li id="' . $post->ID . '">' ;
			$content .= '<blockquote>"' . $post->post_content . '"</blockquote>' ;
			$content .= '— ' . $post->post_title ;
			$content .= '</li>' ;
		}
	}

	$content .= '</ul>' ;

	return $content ;
}

add_shortcode( 'random_testimonial' , 'random_testimonial_shortcode' ) ;