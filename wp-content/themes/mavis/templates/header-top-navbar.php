<header class="banner navbar navbar-default navbar-static-top hidden" role="banner">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<div class="navbar-brand" data-toggle="collapse" data-target=".navbar-collapse"></div>
		</div>

		<nav class="collapse navbar-collapse" role="navigation" data-toggle="collapse" data-target=".navbar-collapse">
		<?php
			if ( has_nav_menu( 'primary_navigation' ) ) :
			wp_nav_menu( array( 'theme_location' => 'primary_navigation' , 'menu_class' => 'nav navbar-nav' ) ) ;
			endif ;
		?>
		</nav>
	</div>
</header>
