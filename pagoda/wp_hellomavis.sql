-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 02, 2014 at 03:36 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=271 ;

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
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:7:{i:0;s:19:"akismet/akismet.php";i:1;s:39:"column-shortcodes/column-shortcodes.php";i:2;s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:3;s:39:"mavis-job-manager/mavis-job-manager.php";i:4;s:17:"people/people.php";i:5;s:27:"wp-clean-up/wp-clean-up.php";i:6;s:33:"wp-job-manager/wp-job-manager.php";}', 'yes'),
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
(48, 'comment_registration', '0', 'yes'),
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
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
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
(98, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"sidebar-footer";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:6:{i:1388395017;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1388395025;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1388401232;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1388422519;a:1:{s:34:"job_manager_check_for_expired_jobs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1388431320;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(100, '_transient_doing_cron', '1388676911.1059319972991943359375', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.8";s:12:"last_checked";i:1388666329;}', 'yes'),
(102, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1388666951;s:7:"checked";a:8:{s:19:"akismet/akismet.php";s:5:"2.5.9";s:39:"column-shortcodes/column-shortcodes.php";s:5:"0.6.4";s:19:"jetpack/jetpack.php";s:3:"2.7";s:13:"jobs/jobs.php";s:3:"1.0";s:17:"people/people.php";s:3:"1.0";s:61:"radio-buttons-for-taxonomies/radio-buttons-for-taxonomies.php";s:5:"1.5.6";s:27:"wp-clean-up/wp-clean-up.php";s:5:"1.2.1";s:33:"wp-job-manager/wp-job-manager.php";s:5:"1.6.0";}s:8:"response";a:1:{s:19:"woodojo/woodojo.php";O:8:"stdClass":6:{s:2:"id";s:3:"466";s:4:"slug";s:7:"woodojo";s:11:"new_version";s:5:"1.5.4";s:3:"url";s:33:"http://www.woothemes.com/woodojo/";s:7:"package";s:61:"http://woodojo.s3.amazonaws.com/downloads/woodojo/woodojo.zip";s:14:"upgrade_notice";s:33:"Twitter API updates and bugfixes.";}}s:12:"translations";a:0:{}}', 'yes'),
(105, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1388666319;s:7:"checked";a:1:{s:5:"roots";s:5:"6.5.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(106, 'can_compress_scripts', '1', 'yes'),
(119, '_transient_timeout_plugin_slugs', '1388753361', 'no'),
(120, '_transient_plugin_slugs', 'a:7:{i:0;s:19:"akismet/akismet.php";i:1;s:39:"column-shortcodes/column-shortcodes.php";i:2;s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:3;s:39:"mavis-job-manager/mavis-job-manager.php";i:4;s:17:"people/people.php";i:5;s:27:"wp-clean-up/wp-clean-up.php";i:6;s:33:"wp-job-manager/wp-job-manager.php";}', 'no'),
(121, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1388438277', 'no'),
(122, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://wordpress.org/news/2013/12/parker/'' title=''Version 3.8 of WordPress, named “Parker” in honor of Charlie Parker, bebop innovator, is available for download or update in your WordPress dashboard. We hope you’ll think this is the most beautiful update yet. Introducing a modern new design WordPress has gotten a facelift. 3.8 brings a fresh new look to the entire admin dashboard. […]''>WordPress 3.8 “Parker”</a> <span class="rss-date">December 12, 2013</span><div class=''rssSummary''>Version 3.8 of WordPress, named “Parker” in honor of Charlie Parker, bebop innovator, is available for download or update in your WordPress dashboard. We hope you’ll think this is the most beautiful update yet. Introducing a modern new design WordPress has gotten a facelift. 3.8 brings a fresh new look to the entire admin dashboard. […]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://wordpress.tv/2013/12/29/saurabh-shukla-wordpress-as-a-distributed-social-network/'' title=''    ''>WordPress.tv: Saurabh Shukla: WordPress As A Distributed Social Network</a></li><li><a class=''rsswidget'' href=''http://wordpress.tv/2013/12/29/lisa-sabin-wilson-scoping-projects-to-avoid-stress-headaches-and-angry-mobs/'' title=''    ''>WordPress.tv: Lisa Sabin-Wilson: Scoping Projects To Avoid Stress, Headaches And Angry Mobs</a></li><li><a class=''rsswidget'' href=''http://wordpress.tv/2013/12/28/carl-danley-and-eric-mann-wordpress-javascript-hooks/'' title=''    ''>WordPress.tv: Carl Danley and Eric Mann: WordPress Javascript Hooks</a></li></ul></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Popular Plugin:</span> <a href=''http://wordpress.org/plugins/captcha/'' class=''dashboard-news-plugin-link''>Captcha</a></h5>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=captcha&amp;_wpnonce=0c68f5a84c&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Captcha''>Install</a>)</span></li></ul></div>', 'no'),
(124, '_transient_twentyfourteen_category_count', '1', 'yes'),
(125, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1388395833;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(126, 'current_theme', 'Mavis', 'yes'),
(127, 'theme_mods_roots', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:18:"primary_navigation";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1388666126;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"sidebar-footer";a:0:{}}}}', 'yes'),
(128, 'theme_switched', '', 'yes'),
(144, '_transient_random_seed', '36c2b0b133ab5c6468029a9f7d79bb28', 'yes'),
(151, 'recently_activated', 'a:4:{s:19:"woodojo/woodojo.php";i:1388424533;s:61:"radio-buttons-for-taxonomies/radio-buttons-for-taxonomies.php";i:1388423146;s:13:"jobs/jobs.php";i:1388422626;s:19:"jetpack/jetpack.php";i:1388422478;}', 'yes'),
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
(255, '_transient_timeout_settings_errors', '1388431105', 'no'),
(256, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:15:"Settings saved.";s:4:"type";s:7:"updated";}}', 'no'),
(258, 'people_role_children', 'a:0:{}', 'yes'),
(259, 'hicpo_options', 'a:1:{s:7:"objects";a:2:{i:0;s:4:"page";i:1;s:6:"people";}}', 'yes'),
(265, '_site_transient_timeout_theme_roots', '1388667880', 'yes'),
(266, '_site_transient_theme_roots', 'a:2:{s:5:"mavis";s:7:"/themes";s:5:"roots";s:7:"/themes";}', 'yes'),
(267, 'theme_mods_mavis', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:18:"primary_navigation";i:2;}}', 'yes'),
(268, 'rewrite_rules', 'a:103:{s:9:"people/?$";s:26:"index.php?post_type=people";s:39:"people/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=people&feed=$matches[1]";s:34:"people/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=people&feed=$matches[1]";s:26:"people/page/([0-9]{1,})/?$";s:44:"index.php?post_type=people&paged=$matches[1]";s:56:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:51:"category/(.+?)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:53:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:48:"tag/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:54:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:49:"type/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"people/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"people/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"people/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"people/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"people/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"people/([^/]+)/trackback/?$";s:33:"index.php?people=$matches[1]&tb=1";s:56:"people/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:45:"index.php?people=$matches[1]&feed=$matches[2]";s:51:"people/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:45:"index.php?people=$matches[1]&feed=$matches[2]";s:35:"people/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?people=$matches[1]&paged=$matches[2]";s:42:"people/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?people=$matches[1]&cpage=$matches[2]";s:27:"people/([^/]+)(/[0-9]+)?/?$";s:45:"index.php?people=$matches[1]&page=$matches[2]";s:23:"people/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"people/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"people/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"people/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"people/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"job/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"job/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"job/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"job/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"job/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:24:"job/([^/]+)/trackback/?$";s:38:"index.php?job_listing=$matches[1]&tb=1";s:32:"job/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?job_listing=$matches[1]&paged=$matches[2]";s:39:"job/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?job_listing=$matches[1]&cpage=$matches[2]";s:24:"job/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?job_listing=$matches[1]&page=$matches[2]";s:20:"job/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:"job/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"job/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"job/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"job/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:41:"feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:27:"index.php?&feed=$matches[1]";s:36:"(feed|rdf|rss|rss2|atom|job_feed)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:50:"comments/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:45:"comments/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:53:"search/(.+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:48:"search/(.+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:56:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:51:"author/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:78:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:73:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:65:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:60:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:52:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:47:"([0-9]{4})/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:49:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:44:"(.?.+?)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:49:"([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:44:"([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(269, '_site_transient_timeout_browser_7a17c8e9493739cee7ef87b61cbec035', '1389271102', 'yes'),
(270, '_site_transient_browser_7a17c8e9493739cee7ef87b61cbec035', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"26.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=186 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 6, '_menu_item_type', 'post_type'),
(3, 6, '_menu_item_menu_item_parent', '0'),
(4, 6, '_menu_item_object_id', '4'),
(5, 6, '_menu_item_object', 'page'),
(6, 6, '_menu_item_target', ''),
(7, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 6, '_menu_item_xfn', ''),
(9, 6, '_menu_item_url', ''),
(10, 7, '_menu_item_type', 'post_type'),
(11, 7, '_menu_item_menu_item_parent', '0'),
(12, 7, '_menu_item_object_id', '2'),
(13, 7, '_menu_item_object', 'page'),
(14, 7, '_menu_item_target', ''),
(15, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(16, 7, '_menu_item_xfn', ''),
(17, 7, '_menu_item_url', ''),
(20, 9, '_edit_last', '1'),
(21, 9, '_edit_lock', '1388666080:1'),
(22, 10, '_wp_attached_file', '2013/12/helen-fleming-portrait.jpg'),
(23, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:403;s:6:"height";i:403;s:4:"file";s:34:"2013/12/helen-fleming-portrait.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"helen-fleming-portrait-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"helen-fleming-portrait-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(24, 10, '_wp_attachment_image_alt', 'Helen Fleming'),
(25, 9, '_thumbnail_id', '10'),
(26, 2, '_edit_lock', '1388408738:1'),
(27, 2, '_edit_last', '1'),
(28, 4, '_edit_lock', '1388410589:1'),
(32, 4, '_edit_last', '1'),
(33, 4, '_wp_page_template', 'default'),
(34, 16, '_edit_last', '1'),
(35, 16, '_edit_lock', '1388403190:1'),
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
(73, 43, '_edit_lock', '1388429682:1'),
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
(85, 44, '_edit_lock', '1388494014:1'),
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
(100, 55, '_edit_lock', '1388429742:1'),
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
(136, 58, '_edit_lock', '1388430007:1'),
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
(148, 59, '_edit_lock', '1388430074:1'),
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
(159, 60, '_edit_last', '1'),
(160, 60, '_edit_lock', '1388430106:1'),
(161, 60, '_job_expires', '2014-01-29'),
(162, 60, '_job_location', 'New York'),
(163, 60, '_application', ''),
(164, 60, '_company_name', ''),
(165, 60, '_company_website', ''),
(166, 60, '_company_tagline', ''),
(167, 60, '_company_twitter', ''),
(168, 60, '_company_logo', ''),
(169, 60, '_filled', '0'),
(170, 60, '_featured', '0'),
(171, 62, '_menu_item_type', 'post_type'),
(172, 62, '_menu_item_menu_item_parent', '0'),
(173, 62, '_menu_item_object_id', '47'),
(174, 62, '_menu_item_object', 'page'),
(175, 62, '_menu_item_target', ''),
(176, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(177, 62, '_menu_item_xfn', ''),
(178, 62, '_menu_item_url', ''),
(180, 63, '_edit_last', '1'),
(181, 63, '_edit_lock', '1388430664:1'),
(182, 64, '_wp_attached_file', '2013/12/melissa-phillips-portrait.jpg'),
(183, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:403;s:6:"height";i:403;s:4:"file";s:37:"2013/12/melissa-phillips-portrait.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"melissa-phillips-portrait-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"melissa-phillips-portrait-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(184, 64, '_wp_attachment_image_alt', 'Melissa Phillips'),
(185, 63, '_thumbnail_id', '64');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2013-12-30 09:16:53', '2013-12-30 09:16:53', '<blockquote>"Inspired by my gran, Mavis, I wanted to bring a personal touch to the world of recruitment. She was a warm, creative and successful lady, very generous with advice and hot beverages, and always there when you needed her"</blockquote>\r\n– Helen Fleming, Creator of Mavis', 'About', '', 'publish', 'open', 'open', '', 'about', '', '', '2013-12-30 13:07:11', '2013-12-30 13:07:11', '', 0, 'http://hellomavis.local/?page_id=2', 4, 'page', '', 0),
(4, 1, '2013-12-30 09:31:00', '2013-12-30 09:31:00', 'Mavis looks after talented people in the digital creative Industry, finding them great roles in good-to-work-for agencies', 'Overview', '', 'publish', 'open', 'open', '', 'home', '', '', '2013-12-30 13:37:53', '2013-12-30 13:37:53', '', 0, 'http://hellomavis.local/?page_id=4', 1, 'page', '', 0),
(6, 1, '2013-12-30 09:31:00', '2013-12-30 09:31:00', ' ', '', 'Overview', 'publish', 'open', 'open', '', '6', '', '', '2014-01-02 12:35:59', '2014-01-02 12:35:59', '', 0, 'http://hellomavis.local/6/', 1, 'nav_menu_item', '', 0),
(7, 1, '2013-12-30 09:31:00', '2013-12-30 09:31:00', ' ', '', 'About', 'publish', 'open', 'open', '', '7', '', '', '2014-01-02 12:35:59', '2014-01-02 12:35:59', '', 0, 'http://hellomavis.local/7/', 4, 'nav_menu_item', '', 0),
(9, 1, '2013-12-30 11:08:47', '2013-12-30 11:08:47', 'I began my career as a designer and gained valuable experience in a number of London-based design agencies before spending several years at leading creative recruitment consultancies, where I specialised in the digital sector. The combination of direct industry and recruitment experience gave me the confidence and know-how to create Mavis. Here I can concentrate on what I do best: looking after digital talent and finding the right candidate for the right role.\r\n\r\nI enjoy working with clever creative thinkers and designers at all levels. I have previously advised young talent at advertising and design universities, and led many graduate portfolio days with key industry figures. My design background gives me an instinctive understanding of candidates, and the ability to evaluate portfolios and give career advice, building long-lasting relationships along the way. My inability to turn down an invite ensures that I regularly attend industry events, talks and award ceremonies.\r\n\r\nYou can see my full <a title="Helen Fleming on LinkedIn" href="http://uk.linkedin.com/in/helenlfleming" target="_blank">CV</a> on <a title="Helen Fleming on LinkedIn" href="http://uk.linkedin.com/in/helenlfleming" target="_blank">Linkedin</a>.\r\n\r\nI still love making, drawing and photographing, and you can see what I’ve been doing on <a title="Helen Fleming on Instagram" href="http://instagram.com" target="_blank">Instagram</a> and what I love on <a title="Helen Fleming on Flickr" href="http://flickr.com" target="_blank">Flickr</a>.', 'Helen Fleming', '', 'publish', 'closed', 'closed', '', 'helen-fleming', '', '', '2014-01-02 12:36:33', '2014-01-02 12:36:33', '', 0, 'http://hellomavis.local/?post_type=people&#038;p=9', 1, 'people', '', 0),
(10, 1, '2013-12-30 11:09:39', '2013-12-30 11:09:39', '', 'Helen Fleming', '', 'inherit', 'open', 'open', '', 'helen-fleming-portrait', '', '', '2013-12-30 11:09:39', '2013-12-30 11:09:39', '', 9, 'http://hellomavis.local//media//2013/12/helen-fleming-portrait.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2013-12-30 11:28:10', '2013-12-30 11:28:10', '[one_half]\r\n\r\nWe are an independent digital recruitment agency that loves to find the best talent for clients and the right opportunities for candidates.\r\n\r\nWith a large talent network and a lot of industry know-how, we respond to client briefs and candidate requirements intelligently, creatively, efficiently and without fuss.\r\n\r\nMavis works with the best digital design, advertising and interaction agencies in the UK and Europe.\r\n\r\n[/one_half]\r\n\r\n[one_half_last]\r\n\r\nWe find great roles for freelance and full time:\r\n<ul>\r\n	<li>Art directors</li>\r\n	<li>Creative directors</li>\r\n	<li>Creative teams</li>\r\n	<li>Designers</li>\r\n	<li>UX &amp; UI designers</li>\r\n	<li>Copywriters</li>\r\n	<li>Producers</li>\r\n</ul>\r\n&nbsp;\r\n\r\n[/one_half_last]', 'Working together', '', 'publish', 'open', 'open', '', 'working-together', '', '', '2013-12-30 11:34:28', '2013-12-30 11:34:28', '', 0, 'http://hellomavis.local/?page_id=16', 2, 'page', '', 0),
(19, 1, '2013-12-30 11:28:35', '2013-12-30 11:28:35', ' ', '', 'Working together', 'publish', 'open', 'open', '', '19', '', '', '2014-01-02 12:35:59', '2014-01-02 12:35:59', '', 0, 'http://hellomavis.local/?p=19', 2, 'nav_menu_item', '', 0),
(33, 1, '2013-12-30 12:23:50', '2013-12-30 12:23:50', 'Extremely creative studio based in central London seek part time Studio Manager for a 3 day a week contract.\r\n\r\nThis much lauded business publishes 2 award winning fashion magazines bi-annually and is known for its'' writing voice and use of photography.\r\n\r\nThe office manager will organise and supervise all the daily administrative activities that facilitate the smooth running of the office.\r\n\r\nThis will involve organising the daily activities of the office including;\r\n<ul>\r\n	<li>Management of office IT.</li>\r\n	<li>Managing filing systems.</li>\r\n	<li>Recording office expenditure.</li>\r\n	<li>Managing accounts and budgets</li>\r\n	<li>Providing support to and liaising with the accountants.</li>\r\n	<li>Maintaining the office, ordering office supplies, maintaing the condition of the office and arranging for necessary repairs;</li>\r\n	<li>Overseeing the induction of new staff members.</li>\r\n	<li>Responding to general queries to the office.</li>\r\n	<li>Logistics management.</li>\r\n</ul>\r\nWe are looking for someone with strong MAC I.T. skills, some bookkeeping experience, good fashion knowledge and some previous office management experience.', 'Digital Marketing Assistant', '', 'trash', 'closed', 'closed', '', 'digital-marketing-assistant', '', '', '2013-12-30 16:56:49', '2013-12-30 16:56:49', '', 0, 'http://hellomavis.local/?post_type=jobs&#038;p=33', 0, 'jobs', '', 0),
(43, 1, '2013-12-30 17:11:13', '2013-12-30 17:11:13', 'Extremely creative studio based in central London seek part time Studio Manager for a 3 day a week contract.\r\n\r\nThis much lauded business publishes 2 award winning fashion magazines bi-annually and is known for its'' writing voice and use of photography.\r\n\r\nThe office manager will organise and supervise all the daily administrative activities that facilitate the smooth running of the office.\r\n\r\nThis will involve organising the daily activities of the office including;\r\n<ul>\r\n	<li>Management of office IT.</li>\r\n	<li>Managing filing systems.</li>\r\n	<li>Recording office expenditure.</li>\r\n	<li>Managing accounts and budgets</li>\r\n	<li>Providing support to and liaising with the accountants.</li>\r\n	<li>Maintaining the office, ordering office supplies, maintaing the condition of the office and arranging for necessary repairs;</li>\r\n	<li>Overseeing the induction of new staff members.</li>\r\n	<li>Responding to general queries to the office.</li>\r\n	<li>Logistics management.</li>\r\n</ul>\r\nWe are looking for someone with strong Mac I.T. skills, some bookkeeping experience, good fashion knowledge and some previous office management experience.', 'Digital Marketing Assistant', '', 'publish', 'closed', 'closed', '', 'digital-marketing-assistant', '', '', '2013-12-30 17:11:13', '2013-12-30 17:11:13', '', 0, 'http://hellomavis.local/?post_type=job_listing&#038;p=43', 7, 'job_listing', '', 0),
(44, 1, '2013-12-30 17:17:01', '2013-12-30 17:17:01', '[jobs]', 'Jobs', '', 'publish', 'open', 'open', '', 'jobs', '', '', '2013-12-31 12:46:53', '2013-12-31 12:46:53', '', 0, 'http://hellomavis.local/?page_id=44', 3, 'page', '', 0),
(46, 1, '2013-12-30 17:17:35', '2013-12-30 17:17:35', ' ', '', '', 'publish', 'open', 'open', '', '46', '', '', '2014-01-02 12:35:59', '2014-01-02 12:35:59', '', 0, 'http://hellomavis.local/?p=46', 3, 'nav_menu_item', '', 0),
(47, 1, '2013-12-30 17:23:21', '2013-12-30 17:23:21', '[people]', 'People', '', 'publish', 'open', 'open', '', 'people', '', '', '2013-12-30 18:55:40', '2013-12-30 18:55:40', '', 0, 'http://hellomavis.local/?page_id=47', 5, 'page', '', 0),
(55, 1, '2013-12-30 18:57:34', '2013-12-30 18:57:34', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Digital Marketing Assistant', '', 'publish', 'closed', 'closed', '', 'digital-marketing-assistant-2', '', '', '2013-12-30 18:57:34', '2013-12-30 18:57:34', '', 0, 'http://hellomavis.local/?post_type=job_listing&#038;p=55', 6, 'job_listing', '', 0),
(56, 1, '2013-12-30 18:57:59', '2013-12-30 18:57:59', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'UX / UI Designer', '', 'publish', 'closed', 'closed', '', 'ux-ui-designer', '', '', '2013-12-30 18:57:59', '2013-12-30 18:57:59', '', 0, 'http://hellomavis.local/?post_type=job_listing&#038;p=56', 5, 'job_listing', '', 0),
(57, 1, '2013-12-30 18:58:47', '2013-12-30 18:58:47', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Creative Director', '', 'publish', 'closed', 'closed', '', 'creative-director', '', '', '2013-12-30 18:58:47', '2013-12-30 18:58:47', '', 0, 'http://hellomavis.local/?post_type=job_listing&#038;p=57', 4, 'job_listing', '', 0),
(58, 1, '2013-12-30 19:01:57', '2013-12-30 19:01:57', '', 'Digital Producer', '', 'publish', 'closed', 'closed', '', 'digital-producer', '', '', '2013-12-30 19:01:57', '2013-12-30 19:01:57', '', 0, 'http://hellomavis.local/?post_type=job_listing&#038;p=58', 3, 'job_listing', '', 0),
(59, 1, '2013-12-30 19:03:05', '2013-12-30 19:03:05', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Account Manager', '', 'publish', 'closed', 'closed', '', 'account-manager', '', '', '2013-12-30 19:03:05', '2013-12-30 19:03:05', '', 0, 'http://hellomavis.local/?post_type=job_listing&#038;p=59', 2, 'job_listing', '', 0),
(60, 1, '2013-12-30 19:03:37', '2013-12-30 19:03:37', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Tea Boy', '', 'publish', 'closed', 'closed', '', 'tea-boy', '', '', '2013-12-30 19:03:37', '2013-12-30 19:03:37', '', 0, 'http://hellomavis.local/?post_type=job_listing&#038;p=60', 1, 'job_listing', '', 0),
(62, 1, '2013-12-30 19:10:20', '2013-12-30 19:10:20', ' ', '', '', 'publish', 'open', 'open', '', '62', '', '', '2014-01-02 12:35:59', '2014-01-02 12:35:59', '', 0, 'http://hellomavis.local/?p=62', 5, 'nav_menu_item', '', 0),
(63, 1, '2013-12-30 19:11:31', '2013-12-30 19:11:31', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Melissa Phillips', '', 'publish', 'closed', 'closed', '', 'melissa-phillips', '', '', '2013-12-30 19:12:36', '2013-12-30 19:12:36', '', 0, 'http://hellomavis.local/?post_type=people&#038;p=63', 2, 'people', '', 0),
(64, 1, '2013-12-30 19:11:18', '2013-12-30 19:11:18', '', 'Melissa Phillips', '', 'inherit', 'open', 'open', '', 'melissa-phillips-portrait', '', '', '2013-12-30 19:11:18', '2013-12-30 19:11:18', '', 63, 'http://hellomavis.local//media//2013/12/melissa-phillips-portrait.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2013-12-31 12:30:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-12-31 12:30:09', '0000-00-00 00:00:00', '', 0, 'http://hellomavis.local/?p=65', 0, 'post', '', 0),
(66, 1, '2013-12-31 12:45:56', '2013-12-31 12:45:56', '[job_dashboard]', 'Jobs', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2013-12-31 12:45:56', '2013-12-31 12:45:56', '', 44, 'http://hellomavis.local/44-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2013-12-31 12:46:30', '2013-12-31 12:46:30', '[job_dashboard per_page="5"]', 'Jobs', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2013-12-31 12:46:30', '2013-12-31 12:46:30', '', 44, 'http://hellomavis.local/44-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2013-12-31 12:46:45', '2013-12-31 12:46:45', '[job]', 'Jobs', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2013-12-31 12:46:45', '2013-12-31 12:46:45', '', 44, 'http://hellomavis.local/44-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2013-12-31 12:46:53', '2013-12-31 12:46:53', '[jobs]', 'Jobs', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2013-12-31 12:46:53', '2013-12-31 12:46:53', '', 44, 'http://hellomavis.local/44-revision-v1/', 0, 'revision', '', 0);

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
(6, 2, 0),
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
(62, 2, 0);

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
(21, 20, 'job_listing_type', '', 0, 1),
(22, 4, 'job_listing_category', '', 0, 1),
(23, 5, 'job_listing_category', '', 0, 0),
(24, 6, 'job_listing_category', '', 0, 1),
(25, 7, 'job_listing_category', '', 0, 0),
(26, 8, 'job_listing_category', '', 0, 0),
(27, 9, 'job_listing_category', '', 0, 3),
(28, 10, 'job_listing_category', '', 0, 1),
(29, 11, 'job_listing_category', '', 0, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'hellomavis'),
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
(14, 1, 'wp_dashboard_quick_press_last_post_id', '65'),
(15, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&editor=tinymce&hidetb=0'),
(16, 1, 'wp_user-settings-time', '1388493985'),
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
(32, 1, 'metaboxhidden_job_listing', 'a:2:{i:0;s:10:"postcustom";i:1;s:7:"slugdiv";}');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'hellomavis', '$P$Bc2cX1G/spt5UOPphF2Ahl0sUzAcHj1', 'hellomavis', 'webmaster@hellomavis.com', '', '2013-12-30 09:16:53', '', 0, 'hellomavis');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
