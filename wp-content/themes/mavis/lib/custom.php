<?php
/**
* Redirect
*/
function mavis_init ( )
{
	$host_url = $_SERVER[ HTTP_HOST ] . '/' ;
	$full_url = $_SERVER[ HTTP_HOST ] . $_SERVER[ REQUEST_URI ] ;

	if ( $_SERVER[ REQUEST_METHOD ] == 'GET' && $full_url != $host_url )
	{
		if ( ! is_admin( ) && @$GLOBALS[ 'pagenow' ] != 'wp-login.php' )
		{
			$page = str_replace( '/' , '' , $_SERVER[ REQUEST_URI ] ) ;

			if ( get_page_by_path( $page ) )
			{
				header( 'Location: http://' . $host_url . '#' . $_SERVER[ REQUEST_URI ] ) ;
				exit ;
			}
		}
	}
}

add_action( 'init' , 'mavis_init' ) ;

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
wp_register_script( 'easing' , get_stylesheet_directory_uri( ) . '/assets/js/vendor/easing/jquery.easing-1.3.min.js' , array( 'jquery' ) , null , false ) ;
wp_register_script( 'viewport' , get_stylesheet_directory_uri( ) . '/assets/js/plugins/viewport/jquery.viewport.min.js' , array( 'jquery' ) , null , true ) ;
wp_register_script( 'flexslider' , get_stylesheet_directory_uri( ) . '/assets/js/plugins/flexslider/jquery.flexslider-min.js' , array( 'jquery' ) , null , true ) ;
wp_register_script( 'mavis_scripts' , get_stylesheet_directory_uri( ) . '/assets/js/scripts.min.js' , array( 'jquery' , 'flexslider' ) , null , true ) ;

wp_enqueue_script( 'easing' ) ;
wp_enqueue_script( 'viewport' ) ;
wp_enqueue_script( 'flexslider' ) ;
wp_enqueue_script( 'mavis_scripts' ) ;