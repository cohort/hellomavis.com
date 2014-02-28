<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

if ( isset( $_SERVER[ 'PLATFORM' ] ) )
{
	switch ( $_SERVER[ 'PLATFORM' ] )
	{
		case 'PAGODA' :
			define( 'ENVIRONMENT' , 'pagoda' ) ;
			break ;
	}
}
else
{
	define( 'ENVIRONMENT' , 'development' ) ;
}

switch ( ENVIRONMENT )
{
	case 'pagoda' :
		// ** MySQL settings - You can get this info from your web host ** //
		/** The name of the database for WordPress */
		define('DB_NAME', $_SERVER["DB1_NAME"] );

		/** MySQL database username */
		define('DB_USER', $_SERVER["DB1_USER"] );

		/** MySQL database password */
		define('DB_PASSWORD', $_SERVER["DB1_PASS"] );

		/** MySQL hostname */
		define('DB_HOST', $_SERVER["DB1_HOST"] . ':' . $_SERVER["DB1_PORT"] );		
		break ;

	case 'development' :
	default :
		// ** MySQL settings - You can get this info from your web host ** //
		/** The name of the database for WordPress */
		define('DB_NAME', 'wp_hellomavis');

		/** MySQL database username */
		define('DB_USER', 'root');

		/** MySQL database password */
		define('DB_PASSWORD', 'root');

		/** MySQL hostname */
		define('DB_HOST', 'localhost:3306');
		break ;
}

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'lo|(,,4y~,>2!/kz+;5Eu=^NMxv$mkf3#iRuGfr>ckunUo,Wt$yFJMiQar,%[$S)');
define('SECURE_AUTH_KEY',  '+b?(Ky=?|f|-- yG]kx|-?FJ@`TEvE}In.3h8!Cb+FWoy@4%AFQQ%xE|-G+~WYqy');
define('LOGGED_IN_KEY',    '0*29v^Yab:!^.sijo@{^J9Cle.RED,zA]`Vv(_KM21Y(Y*X[?}f[7>-MhKa&c_%^');
define('NONCE_KEY',        'K^Dr&6.,|OX_5jW)S_V*Yq0mm,xMHvlL%_5r7|0h/J@(-A*_pKmRf2;CO*K<n&UT');
define('AUTH_SALT',        '~XUtV(PTm^^K|3Fv1+=<EH+}ayB7jbq092 sX.Gm+0I~zw& ?5-!DZsZt<Z>p}3P');
define('SECURE_AUTH_SALT', '69eITM*GtOtpSH|pEh#t@<YgT]Kru~5CBKv8I*(V@*ItWmMYf,Z,}t|[4C+,[%Bq');
define('LOGGED_IN_SALT',   'rb5c[gy+g`fBSS2;nJI$zWuM.!aFb%_y0[1kbSo:x><{g.{B7uM|PLmc/P0:o+~A');
define('NONCE_SALT',       '~X39,B@=,bfP,0-hg+8WM*xQmJVZmn*hf@gqWeRIlyrc[E29jOd2Y/4kTdW+J<~i');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

/** Set media uploads folder */
define( 'UPLOADS', '/media/' );
