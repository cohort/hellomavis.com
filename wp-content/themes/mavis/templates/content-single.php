<?php while ( have_posts( ) ) : the_post( ) ; ?>
<article <?php post_class( ) ; ?>>
	<div class="logo">
		<div class="logo-image">
			<img src="<?php echo get_stylesheet_directory_uri( ) ; ?>/assets/css/images/logo.png" alt="Mavis Logo" />
		</div>
	</div>
	<header>
		<h1 class="entry-title"><?php the_title( ) ; ?></h1>
	</header>
	<div class="entry-content">
		<?php if ( has_post_thumbnail( ) ) : ?>
			<div class="row">
				<div class="portrait col-md-4 col-sm-12">
					<?php the_post_thumbnail( 'full' ) ; ?>
				</div>
				<div class="col-md-8 col-sm-12">
					<?php the_content( ) ; ?>
				</div>
			</div>
		<?php else : ?>
			<?php the_content( ) ; ?>
		<?php endif ; ?>
	</div>
</article>
<?php endwhile; ?>