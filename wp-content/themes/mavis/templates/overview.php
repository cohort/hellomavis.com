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