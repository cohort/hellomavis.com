<?php wp_enqueue_script( 'mavis-job-manager-ajax-filters' ) ; ?>
<?php wp_enqueue_script( 'wp-job-manager-ajax-filters' ) ; ?>

<form class="job_filters">

	<div class="search_jobs">
		<?php do_action( 'job_manager_job_filters_search_jobs_start' , $atts ) ; ?>

		<?php if ( $categories ) : ?>
			<?php foreach ( $categories as $category ) : ?>
				<input type="hidden" name="search_categories[]" value="<?php echo sanitize_title( $category ) ; ?>" />
			<?php endforeach; ?>
		<?php elseif ( $show_categories && get_option( 'job_manager_enable_categories' ) && ! is_tax( 'job_listing_category' ) ) : ?>
			<div class="search_categories">
				<label for="search_categories"><?php _e( 'Category', 'job_manager' ); ?></label>
				<?php wp_dropdown_categories( array( 'taxonomy' => 'job_listing_category' , 'hierarchical' => 1 , 'show_option_all' => __( 'View All' , 'job_manager' ) , 'name' => 'search_categories' ) ) ; ?>
			</div>
		<?php endif; ?>

		<?php if ( ! is_tax( 'job_listing_type' ) && empty( $job_types ) ) : ?>
			<div class="search_types">
				<label for="search_types"><?php _e( 'Category', 'job_manager' ) ; ?></label>
				<?php wp_dropdown_categories( array( 'taxonomy' => 'job_listing_type' , 'hierarchical' => 1 , 'show_option_all' => __( 'View All' , 'job_manager' ) , 'name' => 'search_types' ) ) ; ?>
			</div>
			<ul class="job_types">
			<?php foreach ( get_job_listing_types( ) as $type ) : ?>
				<li>
					<input type="checkbox" name="filter_job_type[]" value="<?php echo $type->slug ; ?>" <?php checked( 1 , 1 ) ; ?> id="job_type_<?php echo $type->term_id ; ?>" />
				</li>
			<?php endforeach ; ?>
			</ul>
		<?php elseif ( $job_types ) : ?>
			<?php foreach ( $job_types as $job_type ) : ?>
				<input type="hidden" name="filter_job_type[]" value="<?php echo sanitize_title( $job_type ) ; ?>" />
			<?php endforeach ; ?>
		<?php endif ; ?>

		<?php do_action( 'job_manager_job_filters_search_jobs_end' , $atts ) ; ?>
	</div>

</form>