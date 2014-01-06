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
			<div class="detail address col-md-3 col-sm-6">
				<div class="icon">
					<?php $icon = get_field( 'address_icon' ) ; ?>
					<img src="<?php echo $icon[ 'url' ] ; ?>" alt="<?php echo $icon[ 'alt' ] ; ?>" />
				</div>
				<div class="copy"><?php echo the_field( 'address' , $post->ID ) ; ?></div>
			</div>
			<div class="detail email-address col-md-3 col-sm-6">
				<div class="icon">
					<?php $icon = get_field( 'email_address_icon' ) ; ?>
					<img src="<?php echo $icon[ 'url' ] ; ?>" alt="<?php echo $icon[ 'alt' ] ; ?>" />
				</div>
				<div class="copy">
					<a href="mailto:<?php echo the_field( 'email_address' , $post->ID ) ; ?>"><?php echo the_field( 'email_address' , $post->ID ) ; ?></a>
				</div>
			</div>
			<div class="detail telephone-numbers col-md-3 col-sm-6">
				<div class="icon">
					<?php $icon = get_field( 'telephone_numbers_icon' ) ; ?>
					<img src="<?php echo $icon[ 'url' ] ; ?>" alt="<?php echo $icon[ 'alt' ] ; ?>" />
				</div>
				<div class="copy"><?php echo the_field( 'telephone_numbers' , $post->ID ) ; ?></div>
			</div>
			<div class="detail skype-name col-md-3 col-sm-6">
				<div class="icon">
					<?php $icon = get_field( 'skype_name_icon' ) ; ?>
					<img src="<?php echo $icon[ 'url' ] ; ?>" alt="<?php echo $icon[ 'alt' ] ; ?>" />
				</div>
				<div class="copy"><?php echo the_field( 'skype_name' , $post->ID ) ; ?></div>
			</div>
		</div>
		<div class="social row">
			<div class="header-copy"><?php echo the_field( 'header_copy' , $post->ID ) ; ?></div>
			<ul>
				<?php if ( get_field( 'facebook' , $post->ID ) && get_field( 'facebook_icon' , $post->ID ) ) : ?>
				<li>
					<a href="<?php echo the_field( 'facebook' , $post->ID ) ; ?>" title="Facebook">
						<?php $icon = get_field( 'facebook_icon' ) ; ?>
						<img src="<?php echo $icon[ 'url' ] ; ?>" alt="<?php echo $icon[ 'alt' ] ; ?>" />
					</a>
				</li>
				<?php endif ; ?>
				<?php if ( get_field( 'twitter' , $post->ID ) && get_field( 'twitter_icon' , $post->ID ) ) : ?>
				<li>
					<a href="<?php echo the_field( 'twitter' , $post->ID ) ; ?>" title="Twitter">
						<?php $icon = get_field( 'twitter_icon' ) ; ?>
						<img src="<?php echo $icon[ 'url' ] ; ?>" alt="<?php echo $icon[ 'alt' ] ; ?>" />
					</a>
				</li>
				<?php endif ; ?>
				<?php if ( get_field( 'linkedin' , $post->ID ) && get_field( 'linkedin_icon' , $post->ID ) ) : ?>
				<li>
					<a href="<?php echo the_field( 'linkedin' , $post->ID ) ; ?>" title="LinkedIn">
						<?php $icon = get_field( 'linkedin_icon' ) ; ?>
						<img src="<?php echo $icon[ 'url' ] ; ?>" alt="<?php echo $icon[ 'alt' ] ; ?>" />
					</a>
				</li>
				<?php endif ; ?>
				<?php if ( get_field( 'pinterest' , $post->ID ) && get_field( 'pinterest_icon' , $post->ID ) ) : ?>
				<li>
					<a href="<?php echo the_field( 'pinterest' , $post->ID ) ; ?>" title="Pinterest">
						<?php $icon = get_field( 'pinterest_icon' ) ; ?>
						<img src="<?php echo $icon[ 'url' ] ; ?>" alt="<?php echo $icon[ 'alt' ] ; ?>" />
					</a>
				</li>
				<?php endif ; ?>
				<?php if ( get_field( 'flickr' , $post->ID ) && get_field( 'flickr_icon' , $post->ID ) ) : ?>
				<li>
					<a href="<?php echo the_field( 'flickr' , $post->ID ) ; ?>" title="Flickr">
						<?php $icon = get_field( 'flickr_icon' ) ; ?>
						<img src="<?php echo $icon[ 'url' ] ; ?>" alt="<?php echo $icon[ 'alt' ] ; ?>" />
					</a>
				</li>
				<?php endif ; ?>
				<?php if ( get_field( 'instagram' , $post->ID ) && get_field( 'instagram_icon' , $post->ID ) ) : ?>
				<li>
					<a href="<?php echo the_field( 'instagram' , $post->ID ) ; ?>" title="Instagram">
						<?php $icon = get_field( 'instagram_icon' ) ; ?>
						<img src="<?php echo $icon[ 'url' ] ; ?>" alt="<?php echo $icon[ 'alt' ] ; ?>" />
					</a>
				</li>
				<?php endif ; ?>
			</ul>
		</div>
	</div>	

</section>