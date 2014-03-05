<!-- OVERVIEW -->
<section id="overview" class="overview">
	<div class="logo">
		<div class="logo-image">
			<img src="<?php echo get_stylesheet_directory_uri( ) ; ?>/assets/css/images/logo.png" alt="Mavis Logo" />
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
			<li>
				<div class="slide">
					<?php
						$background_colour = get_field( 'background_colour' , $child->ID ) ;
						$background_image = get_field( 'background_image' , $child->ID ) ;
					?>
					<div class="slide-background" style="background-color: <?php echo $background_colour ; ?> !important;background-image: url('<?php echo $background_image[ 'url' ] ; ?>') !important"></div>
					<div class="slide-content">
						<div class="<?php echo $child->post_name ; ?>"><?php echo do_shortcode( wpautop( $child->post_content , TRUE ) ) ; ?></div>
					</div>
					<div class="link">
						<a href="<?php echo the_field( 'page-link-url' , $child->ID ) ; ?>" title="About"><?php echo the_field( 'page-link-title' , $child->ID ) ; ?></a>
					</div>
				</div>
			</li>
			<?php endforeach ; ?>

		</ul>
	</div>

	<?php } ?>

</section>

