<!-- WORKING TOGETHER -->
<section id="working-together" class="working-together">

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