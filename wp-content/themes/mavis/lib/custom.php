<?php
/**
 * Custom functions
 */
add_theme_support( 'custom-header' ) ;

/**
 * Remove admin menus
 */
function mavis_remove_menus ( )
{
	remove_menu_page( 'edit.php' ) ;
	remove_menu_page( 'edit-comments.php' ) ;
}

add_action( 'admin_menu' , 'mavis_remove_menus' ) ;

/**
 * Add theme CSS
 */
wp_enqueue_style( 'flexslider' , get_stylesheet_directory_uri( ) . '/assets/css/plugins/flexslider/flexslider.css' ) ;
wp_enqueue_style( 'mavis_main' , get_stylesheet_directory_uri( ) . '/assets/css/main.css' , array( 'roots_main' , 'flexslider' ) ) ;

/**
 * Add theme JS
 */
wp_register_script( 'flexslider' , get_stylesheet_directory_uri( ) . '/assets/js/plugins/flexslider/jquery.flexslider-min.js' , array( 'jquery' ) , null , true ) ;
wp_register_script( 'mavis_scripts' , get_stylesheet_directory_uri( ) . '/assets/js/scripts.min.js' , array( 'jquery' , 'flexslider' ) , null , true ) ;

wp_enqueue_script( 'flexslider' ) ;
wp_enqueue_script( 'mavis_scripts' ) ;

/**
 * Add and remove body_class() classes
 */
function mavis_body_class ( $classes )
{
	// $classes[ ] = 'hidden' ;
	return $classes;
}
add_filter( 'body_class' , 'mavis_body_class' ) ;