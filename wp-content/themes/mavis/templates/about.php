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