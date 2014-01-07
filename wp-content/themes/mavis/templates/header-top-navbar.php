<header class="banner navbar navbar-default navbar-static-top" role="banner">
	<div class="container under">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
	</div>
	<div class="container over fade-hidden">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<div class="navbar-brand" data-toggle="collapse" data-target=".navbar-collapse"></div>
		</div>
		<nav class="collapse navbar-collapse" role="navigation">
		<?php
			if ( has_nav_menu( 'primary_navigation' ) ) :
			wp_nav_menu( array( 'theme_location' => 'primary_navigation' , 'menu_class' => 'nav navbar-nav' ) ) ;
			endif ;
		?>
		</nav>
	</div>
</header>
