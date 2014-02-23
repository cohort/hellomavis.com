<?php global $job_manager; ?>

<div class="single_job_listing">
	<?php if ( $post->post_status == 'expired' ) : ?>

		<div class="job-manager-info"><?php _e( 'This job listing has expired' , 'job_manager' ) ; ?></div>

	<?php else : ?>

		<div class="details row">
			<div class="detail col-md-4 col-sm-4">
				<div class="field">Location</div>
				<div class="value"><?php the_job_location( ) ; ?></div>
			</div>
			<div class="detail col-md-4 col-sm-4">
				<div class="field">Job Term</div>
				<div class="value"><?php the_job_type( ) ; ?></div>
			</div>
			<div class="detail col-md-4 col-sm-4">
			<?php if ( $post->_job_salary ) : ?>
				<div class="field">Salary</div>
				<div class="value"><?php echo $post->_job_salary ; ?></div>
			<?php elseif ( $post->_job_day_rate ) : ?>
				<div class="field">Day Rate</div>
				<div class="value"><?php echo $post->_job_day_rate ; ?></div>
			<?php endif ; ?>
			</div>
		</div>

		<div class="content row">
			<?php the_content( ) ; ?>
		</div>

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

		<div class="apply">
			<div class="heading row">
				<h2>How to apply</h2>
				<div>For this and any other role we have to offer, please feel free to call or email.</div>
			</div>
			<div class="contact row">
				<div class="detail email-address col-md-4 col-sm-12">
					<div class="icon">
						<?php $icon = get_field( 'email_address_icon' ) ; ?>
						<img src="<?php echo $icon[ 'url' ] ; ?>" alt="<?php echo $icon[ 'alt' ] ; ?>" />
					</div>
					<div class="copy">
						<?php echo the_field( 'email_address' , $post->ID ) ; ?>
					</div>
				</div>
				<div class="detail telephone-numbers col-md-4 col-sm-12">
					<div class="icon">
						<?php $icon = get_field( 'telephone_numbers_icon' ) ; ?>
						<img src="<?php echo $icon[ 'url' ] ; ?>" alt="<?php echo $icon[ 'alt' ] ; ?>" />
					</div>
					<div class="copy"><?php echo the_field( 'telephone_numbers' , $post->ID ) ; ?></div>
				</div>
				<div class="detail skype-name col-md-4 col-sm-12">
					<div class="icon">
						<?php $icon = get_field( 'skype_name_icon' ) ; ?>
						<img src="<?php echo $icon[ 'url' ] ; ?>" alt="<?php echo $icon[ 'alt' ] ; ?>" />
					</div>
					<div class="copy"><?php echo the_field( 'skype_name' , $post->ID ) ; ?></div>
				</div>
			</div>
		</div>

	<?php endif ; ?>
</div>