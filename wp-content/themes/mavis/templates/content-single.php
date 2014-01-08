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
		<?php the_content( ) ; ?>
	</div>
</article>
<?php endwhile; ?>