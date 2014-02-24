<?php

/*
Plugin Name: Mavis People
Plugin URI: http://www.hellomavis.com
Description: Creates a "People" custom post type.
Version: 1.0
Author: Robert Sargent
Author URI: http://www.robertsargent.co.uk
License: GPL2
*/

/*
* Create people post type.
*/
function people_create_post_type ( )
{
	$args = array(
		'labels' => array(
			'name' => __( 'People' ) ,
			'singular_name' => __( 'Person' )
		) ,
		'public' => true ,
		'taxonomies' => array( 'people_role' ) ,
		'rewrite' => array( 'slug' => 'people' ) ,
		'has_archive' => true ,
		'menu_icon' => plugins_url( 'images/icon-16.png' , __FILE__ ) ,
		'supports' => array( 'title' , 'editor' , 'excerpt' , 'thumbnail' )
	  ) ;

	register_post_type( 'people' , $args ) ;
}

add_action( 'init' , 'people_create_post_type' ) ;

/*
* Create people edit columns.
*/
function people_edit_columns ( $columns )
{  
	$columns = array(  
		'cb' => '<input type=\'checkbox\' />' ,
		'title' => 'Title'
	) ;

	return $columns ;  
}

add_filter( 'manage_edit-people_columns' , 'people_edit_columns' ) ;

/*
* Filter people edit columns.
*/
function people_custom_columns ( $column )
{
	global $post ;

	switch ( $column )
	{
		case 'type' :
			the_taxonomies( ) ;
			break ;
	}
}

add_action( 'manage_posts_custom_column' ,  'people_custom_columns' ) ;

/*
* Register people shortcode.
*/
function people_shortcode ( $args )
{
	$posts = get_posts(
		array(
			'post_type' => 'people' ,
			'people_type' => $types ,
			'posts_per_page' => 9999
		)
	) ;

	if ( $posts && count( $posts ) > 0 )
	{
		$content = '' ;
		$content .= '<ul class="people">' ;

		foreach ( $posts as $post )
		{
			$thumbnail = get_the_post_thumbnail( $post->ID , 'full' ) ;
			if ( $thumbnail == '' )
			{
				$thumbnail = '<img src="' . plugins_url( 'images/placeholder.png' , __FILE__ ) . '" alt="Placeholder" />' ;
			}

			$content .= '<li class="people">' ;
			$content .= '<div class="people-thumbnail">' . $thumbnail . '</div>' ;
			$content .= '<div class="people-overlay">' ;
			$content .= '<div class="people-background"></div>' ;
			$content .= '<div class="people-content">' ;
			$content .= '<h4 class="people-title">' . $post->post_title . '</h4>' ;
			$content .= '<div class="people-blurb">' . $post->post_excerpt . '</div>' ;
			$content .= '</div>' ;

			if ( $post->post_content )
			{
				$names = explode( ' ' , $post->post_title ) ;
				$content .=	'<div class="people-link"><a href="' . get_permalink( $post->ID ) . '" title="Read more">More on ' . $names[ 0 ] . '</a></div>' ;
			}

			$content .= '</div>' ;
			$content .= '</li>' ;
		}

		$content .= '</ul>' ;
		$content .= '<div class="clear"></div>' ;
	}

	return $content ;
}

add_shortcode( 'people' , 'people_shortcode' ) ;