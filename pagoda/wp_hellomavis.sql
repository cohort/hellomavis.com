-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 05, 2014 at 03:52 PM
-- Server version: 5.5.29
-- PHP Version: 5.4.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wp_hellomavis`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=291 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://hellomavis.local', 'yes'),
(2, 'blogname', 'Mavis', 'yes'),
(3, 'blogdescription', 'Mavis looks after talented creative people in the digital creative industry', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'webmaster@hellomavis.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '1', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'closed', 'yes'),
(19, 'default_ping_status', 'closed', 'yes'),
(20, 'default_pingback_flag', '', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:8:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:39:"column-shortcodes/column-shortcodes.php";i:3;s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:4;s:39:"mavis-job-manager/mavis-job-manager.php";i:5;s:17:"people/people.php";i:7;s:27:"wp-clean-up/wp-clean-up.php";i:8;s:33:"wp-job-manager/wp-job-manager.php";}', 'yes'),
(36, 'home', 'http://hellomavis.local', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:2:{i:0;s:77:"/Users/robertsargent/Sites/hellomavis.local/wp-content/themes/roots/style.css";i:1;s:0:"";}', 'no'),
(44, 'template', 'roots', 'yes'),
(45, 'stylesheet', 'mavis', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '26691', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:1:{s:61:"radio-buttons-for-taxonomies/radio-buttons-for-taxonomies.php";a:2:{i:0;s:28:"Radio_Buttons_for_Taxonomies";i:1;s:21:"delete_plugin_options";}}', 'no'),
(86, 'timezone_string', 'Europe/London', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '4', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '26691', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:19:"manage_job_listings";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:7:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:20:"widget_recent_jobs-2";}s:14:"sidebar-footer";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:6:{i:1388395017;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1388395025;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1388401232;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1388422519;a:1:{s:34:"job_manager_check_for_expired_jobs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1388431320;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(100, '_transient_doing_cron', '1388937097.5487680435180664062500', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.8";s:12:"last_checked";i:1388915947;}', 'yes'),
(102, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1388915955;s:7:"checked";a:8:{s:19:"akismet/akismet.php";s:5:"2.5.9";s:39:"column-shortcodes/column-shortcodes.php";s:5:"0.6.4";s:19:"jetpack/jetpack.php";s:3:"2.7";s:13:"jobs/jobs.php";s:3:"1.0";s:17:"people/people.php";s:3:"1.0";s:61:"radio-buttons-for-taxonomies/radio-buttons-for-taxonomies.php";s:5:"1.5.6";s:27:"wp-clean-up/wp-clean-up.php";s:5:"1.2.1";s:33:"wp-job-manager/wp-job-manager.php";s:5:"1.6.0";}s:8:"response";a:1:{s:19:"woodojo/woodojo.php";O:8:"stdClass":6:{s:2:"id";s:3:"466";s:4:"slug";s:7:"woodojo";s:11:"new_version";s:5:"1.5.4";s:3:"url";s:33:"http://www.woothemes.com/woodojo/";s:7:"package";s:61:"http://woodojo.s3.amazonaws.com/downloads/woodojo/woodojo.zip";s:14:"upgrade_notice";s:33:"Twitter API updates and bugfixes.";}}s:12:"translations";a:0:{}}', 'yes'),
(105, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1388915965;s:7:"checked";a:1:{s:5:"roots";s:5:"6.5.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(106, 'can_compress_scripts', '1', 'yes'),
(119, '_transient_timeout_plugin_slugs', '1388852064', 'no'),
(120, '_transient_plugin_slugs', 'a:9:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:39:"column-shortcodes/column-shortcodes.php";i:3;s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:4;s:39:"mavis-job-manager/mavis-job-manager.php";i:5;s:17:"people/people.php";i:6;s:37:"widgets-on-pages/widgets_on_pages.php";i:7;s:27:"wp-clean-up/wp-clean-up.php";i:8;s:33:"wp-job-manager/wp-job-manager.php";}', 'no'),
(121, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1388438277', 'no'),
(122, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://wordpress.org/news/2013/12/parker/'' title=''Version 3.8 of WordPress, named “Parker” in honor of Charlie Parker, bebop innovator, is available for download or update in your WordPress dashboard. We hope you’ll think this is the most beautiful update yet. Introducing a modern new design WordPress has gotten a facelift. 3.8 brings a fresh new look to the entire admin dashboard. […]''>WordPress 3.8 “Parker”</a> <span class="rss-date">December 12, 2013</span><div class=''rssSummary''>Version 3.8 of WordPress, named “Parker” in honor of Charlie Parker, bebop innovator, is available for download or update in your WordPress dashboard. We hope you’ll think this is the most beautiful update yet. Introducing a modern new design WordPress has gotten a facelift. 3.8 brings a fresh new look to the entire admin dashboard. […]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://wordpress.tv/2013/12/29/saurabh-shukla-wordpress-as-a-distributed-social-network/'' title=''    ''>WordPress.tv: Saurabh Shukla: WordPress As A Distributed Social Network</a></li><li><a class=''rsswidget'' href=''http://wordpress.tv/2013/12/29/lisa-sabin-wilson-scoping-projects-to-avoid-stress-headaches-and-angry-mobs/'' title=''    ''>WordPress.tv: Lisa Sabin-Wilson: Scoping Projects To Avoid Stress, Headaches And Angry Mobs</a></li><li><a class=''rsswidget'' href=''http://wordpress.tv/2013/12/28/carl-danley-and-eric-mann-wordpress-javascript-hooks/'' title=''    ''>WordPress.tv: Carl Danley and Eric Mann: WordPress Javascript Hooks</a></li></ul></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Popular Plugin:</span> <a href=''http://wordpress.org/plugins/captcha/'' class=''dashboard-news-plugin-link''>Captcha</a></h5>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=captcha&amp;_wpnonce=0c68f5a84c&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Captcha''>Install</a>)</span></li></ul></div>', 'no'),
(124, '_transient_twentyfourteen_category_count', '1', 'yes'),
(125, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1388395833;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(126, 'current_theme', 'Mavis', 'yes'),
(127, 'theme_mods_roots', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:18:"primary_navigation";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1388666126;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"sidebar-footer";a:0:{}}}}', 'yes'),
(128, 'theme_switched', '', 'yes'),
(144, '_transient_random_seed', '376cf8408633ba10ab0f1c808752ac41', 'yes'),
(151, 'recently_activated', 'a:6:{s:37:"widgets-on-pages/widgets_on_pages.php";i:1388765653;s:51:"repeatable-links-fields/repeatable-links-fields.php";i:1388762111;s:19:"woodojo/woodojo.php";i:1388424533;s:61:"radio-buttons-for-taxonomies/radio-buttons-for-taxonomies.php";i:1388423146;s:13:"jobs/jobs.php";i:1388422626;s:19:"jetpack/jetpack.php";i:1388422478;}', 'yes'),
(152, 'wordpress_api_key', 'fbc3dcaf34c0', 'yes'),
(153, 'akismet_discard_month', 'false', 'yes'),
(154, 'akismet_show_user_comments_approved', 'false', 'yes'),
(155, 'akismet_available_servers', 'a:4:{s:12:"66.135.58.61";b:1;s:12:"192.0.80.244";b:1;s:12:"66.135.58.62";b:1;s:12:"192.0.80.246";b:1;}', 'yes'),
(156, 'akismet_connectivity_time', '1388397456', 'yes'),
(157, 'people_type_children', 'a:0:{}', 'yes'),
(162, 'jetpack_activated', '1', 'yes'),
(163, 'jetpack_options', 'a:2:{s:7:"version";s:14:"2.7:1388402723";s:11:"old_version";s:14:"2.7:1388402723";}', 'yes'),
(164, 'jetpack_log', 'a:2:{i:0;a:4:{s:4:"time";i:1388402747;s:7:"user_id";i:1;s:7:"blog_id";b:0;s:4:"code";s:8:"register";}i:1;a:4:{s:4:"time";i:1388422428;s:7:"user_id";i:1;s:7:"blog_id";b:0;s:4:"code";s:8:"register";}}', 'no'),
(166, '_transient_timeout_jetpack_https_test', '1388489151', 'no'),
(167, '_transient_jetpack_https_test', '1', 'no'),
(168, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(176, 'jobs_type_children', 'a:0:{}', 'yes'),
(177, 'radio_button_for_taxonomies_options', 'a:1:{s:6:"delete";i:0;}', 'yes'),
(190, 'jetpack_holiday_snow_enabled', '', 'yes'),
(213, 'job_manager_installed_terms', '1', 'yes'),
(214, 'wp_job_manager_version', '1.6.0', 'yes'),
(216, 'job_manager_per_page', '5', 'yes'),
(217, 'job_manager_hide_filled_positions', '', 'yes'),
(218, 'job_manager_enable_categories', '1', 'yes'),
(219, 'job_manager_enable_registration', '', 'yes'),
(220, 'job_manager_user_requires_account', '1', 'yes'),
(221, 'job_manager_submission_requires_approval', '1', 'yes'),
(222, 'job_manager_submission_duration', '30', 'yes'),
(223, 'job_manager_submit_page_slug', '', 'yes'),
(229, 'job_listing_type_children', 'a:0:{}', 'yes'),
(236, 'job_listing_category_children', 'a:0:{}', 'yes'),
(245, 'woodojo-version', '1.5.4', 'yes'),
(246, '_transient_timeout_woodojo-settings', '1388467628', 'no'),
(247, '_transient_woodojo-settings', 'O:8:"stdClass":8:{s:14:"screenshot_url";s:46:"https://s3.amazonaws.com/woothemess3/woo_dojo/";s:7:"refresh";i:0;s:12:"checkout_url";s:55:"http://www.woothemes.com/payment/api_checkout_login.php";s:10:"product_id";i:466;s:19:"sidebars_product_id";i:464;s:3:"url";s:33:"http://www.woothemes.com/woodojo/";s:12:"download_url";s:61:"http://woodojo.s3.amazonaws.com/downloads/woodojo/woodojo.zip";s:24:"woosidebars_download_url";s:53:"http://downloads.wordpress.org/plugin/woosidebars.zip";}', 'no'),
(248, '_transient_timeout_woodojo-products', '1389029228', 'no'),
(249, '_transient_woodojo-products', 'a:10:{i:0;O:8:"stdClass":12:{s:10:"product_id";s:3:"464";s:5:"title";s:11:"WooSidebars";s:5:"price";s:4:"0.00";s:7:"is_free";s:1:"1";s:14:"version_number";s:5:"1.2.0";s:14:"version_update";s:76:"Fixed notices within WooCommerce integration and routine maintenance update.";s:17:"short_description";s:142:"WooSidebars adds functionality to display different widgets in a sidebar, according to a context (for example, a specific page or a category).";s:16:"long_description";s:142:"WooSidebars adds functionality to display different widgets in a sidebar, according to a context (for example, a specific page or a category).";s:4:"type";s:10:"standalone";s:14:"screenshot_url";s:80:"woosidebars/sidebars-1.jpg,woosidebars/sidebars-2.jpg,woosidebars/sidebars-3.jpg";s:9:"thumbnail";s:26:"woosidebars-screenshot.jpg";s:4:"slug";s:11:"woosidebars";}i:1;O:8:"stdClass":12:{s:10:"product_id";s:3:"465";s:5:"title";s:11:"WooCommerce";s:5:"price";s:4:"0.00";s:7:"is_free";s:1:"1";s:14:"version_number";s:5:"1.6.6";s:14:"version_update";s:0:"";s:17:"short_description";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:16:"long_description";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:4:"type";s:10:"standalone";s:14:"screenshot_url";s:41:"woocommerce/wc-2.jpg,woocommerce/wc-1.jpg";s:9:"thumbnail";s:26:"woocommerce-screenshot.jpg";s:4:"slug";s:11:"woocommerce";}i:2;O:8:"stdClass":12:{s:10:"product_id";s:3:"472";s:5:"title";s:13:"Dynamic Menus";s:5:"price";s:4:"0.00";s:7:"is_free";s:1:"1";s:14:"version_number";s:5:"1.0.5";s:14:"version_update";s:18:"Menu improvements.";s:17:"short_description";s:86:"Change which menu is displayed in each menu location for specific pages or blog posts.";s:16:"long_description";s:86:"Change which menu is displayed in each menu location for specific pages or blog posts.";s:4:"type";s:12:"downloadable";s:14:"screenshot_url";s:33:"dynamic-menus/dynamic_menus-1.png";s:9:"thumbnail";s:35:"woodojo-dynamicmenus-screenshot.png";s:4:"slug";s:21:"woodojo-dynamic-menus";}i:3;O:8:"stdClass":12:{s:10:"product_id";s:3:"473";s:5:"title";s:16:"Maintenance Mode";s:5:"price";s:4:"0.00";s:7:"is_free";s:1:"1";s:14:"version_number";s:5:"1.0.2";s:14:"version_update";s:15:"Initial launch.";s:17:"short_description";s:118:"Put your website into maintenance mode, with a clear notice message for your visitors, while you work on your website.";s:16:"long_description";s:118:"Put your website into maintenance mode, with a clear notice message for your visitors, while you work on your website.";s:4:"type";s:12:"downloadable";s:14:"screenshot_url";s:79:"maintenance-mode/maintenance_mode-2.png,maintenance-mode/maintenance_mode-1.png";s:9:"thumbnail";s:34:"woodojo-maintenance-screenshot.png";s:4:"slug";s:24:"woodojo-maintenance-mode";}i:4;O:8:"stdClass":12:{s:10:"product_id";s:3:"474";s:5:"title";s:10:"Launch Pad";s:5:"price";s:4:"0.00";s:7:"is_free";s:1:"1";s:14:"version_number";s:5:"1.0.1";s:14:"version_update";s:35:"Bug fixes, improved code standards.";s:17:"short_description";s:188:"Create a following while you develop your website, using a screen with links to your social profiles, a countdown timer and a newsletter signup form. Requires the Maintenance Mode feature.";s:16:"long_description";s:188:"Create a following while you develop your website, using a screen with links to your social profiles, a countdown timer and a newsletter signup form. Requires the Maintenance Mode feature.";s:4:"type";s:12:"downloadable";s:14:"screenshot_url";s:53:"launchpad/launch_pad-1.png,launchpad/launch_pad-2.png";s:9:"thumbnail";s:32:"woodojo-launchpad-screenshot.png";s:4:"slug";s:18:"woodojo-launch-pad";}i:5;O:8:"stdClass":12:{s:10:"product_id";s:3:"485";s:5:"title";s:21:"HTML Term Description";s:5:"price";s:4:"0.00";s:7:"is_free";s:1:"1";s:14:"version_number";s:5:"1.0.2";s:14:"version_update";s:39:"Rountine code clean-up and maintenance.";s:17:"short_description";s:98:"Add the ability to use HTML in term descriptions, as well as a visual editor to make input easier.";s:16:"long_description";s:98:"Add the ability to use HTML in term descriptions, as well as a visual editor to make input easier.";s:4:"type";s:7:"bundled";s:14:"screenshot_url";s:42:"htmltermdescription/term-description-1.png";s:9:"thumbnail";s:42:"woodojo-htmltermdescription-screenshot.png";s:4:"slug";s:29:"woodojo-html-term-description";}i:6;O:8:"stdClass":12:{s:10:"product_id";s:3:"493";s:5:"title";s:17:"Muso Widgets Pack";s:5:"price";s:4:"0.00";s:7:"is_free";s:1:"1";s:14:"version_number";s:5:"1.0.4";s:14:"version_update";s:21:"Security Enhancements";s:17:"short_description";s:112:"Add widgets for musicians and music lovers alike. Connect your WordPress installation to Last.fm and SoundCloud.";s:16:"long_description";s:112:"Add widgets for musicians and music lovers alike. Connect your WordPress installation to Last.fm and SoundCloud.";s:4:"type";s:12:"downloadable";s:14:"screenshot_url";s:102:"muso-widgets-pack/screenshot-soundcloud-player.png,muso-widgets-pack/screenshot-muso-pack-settings.png";s:9:"thumbnail";s:27:"thumb-muso-widgets-pack.png";s:4:"slug";s:25:"woodojo-muso-widgets-pack";}i:7;O:8:"stdClass":12:{s:10:"product_id";s:3:"494";s:5:"title";s:20:"InspirePay Donations";s:5:"price";s:4:"0.00";s:7:"is_free";s:1:"1";s:14:"version_number";s:5:"1.0.2";s:14:"version_update";s:39:"Rountine code clean-up and maintenance.";s:17:"short_description";s:108:"Easily add a donation form, using InspirePay, to your pages via a shortcode, or to your sidebar in a widget.";s:16:"long_description";s:108:"Easily add a donation form, using InspirePay, to your pages via a shortcode, or to your sidebar in a widget.";s:4:"type";s:10:"standalone";s:14:"screenshot_url";s:111:"inspirepay-donations/screenshot-inspirepay-settings.png,inspirepay-donations/screenshot-inspirepay-frontend.png";s:9:"thumbnail";s:30:"thumb-inspirepay-donations.png";s:4:"slug";s:28:"woodojo-inspirepay-donations";}i:8;O:8:"stdClass":12:{s:10:"product_id";s:3:"495";s:5:"title";s:12:"Tab Grouping";s:5:"price";s:4:"0.00";s:7:"is_free";s:1:"1";s:14:"version_number";s:5:"1.0.1";s:14:"version_update";s:39:"Rountine code clean-up and maintenance.";s:17:"short_description";s:93:"Create groups of tabs, with a custom tab order. Works with the bundled WooDojo - Tabs widget.";s:16:"long_description";s:93:"Create groups of tabs, with a custom tab order. Works with the bundled WooDojo - Tabs widget.";s:4:"type";s:7:"bundled";s:14:"screenshot_url";s:40:"tab-grouping/screenshot-tab-grouping.png";s:9:"thumbnail";s:22:"thumb-tab-grouping.png";s:4:"slug";s:20:"woodojo-tab-grouping";}i:9;O:8:"stdClass":12:{s:10:"product_id";s:3:"563";s:5:"title";s:40:"Sidebar Manager to WooSidebars Converter";s:5:"price";s:4:"0.00";s:7:"is_free";s:1:"1";s:14:"version_number";s:5:"1.1.0";s:14:"version_update";s:26:"UI and logic improvements.";s:17:"short_description";s:140:"Convert your custom sidebars in the WooFramework''s Sidebar Manager to Widget Areas in WooSidebars, with the appropriate conditions assigned.";s:16:"long_description";s:140:"Convert your custom sidebars in the WooFramework''s Sidebar Manager to Widget Areas in WooSidebars, with the appropriate conditions assigned.";s:4:"type";s:10:"standalone";s:14:"screenshot_url";s:0:"";s:9:"thumbnail";s:0:"";s:4:"slug";s:25:"woosidebars-sbm-converter";}}', 'no'),
(250, 'woodojo_closed_components', 'a:0:{}', 'yes'),
(258, 'people_role_children', 'a:0:{}', 'yes'),
(259, 'hicpo_options', 'a:1:{s:7:"objects";a:2:{i:0;s:4:"page";i:1;s:6:"people";}}', 'yes'),
(267, 'theme_mods_mavis', 'a:10:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:18:"primary_navigation";i:2;}s:16:"background_image";s:0:"";s:22:"background_image_thumb";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:6:"scroll";s:16:"background_color";s:0:"";s:12:"header_image";s:48:"http://hellomavis.local//media//2014/01/logo.png";s:17:"header_image_data";a:5:{s:13:"attachment_id";i:103;s:3:"url";s:48:"http://hellomavis.local//media//2014/01/logo.png";s:13:"thumbnail_url";s:48:"http://hellomavis.local//media//2014/01/logo.png";s:5:"width";i:248;s:6:"height";i:69;}}', 'yes'),
(278, 'rewrite_rules', 'a:103:{s:9:"people/?$";s:26:"index.php?post_type=people";s:39:"people/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=people&feed=$matches[1]";s:34:"people/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=people&feed=$matches[1]";s:26:"people/page/([0-9]{1,})/?$";s:44:"index.php?post_type=people&paged=$matches[1]";s:56:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:51:"category/(.+?)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:53:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:48:"tag/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:54:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:49:"type/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"people/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"people/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"people/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"people/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"people/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"people/([^/]+)/trackback/?$";s:33:"index.php?people=$matches[1]&tb=1";s:56:"people/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:45:"index.php?people=$matches[1]&feed=$matches[2]";s:51:"people/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:45:"index.php?people=$matches[1]&feed=$matches[2]";s:35:"people/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?people=$matches[1]&paged=$matches[2]";s:42:"people/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?people=$matches[1]&cpage=$matches[2]";s:27:"people/([^/]+)(/[0-9]+)?/?$";s:45:"index.php?people=$matches[1]&page=$matches[2]";s:23:"people/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"people/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"people/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"people/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"people/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"job/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"job/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"job/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"job/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"job/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:24:"job/([^/]+)/trackback/?$";s:38:"index.php?job_listing=$matches[1]&tb=1";s:32:"job/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?job_listing=$matches[1]&paged=$matches[2]";s:39:"job/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?job_listing=$matches[1]&cpage=$matches[2]";s:24:"job/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?job_listing=$matches[1]&page=$matches[2]";s:20:"job/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:"job/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"job/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"job/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"job/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:41:"feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:27:"index.php?&feed=$matches[1]";s:36:"(feed|rdf|rss|rss2|atom|job_feed)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:50:"comments/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:45:"comments/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:53:"search/(.+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:48:"search/(.+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:56:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:51:"author/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:78:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:73:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:65:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:60:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:52:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:47:"([0-9]{4})/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:49:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:44:"(.?.+?)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:49:"([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:44:"([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(283, 'acf_version', '4.3.2', 'yes'),
(284, 'widget_widget_recent_jobs', 'a:2:{i:2;a:2:{s:5:"title";s:10:"Latest Job";s:6:"number";s:1:"1";}s:12:"_multiwidget";i:1;}', 'yes'),
(287, '_site_transient_timeout_theme_roots', '1388917765', 'yes'),
(288, '_site_transient_theme_roots', 'a:2:{s:5:"mavis";s:7:"/themes";s:5:"roots";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=571 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(10, 7, '_menu_item_type', 'post_type'),
(11, 7, '_menu_item_menu_item_parent', '0'),
(12, 7, '_menu_item_object_id', '2'),
(13, 7, '_menu_item_object', 'page'),
(14, 7, '_menu_item_target', ''),
(15, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(16, 7, '_menu_item_xfn', ''),
(17, 7, '_menu_item_url', ''),
(20, 9, '_edit_last', '1'),
(21, 9, '_edit_lock', '1388931433:1'),
(22, 10, '_wp_attached_file', '2013/12/helen-fleming-portrait.jpg'),
(23, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:403;s:6:"height";i:403;s:4:"file";s:34:"2013/12/helen-fleming-portrait.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"helen-fleming-portrait-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"helen-fleming-portrait-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(24, 10, '_wp_attachment_image_alt', 'Helen Fleming'),
(25, 9, '_thumbnail_id', '10'),
(26, 2, '_edit_lock', '1388408738:1'),
(27, 2, '_edit_last', '1'),
(28, 4, '_edit_lock', '1388764888:1'),
(32, 4, '_edit_last', '1'),
(33, 4, '_wp_page_template', 'default'),
(34, 16, '_edit_last', '1'),
(35, 16, '_edit_lock', '1388855004:1'),
(36, 16, '_wp_page_template', 'default'),
(37, 19, '_menu_item_type', 'post_type'),
(38, 19, '_menu_item_menu_item_parent', '0'),
(39, 19, '_menu_item_object_id', '16'),
(40, 19, '_menu_item_object', 'page'),
(41, 19, '_menu_item_target', ''),
(42, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 19, '_menu_item_xfn', ''),
(44, 19, '_menu_item_url', ''),
(50, 33, '_edit_last', '1'),
(51, 33, '_edit_lock', '1388422189:1'),
(70, 33, '_wp_trash_meta_status', 'publish'),
(71, 33, '_wp_trash_meta_time', '1388422609'),
(72, 43, '_edit_last', '1'),
(73, 43, '_edit_lock', '1388767153:1'),
(74, 43, '_job_expires', '2014-01-29'),
(75, 43, '_job_location', 'London'),
(76, 43, '_application', ''),
(77, 43, '_company_name', ''),
(78, 43, '_company_website', ''),
(79, 43, '_company_tagline', ''),
(80, 43, '_company_twitter', ''),
(81, 43, '_company_logo', ''),
(82, 43, '_filled', '0'),
(83, 43, '_featured', '0'),
(84, 44, '_edit_last', '1'),
(85, 44, '_edit_lock', '1388931410:1'),
(86, 44, '_wp_page_template', 'default'),
(87, 46, '_menu_item_type', 'post_type'),
(88, 46, '_menu_item_menu_item_parent', '0'),
(89, 46, '_menu_item_object_id', '44'),
(90, 46, '_menu_item_object', 'page'),
(91, 46, '_menu_item_target', ''),
(92, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(93, 46, '_menu_item_xfn', ''),
(94, 46, '_menu_item_url', ''),
(96, 47, '_edit_last', '1'),
(97, 47, '_edit_lock', '1388429655:1'),
(98, 47, '_wp_page_template', 'default'),
(99, 55, '_edit_last', '1'),
(100, 55, '_edit_lock', '1388767124:1'),
(101, 55, '_job_expires', '2014-01-29'),
(102, 55, '_job_location', 'London'),
(103, 55, '_application', ''),
(104, 55, '_company_name', ''),
(105, 55, '_company_website', ''),
(106, 55, '_company_tagline', ''),
(107, 55, '_company_twitter', ''),
(108, 55, '_company_logo', ''),
(109, 55, '_filled', '0'),
(110, 55, '_featured', '0'),
(111, 56, '_edit_last', '1'),
(112, 56, '_edit_lock', '1388429789:1'),
(113, 56, '_job_expires', '2014-01-29'),
(114, 56, '_job_location', 'London'),
(115, 56, '_application', ''),
(116, 56, '_company_name', ''),
(117, 56, '_company_website', ''),
(118, 56, '_company_tagline', ''),
(119, 56, '_company_twitter', ''),
(120, 56, '_company_logo', ''),
(121, 56, '_filled', '0'),
(122, 56, '_featured', '0'),
(123, 57, '_edit_last', '1'),
(124, 57, '_edit_lock', '1388429906:1'),
(125, 57, '_job_expires', '2014-01-29'),
(126, 57, '_job_location', 'London'),
(127, 57, '_application', ''),
(128, 57, '_company_name', ''),
(129, 57, '_company_website', ''),
(130, 57, '_company_tagline', ''),
(131, 57, '_company_twitter', ''),
(132, 57, '_company_logo', ''),
(133, 57, '_filled', '0'),
(134, 57, '_featured', '0'),
(135, 58, '_edit_last', '1'),
(136, 58, '_edit_lock', '1388738906:1'),
(137, 58, '_job_expires', '2014-01-29'),
(138, 58, '_job_location', 'London'),
(139, 58, '_application', ''),
(140, 58, '_company_name', ''),
(141, 58, '_company_website', ''),
(142, 58, '_company_tagline', ''),
(143, 58, '_company_twitter', ''),
(144, 58, '_company_logo', ''),
(145, 58, '_filled', '0'),
(146, 58, '_featured', '0'),
(147, 59, '_edit_last', '1'),
(148, 59, '_edit_lock', '1388849387:1'),
(149, 59, '_job_expires', '2014-01-29'),
(150, 59, '_job_location', 'London'),
(151, 59, '_application', ''),
(152, 59, '_company_name', ''),
(153, 59, '_company_website', ''),
(154, 59, '_company_tagline', ''),
(155, 59, '_company_twitter', ''),
(156, 59, '_company_logo', ''),
(157, 59, '_filled', '0'),
(158, 59, '_featured', '0'),
(171, 62, '_menu_item_type', 'post_type'),
(172, 62, '_menu_item_menu_item_parent', '0'),
(173, 62, '_menu_item_object_id', '47'),
(174, 62, '_menu_item_object', 'page'),
(175, 62, '_menu_item_target', ''),
(176, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(177, 62, '_menu_item_xfn', ''),
(178, 62, '_menu_item_url', ''),
(180, 63, '_edit_last', '1'),
(181, 63, '_edit_lock', '1388930951:1'),
(182, 64, '_wp_attached_file', '2013/12/melissa-phillips-portrait.jpg'),
(183, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:403;s:6:"height";i:403;s:4:"file";s:37:"2013/12/melissa-phillips-portrait.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"melissa-phillips-portrait-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"melissa-phillips-portrait-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(184, 64, '_wp_attachment_image_alt', 'Melissa Phillips'),
(185, 63, '_thumbnail_id', '64'),
(194, 58, '_job_salary', ''),
(195, 58, '_job_day_rate', '£350'),
(203, 75, '_menu_item_type', 'post_type'),
(204, 75, '_menu_item_menu_item_parent', '0'),
(205, 75, '_menu_item_object_id', '4'),
(206, 75, '_menu_item_object', 'page'),
(207, 75, '_menu_item_target', ''),
(208, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(209, 75, '_menu_item_xfn', ''),
(210, 75, '_menu_item_url', ''),
(218, 79, '_edit_last', '1'),
(219, 79, '_edit_lock', '1388762196:1'),
(220, 79, '_wp_page_template', 'default'),
(221, 81, '_wp_attached_file', '2013/12/overview-background.jpg'),
(222, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:985;s:4:"file";s:31:"2013/12/overview-background.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"overview-background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"overview-background-300x230.jpg";s:5:"width";i:300;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"overview-background-1024x788.jpg";s:5:"width";i:1024;s:6:"height";i:788;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(223, 81, '_wp_attachment_image_alt', 'Overview Background'),
(224, 4, '_thumbnail_id', '81'),
(225, 82, '_wp_attached_file', '2014/01/testimonial-background.png'),
(226, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:985;s:4:"file";s:34:"2014/01/testimonial-background.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"testimonial-background-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:34:"testimonial-background-300x230.png";s:5:"width";i:300;s:6:"height";i:230;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:35:"testimonial-background-1024x788.png";s:5:"width";i:1024;s:6:"height";i:788;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(227, 82, '_wp_attachment_image_alt', 'Testimonial Background'),
(228, 79, '_thumbnail_id', '82'),
(229, 84, '_edit_last', '1'),
(230, 84, '_edit_lock', '1388847696:1'),
(231, 85, '_wp_attached_file', '2014/01/latest-job-background.png'),
(232, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:985;s:4:"file";s:33:"2014/01/latest-job-background.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"latest-job-background-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:33:"latest-job-background-300x230.png";s:5:"width";i:300;s:6:"height";i:230;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:34:"latest-job-background-1024x788.png";s:5:"width";i:1024;s:6:"height";i:788;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(233, 85, '_wp_attachment_image_alt', 'Latest Job Background'),
(234, 84, '_thumbnail_id', '85'),
(235, 84, '_wp_page_template', 'default'),
(236, 91, '_edit_last', '1'),
(237, 91, '_wp_page_template', 'default'),
(238, 91, '_edit_lock', '1388760316:1'),
(239, 4, 'links-text', ''),
(240, 4, 'links-link', ''),
(241, 97, '_edit_lock', '1388763085:1'),
(242, 97, '_edit_last', '1'),
(243, 97, 'field_52c6d372c1fa6', 'a:11:{s:3:"key";s:19:"field_52c6d372c1fa6";s:5:"label";s:4:"Link";s:4:"name";s:13:"page-link-url";s:4:"type";s:9:"page_link";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:9:"post_type";a:1:{i:0;s:4:"page";}s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(247, 97, 'position', 'normal'),
(248, 97, 'layout', 'default'),
(249, 97, 'hide_on_screen', ''),
(252, 4, 'link', '2'),
(253, 4, '_link', 'field_52c6d372c1fa6'),
(254, 97, 'field_52c6d4213c622', 'a:14:{s:3:"key";s:19:"field_52c6d4213c622";s:5:"label";s:5:"Title";s:4:"name";s:15:"page-link-title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:21:"e.g. More about Mavis";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(261, 97, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"4";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(262, 97, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"79";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(263, 97, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"84";s:8:"order_no";i:0;s:8:"group_no";i:2;}'),
(268, 4, 'page-link-title', 'More about working together'),
(269, 4, '_page-link-title', 'field_52c6d4213c622'),
(270, 4, 'page-link-url', '16'),
(271, 4, '_page-link-url', 'field_52c6d372c1fa6'),
(276, 79, 'page-link-title', 'More about Mavis'),
(277, 79, '_page-link-title', 'field_52c6d4213c622'),
(278, 79, 'page-link-url', '2'),
(279, 79, '_page-link-url', 'field_52c6d372c1fa6'),
(288, 84, 'page-link-title', 'View all jobs'),
(289, 84, '_page-link-title', 'field_52c6d4213c622'),
(290, 84, 'page-link-url', '44'),
(291, 84, '_page-link-url', 'field_52c6d372c1fa6'),
(292, 103, '_wp_attached_file', '2014/01/logo.png'),
(293, 103, '_wp_attachment_context', 'custom-header'),
(294, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:248;s:6:"height";i:69;s:4:"file";s:16:"2014/01/logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x69.png";s:5:"width";i:150;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(295, 103, '_wp_attachment_is_custom_header', 'mavis'),
(300, 4, '_post_restored_from', 'a:3:{s:20:"restored_revision_id";i:101;s:16:"restored_by_user";i:1;s:13:"restored_time";i:1388764990;}'),
(305, 43, '_job_salary', ''),
(306, 43, '_job_day_rate', ''),
(335, 59, '_job_salary', ''),
(336, 59, '_job_day_rate', '£400'),
(337, 118, '_edit_last', '1'),
(338, 118, '_edit_lock', '1388936843:1'),
(339, 118, '_wp_page_template', 'default'),
(340, 120, '_edit_lock', '1388937123:1'),
(341, 120, '_edit_last', '1'),
(342, 120, 'field_52c974ad2ede4', 'a:12:{s:3:"key";s:19:"field_52c974ad2ede4";s:5:"label";s:7:"Address";s:4:"name";s:7:"address";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(345, 120, 'position', 'normal'),
(346, 120, 'layout', 'default'),
(347, 120, 'hide_on_screen', ''),
(350, 121, '_edit_lock', '1388934467:1'),
(351, 121, '_edit_last', '1'),
(352, 121, 'field_52c97528ad362', 'a:12:{s:3:"key";s:19:"field_52c97528ad362";s:5:"label";s:13:"Email Address";s:4:"name";s:13:"email_address";s:4:"type";s:5:"email";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(353, 121, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:3:"118";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(354, 121, 'position', 'normal'),
(355, 121, 'layout', 'no_box'),
(356, 121, 'hide_on_screen', ''),
(361, 118, 'address', '1 House number\r\n3 Avenue Street\r\nLondon\r\nE3 4QA'),
(362, 118, '_address', 'field_52c974ad2ede4'),
(363, 118, 'email_address', 'helen@hellomavis.com'),
(364, 118, '_email_address', 'field_52c97618cedc9'),
(365, 123, '_edit_lock', '1388934526:1'),
(366, 123, '_edit_last', '1'),
(367, 123, 'field_52c9756cdf8a2', 'a:12:{s:3:"key";s:19:"field_52c9756cdf8a2";s:5:"label";s:17:"Telephone Numbers";s:4:"name";s:17:"telephone_numbers";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(368, 123, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:3:"118";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(369, 123, 'position', 'normal'),
(370, 123, 'layout', 'no_box'),
(371, 123, 'hide_on_screen', ''),
(373, 123, '_wp_trash_meta_status', 'publish'),
(374, 123, '_wp_trash_meta_time', '1388934550'),
(375, 121, '_wp_trash_meta_status', 'publish'),
(376, 121, '_wp_trash_meta_time', '1388934552'),
(377, 120, 'field_52c97618cedc9', 'a:12:{s:3:"key";s:19:"field_52c97618cedc9";s:5:"label";s:13:"Email Address";s:4:"name";s:13:"email_address";s:4:"type";s:5:"email";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(378, 120, 'field_52c97624cedca', 'a:12:{s:3:"key";s:19:"field_52c97624cedca";s:5:"label";s:17:"Telephone Numbers";s:4:"name";s:17:"telephone_numbers";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(379, 120, 'field_52c9763dcedcb', 'a:14:{s:3:"key";s:19:"field_52c9763dcedcb";s:5:"label";s:10:"Skype Name";s:4:"name";s:10:"skype_name";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(389, 118, 'telephone_numbers', '020 8350 5629\r\n07748 153 169'),
(390, 118, '_telephone_numbers', 'field_52c97624cedca'),
(391, 118, 'skype_name', 'helen-flemming-Mavis'),
(392, 118, '_skype_name', 'field_52c9763dcedcb'),
(393, 126, '_edit_lock', '1388936851:1'),
(394, 126, '_edit_last', '1'),
(395, 126, 'field_52c976c6e7cda', 'a:14:{s:3:"key";s:19:"field_52c976c6e7cda";s:5:"label";s:8:"Facebook";s:4:"name";s:8:"facebook";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(396, 126, 'field_52c976eee7cdb', 'a:14:{s:3:"key";s:19:"field_52c976eee7cdb";s:5:"label";s:7:"Twitter";s:4:"name";s:7:"twitter";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(397, 126, 'field_52c976f8e7cdc', 'a:14:{s:3:"key";s:19:"field_52c976f8e7cdc";s:5:"label";s:8:"LinkedIn";s:4:"name";s:8:"linkedin";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(398, 126, 'field_52c97700e7cdd', 'a:14:{s:3:"key";s:19:"field_52c97700e7cdd";s:5:"label";s:9:"Pinterest";s:4:"name";s:9:"pinterest";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(399, 126, 'field_52c97713e7cde', 'a:14:{s:3:"key";s:19:"field_52c97713e7cde";s:5:"label";s:6:"Flickr";s:4:"name";s:6:"flickr";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
(400, 126, 'field_52c9771ae7cdf', 'a:14:{s:3:"key";s:19:"field_52c9771ae7cdf";s:5:"label";s:9:"Instagram";s:4:"name";s:9:"instagram";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;}'),
(402, 126, 'position', 'normal'),
(403, 126, 'layout', 'default'),
(404, 126, 'hide_on_screen', ''),
(426, 118, 'facebook', 'hellomavis'),
(427, 118, '_facebook', 'field_52c976c6e7cda'),
(428, 118, 'twitter', 'hellomavis'),
(429, 118, '_twitter', 'field_52c976eee7cdb'),
(430, 118, 'linkedin', 'helenlfleming'),
(431, 118, '_linkedin', 'field_52c976f8e7cdc'),
(432, 118, 'pinterest', 'hellomavis'),
(433, 118, '_pinterest', 'field_52c97700e7cdd'),
(434, 118, 'flickr', 'hellomavis'),
(435, 118, '_flickr', 'field_52c97713e7cde'),
(436, 118, 'instagram', 'hellomavis'),
(437, 118, '_instagram', 'field_52c9771ae7cdf'),
(438, 120, 'field_52c97bd4583b6', 'a:11:{s:3:"key";s:19:"field_52c97bd4583b6";s:5:"label";s:12:"Address Icon";s:4:"name";s:12:"address_icon";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(440, 120, 'field_52c97c0dcfc53', 'a:11:{s:3:"key";s:19:"field_52c97c0dcfc53";s:5:"label";s:18:"Email Address Icon";s:4:"name";s:18:"email_address_icon";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(441, 120, 'field_52c97c24cfc54', 'a:11:{s:3:"key";s:19:"field_52c97c24cfc54";s:5:"label";s:22:"Telephone Numbers Icon";s:4:"name";s:22:"telephone_numbers_icon";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(442, 120, 'field_52c97c3bcfc55', 'a:11:{s:3:"key";s:19:"field_52c97c3bcfc55";s:5:"label";s:15:"Skype Name Icon";s:4:"name";s:15:"skype_name_icon";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(444, 128, '_wp_attached_file', '2014/01/address-icon.png'),
(445, 128, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:24:"2014/01/address-icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(446, 128, '_wp_attachment_image_alt', 'Address Icon'),
(447, 129, '_wp_attached_file', '2014/01/email-icon.png'),
(448, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:22:"2014/01/email-icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(449, 129, '_wp_attachment_image_alt', 'Email Address Icon'),
(450, 130, '_wp_attached_file', '2014/01/skype-icon.png'),
(451, 130, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:22:"2014/01/skype-icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(452, 131, '_wp_attached_file', '2014/01/telephone-icon.png'),
(453, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:26:"2014/01/telephone-icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(454, 131, '_wp_attachment_image_alt', ''),
(455, 130, '_wp_attachment_image_alt', 'Skype Icon'),
(484, 118, 'address_icon', '128'),
(485, 118, '_address_icon', 'field_52c97bd4583b6'),
(486, 118, 'email_address_icon', '129'),
(487, 118, '_email_address_icon', 'field_52c97c0dcfc53'),
(488, 118, 'telephone_numbers_icon', '131'),
(489, 118, '_telephone_numbers_icon', 'field_52c97c24cfc54'),
(490, 118, 'skype_name_icon', '130'),
(491, 118, '_skype_name_icon', 'field_52c97c3bcfc55'),
(492, 133, '_wp_attached_file', '2014/01/facebook-icon.png'),
(493, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:25:"2014/01/facebook-icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(494, 134, '_wp_attached_file', '2014/01/flickr-icon.png'),
(495, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:23:"2014/01/flickr-icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(496, 135, '_wp_attached_file', '2014/01/instagram-icon.png'),
(497, 135, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:26:"2014/01/instagram-icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(498, 136, '_wp_attached_file', '2014/01/linkedin-icon.png'),
(499, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:25:"2014/01/linkedin-icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(500, 137, '_wp_attached_file', '2014/01/pinterest-icon.png'),
(501, 137, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:26:"2014/01/pinterest-icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(502, 138, '_wp_attached_file', '2014/01/twitter-icon.png'),
(503, 138, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:24:"2014/01/twitter-icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(504, 133, '_edit_lock', '1388936711:1'),
(505, 126, 'field_52c97e1aef248', 'a:11:{s:3:"key";s:19:"field_52c97e1aef248";s:5:"label";s:13:"Facebook Icon";s:4:"name";s:13:"facebook_icon";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(506, 126, 'field_52c97e39ef24a', 'a:11:{s:3:"key";s:19:"field_52c97e39ef24a";s:5:"label";s:12:"Twitter Icon";s:4:"name";s:12:"twitter_icon";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(507, 126, 'field_52c97e50ef24b', 'a:11:{s:3:"key";s:19:"field_52c97e50ef24b";s:5:"label";s:13:"LinkedIn Icon";s:4:"name";s:13:"linkedin_icon";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(508, 126, 'field_52c97e61ef24c', 'a:11:{s:3:"key";s:19:"field_52c97e61ef24c";s:5:"label";s:14:"Pinterest Icon";s:4:"name";s:14:"pinterest_icon";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(509, 126, 'field_52c97e6fef24d', 'a:11:{s:3:"key";s:19:"field_52c97e6fef24d";s:5:"label";s:11:"Flickr Icon";s:4:"name";s:11:"flickr_icon";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'),
(510, 126, 'field_52c97e83ef24f', 'a:11:{s:3:"key";s:19:"field_52c97e83ef24f";s:5:"label";s:14:"Instagram Icon";s:4:"name";s:15:"instragram_icon";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;}'),
(511, 126, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:3:"118";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(512, 133, '_wp_attachment_image_alt', 'Facebook Icon'),
(513, 138, '_wp_attachment_image_alt', 'Twitter Icon'),
(514, 136, '_wp_attachment_image_alt', 'LinkedIn Icon'),
(515, 137, '_wp_attachment_image_alt', 'Pinterest Icon'),
(516, 134, '_wp_attachment_image_alt', 'Flickr Icon'),
(517, 135, '_wp_attachment_image_alt', 'Instagram Icon'),
(558, 118, 'facebook_icon', '133'),
(559, 118, '_facebook_icon', 'field_52c97e1aef248'),
(560, 118, 'twitter_icon', '138'),
(561, 118, '_twitter_icon', 'field_52c97e39ef24a'),
(562, 118, 'linkedin_icon', '136'),
(563, 118, '_linkedin_icon', 'field_52c97e50ef24b'),
(564, 118, 'pinterest_icon', '137'),
(565, 118, '_pinterest_icon', 'field_52c97e61ef24c'),
(566, 118, 'flickr_icon', '134'),
(567, 118, '_flickr_icon', 'field_52c97e6fef24d'),
(568, 118, 'instragram_icon', '135'),
(569, 118, '_instragram_icon', 'field_52c97e83ef24f'),
(570, 120, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:3:"118";s:8:"order_no";i:0;s:8:"group_no";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=140 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2013-12-30 09:16:53', '2013-12-30 09:16:53', '<blockquote>"Inspired by my gran, Mavis, I wanted to bring a personal touch to the world of recruitment. She was a warm, creative and successful lady, very generous with advice and hot beverages, and always there when you needed her"</blockquote>\r\n– Helen Fleming, Creator of Mavis', 'About', '', 'publish', 'closed', 'open', '', 'about', '', '', '2014-01-03 14:38:36', '2014-01-03 14:38:36', '', 0, 'http://hellomavis.local/?page_id=2', 7, 'page', '', 0),
(4, 1, '2013-12-30 09:31:00', '2013-12-30 09:31:00', '<h1>Mavis looks after talented people in the digital creative Industry, finding them great roles in good-to-work-for agencies</h1>', 'Introduction', '', 'publish', 'closed', 'closed', '', 'introduction', '', '', '2014-01-03 16:03:17', '2014-01-03 16:03:17', '', 91, 'http://hellomavis.local/?page_id=4', 2, 'page', '', 0),
(7, 1, '2013-12-30 09:31:00', '2013-12-30 09:31:00', ' ', '', 'About', 'publish', 'open', 'open', '', '7', '', '', '2014-01-03 09:18:55', '2014-01-03 09:18:55', '', 0, 'http://hellomavis.local/7/', 4, 'nav_menu_item', '', 0),
(9, 1, '2013-12-30 11:08:47', '2013-12-30 11:08:47', 'I began my career as a designer and gained valuable experience in a number of London-based design agencies before spending several years at leading creative recruitment consultancies, where I specialised in the digital sector.\r\n\r\nThe combination of direct industry and recruitment experience gave me the confidence and know-how to create Mavis.<!--more--> Here I can concentrate on what I do best: looking after digital talent and finding the right candidate for the right role.\r\n\r\nI enjoy working with clever creative thinkers and designers at all levels. I have previously advised young talent at advertising and design universities, and led many graduate portfolio days with key industry figures.\r\n\r\nMy design background gives me an instinctive understanding of candidates, and the ability to evaluate portfolios and give career advice, building long-lasting relationships along the way. My inability to turn down an invite ensures that I regularly attend industry events, talks and award ceremonies.\r\n\r\nYou can see my full <a title="Helen Fleming on LinkedIn" href="http://uk.linkedin.com/in/helenlfleming" target="_blank">CV</a> on <a title="Helen Fleming on LinkedIn" href="http://uk.linkedin.com/in/helenlfleming" target="_blank">Linkedin</a>.\r\n\r\nI still love making, drawing and photographing, and you can see what I’ve been doing on <a title="Helen Fleming on Instagram" href="http://instagram.com" target="_blank">Instagram</a> and what I love on <a title="Helen Fleming on Flickr" href="http://flickr.com" target="_blank">Flickr</a>.', 'Helen Fleming', '', 'publish', 'closed', 'closed', '', 'helen-fleming', '', '', '2014-01-05 14:11:29', '2014-01-05 14:11:29', '', 0, 'http://hellomavis.local/?post_type=people&#038;p=9', 1, 'people', '', 0),
(10, 1, '2013-12-30 11:09:39', '2013-12-30 11:09:39', '', 'Helen Fleming', '', 'inherit', 'open', 'open', '', 'helen-fleming-portrait', '', '', '2013-12-30 11:09:39', '2013-12-30 11:09:39', '', 9, 'http://hellomavis.local//media//2013/12/helen-fleming-portrait.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2013-12-30 11:28:10', '2013-12-30 11:28:10', '[one_half]\r\n\r\n<p>We are an independent digital recruitment agency that loves to find the best talent for clients and the right opportunities for candidates.</p>\r\n\r\n<p>With a large talent network and a lot of industry know-how, we respond to client briefs and candidate requirements intelligently, creatively, efficiently and without fuss.</p>\r\n\r\n<p>Mavis works with the best digital design, advertising and interaction agencies in the UK and Europe.</p>\r\n\r\n[/one_half]\r\n\r\n[one_half_last]\r\n\r\nWe find great roles for freelance and full time:\r\n<ul>\r\n	<li>Art directors</li>\r\n	<li>Creative directors</li>\r\n	<li>Creative teams</li>\r\n	<li>Designers</li>\r\n	<li>UX &amp; UI designers</li>\r\n	<li>Copywriters</li>\r\n	<li>Producers</li>\r\n</ul>\r\n&nbsp;\r\n\r\n[/one_half_last]', 'Working together', '', 'publish', 'closed', 'open', '', 'working-together', '', '', '2014-01-04 16:10:58', '2014-01-04 16:10:58', '', 0, 'http://hellomavis.local/?page_id=16', 5, 'page', '', 0),
(19, 1, '2013-12-30 11:28:35', '2013-12-30 11:28:35', ' ', '', 'Working together', 'publish', 'open', 'open', '', '19', '', '', '2014-01-03 09:18:55', '2014-01-03 09:18:55', '', 0, 'http://hellomavis.local/?p=19', 2, 'nav_menu_item', '', 0),
(33, 1, '2013-12-30 12:23:50', '2013-12-30 12:23:50', 'Extremely creative studio based in central London seek part time Studio Manager for a 3 day a week contract.\r\n\r\nThis much lauded business publishes 2 award winning fashion magazines bi-annually and is known for its'' writing voice and use of photography.\r\n\r\nThe office manager will organise and supervise all the daily administrative activities that facilitate the smooth running of the office.\r\n\r\nThis will involve organising the daily activities of the office including;\r\n<ul>\r\n	<li>Management of office IT.</li>\r\n	<li>Managing filing systems.</li>\r\n	<li>Recording office expenditure.</li>\r\n	<li>Managing accounts and budgets</li>\r\n	<li>Providing support to and liaising with the accountants.</li>\r\n	<li>Maintaining the office, ordering office supplies, maintaing the condition of the office and arranging for necessary repairs;</li>\r\n	<li>Overseeing the induction of new staff members.</li>\r\n	<li>Responding to general queries to the office.</li>\r\n	<li>Logistics management.</li>\r\n</ul>\r\nWe are looking for someone with strong MAC I.T. skills, some bookkeeping experience, good fashion knowledge and some previous office management experience.', 'Digital Marketing Assistant', '', 'trash', 'closed', 'closed', '', 'digital-marketing-assistant', '', '', '2013-12-30 16:56:49', '2013-12-30 16:56:49', '', 0, 'http://hellomavis.local/?post_type=jobs&#038;p=33', 0, 'jobs', '', 0),
(43, 1, '2013-12-30 17:11:13', '2013-12-30 17:11:13', 'Extremely creative studio based in central London seek part time Studio Manager for a 3 day a week contract.\r\n\r\nThis much lauded business publishes 2 award winning fashion magazines bi-annually and is known for its'' writing voice and use of photography.\r\n\r\nThe office manager will organise and supervise all the daily administrative activities that facilitate the smooth running of the office.\r\n\r\nThis will involve organising the daily activities of the office including;\r\n<ul>\r\n	<li>Management of office IT.</li>\r\n	<li>Managing filing systems.</li>\r\n	<li>Recording office expenditure.</li>\r\n	<li>Managing accounts and budgets</li>\r\n	<li>Providing support to and liaising with the accountants.</li>\r\n	<li>Maintaining the office, ordering office supplies, maintaing the condition of the office and arranging for necessary repairs;</li>\r\n	<li>Overseeing the induction of new staff members.</li>\r\n	<li>Responding to general queries to the office.</li>\r\n	<li>Logistics management.</li>\r\n</ul>\r\nWe are looking for someone with strong Mac I.T. skills, some bookkeeping experience, good fashion knowledge and some previous office management experience.', 'Digital Marketing Assistant', '', 'publish', 'closed', 'closed', '', 'digital-marketing-assistant', '', '', '2014-01-03 16:41:05', '2014-01-03 16:41:05', '', 0, 'http://hellomavis.local/?post_type=job_listing&#038;p=43', 7, 'job_listing', '', 0),
(44, 1, '2013-12-30 17:17:01', '2013-12-30 17:17:01', '[jobs]', 'Jobs', '', 'publish', 'closed', 'open', '', 'jobs', '', '', '2014-01-03 14:38:36', '2014-01-03 14:38:36', '', 0, 'http://hellomavis.local/?page_id=44', 6, 'page', '', 0),
(46, 1, '2013-12-30 17:17:35', '2013-12-30 17:17:35', ' ', '', '', 'publish', 'open', 'open', '', '46', '', '', '2014-01-03 09:18:55', '2014-01-03 09:18:55', '', 0, 'http://hellomavis.local/?p=46', 3, 'nav_menu_item', '', 0),
(47, 1, '2013-12-30 17:23:21', '2013-12-30 17:23:21', '[people]', 'People', '', 'publish', 'closed', 'open', '', 'people', '', '', '2014-01-03 14:38:36', '2014-01-03 14:38:36', '', 0, 'http://hellomavis.local/?page_id=47', 8, 'page', '', 0),
(55, 1, '2013-12-30 18:57:34', '2013-12-30 18:57:34', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital Marketing Assistant', '', 'publish', 'closed', 'closed', '', 'digital-marketing-assistant-2', '', '', '2013-12-30 18:57:34', '2013-12-30 18:57:34', '', 0, 'http://hellomavis.local/?post_type=job_listing&#038;p=55', 6, 'job_listing', '', 0),
(56, 1, '2013-12-30 18:57:59', '2013-12-30 18:57:59', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'UX / UI Designer', '', 'publish', 'closed', 'closed', '', 'ux-ui-designer', '', '', '2013-12-30 18:57:59', '2013-12-30 18:57:59', '', 0, 'http://hellomavis.local/?post_type=job_listing&#038;p=56', 5, 'job_listing', '', 0),
(57, 1, '2013-12-30 18:58:47', '2013-12-30 18:58:47', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Creative Director', '', 'publish', 'closed', 'closed', '', 'creative-director', '', '', '2013-12-30 18:58:47', '2013-12-30 18:58:47', '', 0, 'http://hellomavis.local/?post_type=job_listing&#038;p=57', 4, 'job_listing', '', 0),
(58, 1, '2013-12-30 19:01:57', '2013-12-30 19:01:57', '', 'Digital Producer', '', 'publish', 'closed', 'closed', '', 'digital-producer', '', '', '2014-01-03 08:50:08', '2014-01-03 08:50:08', '', 0, 'http://hellomavis.local/?post_type=job_listing&#038;p=58', 3, 'job_listing', '', 0),
(59, 1, '2013-12-30 19:03:05', '2013-12-30 19:03:05', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Account Manager', '', 'publish', 'closed', 'closed', '', 'account-manager', '', '', '2014-01-04 15:08:53', '2014-01-04 15:08:53', '', 0, 'http://hellomavis.local/?post_type=job_listing&#038;p=59', 2, 'job_listing', '', 0),
(62, 1, '2013-12-30 19:10:20', '2013-12-30 19:10:20', ' ', '', '', 'publish', 'open', 'open', '', '62', '', '', '2014-01-03 09:18:55', '2014-01-03 09:18:55', '', 0, 'http://hellomavis.local/?p=62', 5, 'nav_menu_item', '', 0),
(63, 1, '2013-12-30 19:11:31', '2013-12-30 19:11:31', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n<!--more-->\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Melissa Phillips', '', 'publish', 'closed', 'closed', '', 'melissa-phillips', '', '', '2014-01-05 14:01:20', '2014-01-05 14:01:20', '', 0, 'http://hellomavis.local/?post_type=people&#038;p=63', 2, 'people', '', 0),
(64, 1, '2013-12-30 19:11:18', '2013-12-30 19:11:18', '', 'Melissa Phillips', '', 'inherit', 'open', 'open', '', 'melissa-phillips-portrait', '', '', '2013-12-30 19:11:18', '2013-12-30 19:11:18', '', 63, 'http://hellomavis.local//media//2013/12/melissa-phillips-portrait.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2014-01-03 09:18:55', '2014-01-03 09:18:55', ' ', '', '', 'publish', 'open', 'open', '', '75', '', '', '2014-01-03 09:18:55', '2014-01-03 09:18:55', '', 0, 'http://hellomavis.local/?p=75', 1, 'nav_menu_item', '', 0),
(79, 1, '2014-01-03 09:31:08', '2014-01-03 09:31:08', '<blockquote>"This is a testimonial from someone you placed in a job about how great you are"</blockquote>\r\n– Joe Bloggs, Creative Director, Creative Agency', 'Testimonial', '', 'publish', 'closed', 'closed', '', 'testimonial', '', '', '2014-01-03 15:18:28', '2014-01-03 15:18:28', '', 91, 'http://hellomavis.local/?page_id=79', 4, 'page', '', 0),
(81, 1, '2014-01-03 09:32:11', '2014-01-03 09:32:11', '', 'Overview Background', '', 'inherit', 'open', 'open', '', 'overview-background', '', '', '2014-01-03 09:32:11', '2014-01-03 09:32:11', '', 4, 'http://hellomavis.local//media//2013/12/overview-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2014-01-03 11:43:55', '2014-01-03 11:43:55', '', 'Testimonial Background', '', 'inherit', 'open', 'open', '', 'testimonial-background', '', '', '2014-01-03 11:43:55', '2014-01-03 11:43:55', '', 79, 'http://hellomavis.local//media//2014/01/testimonial-background.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2014-01-03 12:18:17', '2014-01-03 12:18:17', '<h3>LATEST JOB:</h3>\r\n[latest_job]', 'Latest Job', '', 'publish', 'closed', 'closed', '', 'latest-job', '', '', '2014-01-04 15:00:11', '2014-01-04 15:00:11', '', 91, 'http://hellomavis.local/?page_id=84', 3, 'page', '', 0),
(85, 1, '2014-01-03 12:18:08', '2014-01-03 12:18:08', '', 'Latest Job Background', '', 'inherit', 'open', 'open', '', 'latest-job-background', '', '', '2014-01-03 12:18:08', '2014-01-03 12:18:08', '', 84, 'http://hellomavis.local//media//2014/01/latest-job-background.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2014-01-03 14:37:23', '2014-01-03 14:37:23', '', 'Overview', '', 'publish', 'closed', 'open', '', 'overview', '', '', '2014-01-03 14:38:36', '2014-01-03 14:38:36', '', 0, 'http://hellomavis.local/?page_id=91', 1, 'page', '', 0),
(97, 1, '2014-01-03 15:14:06', '2014-01-03 15:14:06', '', 'Page Links', '', 'publish', 'closed', 'closed', '', 'acf_page-links', '', '', '2014-01-03 15:17:33', '2014-01-03 15:17:33', '', 0, 'http://hellomavis.local/?post_type=acf&#038;p=97', 0, 'acf', '', 0),
(103, 1, '2014-01-03 15:32:32', '2014-01-03 15:32:32', 'http://hellomavis.local//media//2014/01/logo.png', 'logo.png', '', 'inherit', 'closed', 'closed', '', 'logo-png', '', '', '2014-01-03 15:32:32', '2014-01-03 15:32:32', '', 0, 'http://hellomavis.local//media//2014/01/logo.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2014-01-05 14:18:17', '2014-01-05 14:18:17', 'We like to build long-lasting relationships with talented, creative people. Please get in touch and say hello, we''d love to hear from you.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2014-01-05 15:49:02', '2014-01-05 15:49:02', '', 0, 'http://hellomavis.local/?page_id=118', 9, 'page', '', 0),
(120, 1, '2014-01-05 15:06:20', '2014-01-05 15:06:20', '', 'Contact Details', '', 'publish', 'closed', 'closed', '', 'acf_contact-details', '', '', '2014-01-05 15:49:32', '2014-01-05 15:49:32', '', 0, 'http://hellomavis.local/?post_type=acf&#038;p=120', 0, 'acf', '', 0),
(121, 1, '2014-01-05 15:07:47', '2014-01-05 15:07:47', '', 'Email Address', '', 'trash', 'closed', 'closed', '', 'acf_email-address', '', '', '2014-01-05 15:09:12', '2014-01-05 15:09:12', '', 0, 'http://hellomavis.local/?post_type=acf&#038;p=121', 0, 'acf', '', 0),
(123, 1, '2014-01-05 15:08:46', '2014-01-05 15:08:46', '', 'Telephone Numbers', '', 'trash', 'closed', 'closed', '', 'acf_telephone-numbers', '', '', '2014-01-05 15:09:10', '2014-01-05 15:09:10', '', 0, 'http://hellomavis.local/?post_type=acf&#038;p=123', 0, 'acf', '', 0),
(126, 1, '2014-01-05 15:16:07', '2014-01-05 15:16:07', '', 'Social Links', '', 'publish', 'closed', 'closed', '', 'acf_social-links', '', '', '2014-01-05 15:47:31', '2014-01-05 15:47:31', '', 0, 'http://hellomavis.local/?post_type=acf&#038;p=126', 0, 'acf', '', 0),
(128, 1, '2014-01-05 15:39:01', '2014-01-05 15:39:01', '', 'Address Icon', '', 'inherit', 'closed', 'closed', '', 'address-icon', '', '', '2014-01-05 15:39:01', '2014-01-05 15:39:01', '', 118, 'http://hellomavis.local//media//2014/01/address-icon.png', 0, 'attachment', 'image/png', 0),
(129, 1, '2014-01-05 15:39:40', '2014-01-05 15:39:40', '', 'Email Address Icon', '', 'inherit', 'closed', 'closed', '', 'email-icon', '', '', '2014-01-05 15:39:40', '2014-01-05 15:39:40', '', 118, 'http://hellomavis.local//media//2014/01/email-icon.png', 0, 'attachment', 'image/png', 0),
(130, 1, '2014-01-05 15:39:54', '2014-01-05 15:39:54', '', 'Skype Icon', '', 'inherit', 'closed', 'closed', '', 'skype-icon', '', '', '2014-01-05 15:39:54', '2014-01-05 15:39:54', '', 118, 'http://hellomavis.local//media//2014/01/skype-icon.png', 0, 'attachment', 'image/png', 0),
(131, 1, '2014-01-05 15:39:54', '2014-01-05 15:39:54', '', 'Telephone Numbers Icon', '', 'inherit', 'closed', 'closed', '', 'telephone-icon', '', '', '2014-01-05 15:39:54', '2014-01-05 15:39:54', '', 118, 'http://hellomavis.local//media//2014/01/telephone-icon.png', 0, 'attachment', 'image/png', 0),
(133, 1, '2014-01-05 15:45:07', '2014-01-05 15:45:07', '', 'Facebook Icon', '', 'inherit', 'closed', 'closed', '', 'facebook-icon', '', '', '2014-01-05 15:45:07', '2014-01-05 15:45:07', '', 0, 'http://hellomavis.local//media//2014/01/facebook-icon.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2014-01-05 15:45:07', '2014-01-05 15:45:07', '', 'Flickr Icon', '', 'inherit', 'closed', 'closed', '', 'flickr-icon', '', '', '2014-01-05 15:45:07', '2014-01-05 15:45:07', '', 0, 'http://hellomavis.local//media//2014/01/flickr-icon.png', 0, 'attachment', 'image/png', 0),
(135, 1, '2014-01-05 15:45:08', '2014-01-05 15:45:08', '', 'Instagram Ion', '', 'inherit', 'closed', 'closed', '', 'instagram-icon', '', '', '2014-01-05 15:45:08', '2014-01-05 15:45:08', '', 0, 'http://hellomavis.local//media//2014/01/instagram-icon.png', 0, 'attachment', 'image/png', 0),
(136, 1, '2014-01-05 15:45:08', '2014-01-05 15:45:08', '', 'LinkedIn Icon', '', 'inherit', 'closed', 'closed', '', 'linkedin-icon', '', '', '2014-01-05 15:45:08', '2014-01-05 15:45:08', '', 0, 'http://hellomavis.local//media//2014/01/linkedin-icon.png', 0, 'attachment', 'image/png', 0),
(137, 1, '2014-01-05 15:45:08', '2014-01-05 15:45:08', '', 'Pinterest Icon', '', 'inherit', 'closed', 'closed', '', 'pinterest-icon', '', '', '2014-01-05 15:45:08', '2014-01-05 15:45:08', '', 0, 'http://hellomavis.local//media//2014/01/pinterest-icon.png', 0, 'attachment', 'image/png', 0),
(138, 1, '2014-01-05 15:45:08', '2014-01-05 15:45:08', '', 'Twitter Icon', '', 'inherit', 'closed', 'closed', '', 'twitter-icon', '', '', '2014-01-05 15:45:08', '2014-01-05 15:45:08', '', 0, 'http://hellomavis.local//media//2014/01/twitter-icon.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Navigation', 'primary-navigation', 0),
(4, 'Creative', 'creative', 0),
(5, 'Design', 'design', 0),
(6, 'UX/UI', 'ux-ui', 0),
(7, 'Social', 'social', 0),
(8, 'Strategy', 'strategy', 0),
(9, 'Production', 'production', 0),
(10, 'Client Services', 'client-services', 0),
(11, 'Executive', 'executive', 0),
(13, 'Freelance', 'freelance', 0),
(17, 'Full Time', 'full-time', 0),
(18, 'Part Time', 'part-time', 0),
(19, 'Temporary', 'temporary', 0),
(20, 'Internship', 'internship', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(7, 2, 0),
(19, 2, 0),
(33, 9, 0),
(33, 13, 0),
(43, 20, 0),
(43, 27, 0),
(46, 2, 0),
(55, 17, 0),
(55, 27, 0),
(56, 17, 0),
(56, 24, 0),
(57, 20, 0),
(57, 22, 0),
(58, 20, 0),
(58, 27, 0),
(59, 17, 0),
(59, 28, 0),
(60, 21, 0),
(60, 29, 0),
(62, 2, 0),
(75, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(17, 17, 'job_listing_type', '', 0, 3),
(18, 18, 'job_listing_type', '', 0, 0),
(19, 19, 'job_listing_type', '', 0, 0),
(20, 13, 'job_listing_type', '', 0, 3),
(21, 20, 'job_listing_type', '', 0, 0),
(22, 4, 'job_listing_category', '', 0, 1),
(23, 5, 'job_listing_category', '', 0, 0),
(24, 6, 'job_listing_category', '', 0, 1),
(25, 7, 'job_listing_category', '', 0, 0),
(26, 8, 'job_listing_category', '', 0, 0),
(27, 9, 'job_listing_category', '', 0, 3),
(28, 10, 'job_listing_category', '', 0, 1),
(29, 11, 'job_listing_category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', 'Hello'),
(2, 1, 'last_name', 'Mavis'),
(3, 1, 'nickname', 'Mavis'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '112'),
(15, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&editor=tinymce&hidetb=0&ed_size=269'),
(16, 1, 'wp_user-settings-time', '1388931492'),
(17, 1, 'nav_menu_recently_edited', '2'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:7:{i:0;s:8:"add-post";i:1;s:10:"add-people";i:2;s:16:"add-custom-links";i:3;s:12:"add-category";i:4;s:12:"add-post_tag";i:5;s:24:"add-job_listing_category";i:6;s:20:"add-job_listing_type";}'),
(20, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(21, 1, 'metaboxhidden_dashboard', 'a:2:{i:0;s:18:"dashboard_activity";i:1;s:21:"dashboard_quick_press";}'),
(22, 1, 'meta-box-order_people', 'a:3:{s:4:"side";s:22:"submitdiv,postimagediv";s:6:"normal";s:19:"postexcerpt,slugdiv";s:8:"advanced";s:0:"";}'),
(23, 1, 'screen_layout_people', '2'),
(24, 1, 'closedpostboxes_jobs', 'a:1:{i:0;s:12:"postimagediv";}'),
(25, 1, 'metaboxhidden_jobs', 'a:3:{i:0;s:12:"postimagediv";i:1;s:11:"postexcerpt";i:2;s:7:"slugdiv";}'),
(26, 1, 'meta-box-order_jobs', 'a:3:{s:4:"side";s:70:"radio-tagsdiv-jobs_term,radio-tagsdiv-jobs_type,submitdiv,postimagediv";s:6:"normal";s:19:"postexcerpt,slugdiv";s:8:"advanced";s:0:"";}'),
(27, 1, 'screen_layout_jobs', '2'),
(28, 1, 'closedpostboxes_people', 'a:0:{}'),
(29, 1, 'metaboxhidden_people', 'a:2:{i:0;s:11:"postexcerpt";i:1;s:7:"slugdiv";}'),
(30, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(31, 1, 'closedpostboxes_job_listing', 'a:0:{}'),
(32, 1, 'metaboxhidden_job_listing', 'a:2:{i:0;s:10:"postcustom";i:1;s:7:"slugdiv";}'),
(33, 1, 'meta-box-order_page', 'a:3:{s:4:"side";s:36:"submitdiv,postimagediv,pageparentdiv";s:6:"normal";s:57:"postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(34, 1, 'screen_layout_page', '2'),
(35, 2, 'first_name', 'Helen'),
(36, 2, 'last_name', 'Fleming'),
(37, 2, 'nickname', 'helenfleming'),
(38, 2, 'description', ''),
(39, 2, 'rich_editing', 'true'),
(40, 2, 'comment_shortcuts', 'false'),
(41, 2, 'admin_color', 'fresh'),
(42, 2, 'use_ssl', '0'),
(43, 2, 'show_admin_bar_front', 'true'),
(44, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(45, 2, 'wp_user_level', '10'),
(46, 2, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(47, 2, 'wp_dashboard_quick_press_last_post_id', '73'),
(48, 1, 'closedpostboxes_page', 'a:0:{}'),
(49, 1, 'metaboxhidden_page', 'a:8:{i:0;s:13:"pageparentdiv";i:1;s:6:"acf_97";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";i:7;s:12:"revisionsdiv";}'),
(50, 1, 'closedpostboxes_acf', 'a:0:{}'),
(51, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'hellomavis', '$P$Bc2cX1G/spt5UOPphF2Ahl0sUzAcHj1', 'hellomavis', 'webmaster@hellomavis.com', '', '2013-12-30 09:16:53', '', 0, 'Mavis'),
(2, 'helenfleming', '$P$Brxct5TWzQMCw9RP6ftN1U3DCNRc5R1', 'helenfleming', 'helen@hellomavis.com', '', '2014-01-02 17:42:41', '', 0, 'Helen Fleming');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
