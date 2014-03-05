<!-- ABOUT -->
<section id="about" class="about">

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
		<div class="content"><?php echo do_shortcode( wpautop( $post->post_content , TRUE ) ) ; ?></div>
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
			<div class="column col-md-5 col-sm-5 col-xs-12">
				<div class="portrait">
					<img src="<?php echo $portrait[ 0 ] ; ?>" alt="<?php the_title( ) ; ?>" />
				</div>
			</div>
			<div class="column col-md-7 col-sm-7 col-xs-12">
				<h2 class="name"><?php the_title( ) ; ?></h2>
				<div class="bio">
					<div class="teaser">
						<?php $more = 0 ; the_content( '' , FALSE ) ; ?>
					</div>
					<div class="more">
						<?php $more = 1 ; the_content( '' , TRUE ) ; ?>
					</div>
					<div class="links">
						<a href="<?php echo get_permalink( $post->ID ) ; ?>" class="more-link">+ Read more</a>
						<a href="<?php echo site_url( 'about' ) ; ?>" class="close-link hidden">- Close</a>
					</div>
				</div>
			</div>
		</div>
	<?php endforeach ; ?>

	</div>
</section>

