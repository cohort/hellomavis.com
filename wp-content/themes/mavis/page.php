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

<!-- WORKING TOGETHER -->
<section class="working-together">

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

	<div class="inner">
		<div class="title">
			<h1><?php the_title( ) ; ?></h1>
		</div>
		<div class="content"><?php echo do_shortcode( $post->post_content ) ; ?></div>
	</div>

</section>

<!-- JOBS -->
<section class="jobs">
	
	<?php

		$args = array(
			'name' => 'jobs' ,
			'post_type' => 'page' ,
			'post_status' => 'publish' ,
			'showposts' => 1 ,
			'caller_get_posts' => 1
		) ;

		$posts = get_posts( $args ) ;
		$post = $posts[ 0 ] ;

	?>

	<div class="inner container">
		<div class="title">
			<h1><?php the_title( ) ; ?></h1>
		</div>
		<div class="content"><?php echo do_shortcode( $post->post_content ) ; ?></div>
	</div>

</section>

<!-- ABOUT -->
<section class="about">

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
		
		global $more ;

		foreach ( $posts as $post ) :
			the_post( ) ;
	?>
		<div class="person row">
			<?php $portrait = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ) , 'full' ) ; ?>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<div class="portrait">
					<img src="<?php echo $portrait[ 0 ] ; ?>" alt="<?php the_title( ) ; ?>" />
				</div>
			</div>
			<div class="col-md-8 col-sm-6 col-xs-12">
				<h2 class="name"><?php the_title( ) ; ?></h2>
				<div class="bio"><?php $more = 0 ; the_content( '+ Read more' ) ; ?></div>
			</div>
		</div>
	<?php endforeach ; ?>

</section>

<!-- CONTACT -->
<section class="contact">

	<?php

		$args = array(
			'name' => 'contact' ,
			'post_type' => 'page' ,
			'post_status' => 'publish' ,
			'showposts' => 1 ,
			'caller_get_posts' => 1
		) ;

		$posts = get_posts( $args ) ;
		$post = $posts[ 0 ] ;

	?>

	<div class="inner container">
		<div class="title">
			<h1><?php the_title( ) ; ?></h1>
		</div>
		<div class="content"><?php echo do_shortcode( $post->post_content ) ; ?></div>
		<div class="details row">
			<div class="col-md-3 col-sm-6">
				<?php echo the_field( 'address' , $post->ID ) ; ?>
			</div>
			<div class="col-md-3 col-sm-6">
				<?php echo the_field( 'email_address' , $post->ID ) ; ?>
				
			</div>
			<div class="col-md-3 col-sm-6">
				<?php echo the_field( 'telephone_numbers' , $post->ID ) ; ?>
				
			</div>
			<div class="col-md-3 col-sm-6">
				<?php echo the_field( 'skype_name' , $post->ID ) ; ?>
			</div>
		</div>
		<div class="social row">
			<!-- TODO -->
		</div>
	</div>	

</section>