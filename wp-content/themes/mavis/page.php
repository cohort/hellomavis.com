<!-- OVERVIEW -->
<section class="overview">
	<div class="logo">
		<div class="logo-image">
			<img src="<?php echo get_header_image( ) ; ?>" alt="Mavis Logo" />
		</div>
	</div>

	<?php

		$args = array(
			'name' => 'overview' ,
			'post_type' => 'page' ,
			'post_status' => 'publish' ,
			'showposts' => 1 ,
			'caller_get_posts' => 1
		) ;

		$posts = get_posts( $args ) ;

		if ( $posts )
		{
			$children = get_children( $posts[ 0 ]->ID ) ;

	?>

	<div class="flexslider">
		<ul class="slides">

			<?php foreach ( $children as $child ) : ?>
			<?php 
				$content = $child->post_content ;
				$background = wp_get_attachment_image_src( get_post_thumbnail_id( $child->ID ) , 'full' ) ;
			?>
			<li>
				<div class="slide">
					<div class="slide-background">
						<img src="<?php echo $background[ 0 ] ; ?>" />
					</div>
					<div class="slide-content">
						<div><?php echo do_shortcode( $content ) ; ?></div>
						<div class="link">
							<a href="<?php echo the_field( 'page-link-url' , $child->ID ) ; ?>" title="About"><?php echo the_field( 'page-link-title' , $child->ID ) ; ?></a>
						</div>
					</div>
				</div>
			</li>
			<?php endforeach ; ?>

		</ul>
	</div>

	<?php } ?>

</section>

<?php

	$args = array(
		'name' => 'working-together' ,
		'post_type' => 'page' ,
		'post_status' => 'publish' ,
		'showposts' => 1 ,
		'caller_get_posts' => 1
	) ;

	$posts = get_posts( $args ) ;
	$post = $posts[ 0 ] ;

?>

<!-- WORKING TOGETHER -->
<section class="working-together">
	<div class="inner">
		<div class="title">
			<h1><?php the_title( ) ; ?></h1>
		</div>
		<div class="content"><?php echo do_shortcode( $post->post_content ) ; ?></div>
	</div>
</section>

<!-- JOBS -->
<section class="jobs">
	<!-- TODO -->
</section>

<?php

	$args = array(
		'name' => 'about' ,
		'post_type' => 'page' ,
		'post_status' => 'publish' ,
		'showposts' => 1 ,
		'caller_get_posts' => 1
	) ;

	$posts = get_posts( $args ) ;
	$post = $posts[ 0 ] ;

?>

<!-- ABOUT -->
<section class="about">
	<div class="quote">
		<div class="title">
			<h1><?php the_title( ) ; ?></h1>
		</div>
		<div class="content"><?php echo do_shortcode( $post->post_content ) ; ?></div>
	</div>
	<div class="people container">
	<?php

		$args = array(
			'post_type' => 'people' ,
			'post_status' => 'publish'
		) ;

		$posts = get_posts( $args ) ;

		foreach ( $posts as $post ) :
			the_post( ) ;
	?>
		<div class="person row">
			<?php $portrait = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ) , 'full' ) ; ?>
			<div class="col-md-4">
				<div class="portrait">
					<img src="<?php echo $portrait[ 0 ] ; ?>" alt="<?php the_title( ) ; ?>" />
				</div>
			</div>
			<div class="col-md-8">
				<h2 class="name"><?php the_title( ) ; ?></h2>
				<div class="bio"><?php the_excerpt( ) ; ?></div>
			</div>
		</div>
	<?php endforeach ; ?>
</section>