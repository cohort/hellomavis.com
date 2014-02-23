$( document ).ready(
	function ( )
	{
		var state = window.location.pathname.substring( 1 ).replace( /\//g , '' ) ,
			hash = window.location.hash ,
			isScrolling = false ,
			canScroll = false ,
			timeout = null ,
			title = $( 'title' ).text( ) ,
			slider = $( '.flexslider' ) ;

		if ( slider.length )
		{
			slider.flexslider( {
				animation : 'slide' ,
				directionNav : false ,
				slideshowSpeed : 10000 ,
				start : init ,
				before : beforeSlide ,
				after : afterSlide
			} ) ;
		}
		else
		{
			init( ) ;
		}

		$( window ).scroll(
			function ( )
			{
				menu( ) ;

				if ( isScrolling ) return ;

				var page = $( "section:in-viewport:first" ).attr( "id" ) ;
				pushState( page ) ;
			}
		) ;
		
		$( window ).resize( update ) ;

		$( 'a' ).click(
			function ( e )
			{
				var href = $( this ).attr( 'href' ) ,
					http = new RegExp( 'http://' ).test( href ) ,
					local = new RegExp( location.host ).test( href ) ,
					email = new RegExp( 'mailto:' ).test( href ) ,
					sub = window.location.pathname.match( /\//g ).length > 2 ;

				if ( ! email && ! sub && ( ! http || ( http && local ) ) )
				{
					e.preventDefault( ) ;
					canScroll = true ;
					pushState( cleanUrl( href ) ) ;
				}
			}
		) ;

		$( '.more-link' ).each(
			function ( )
			{
				$( this ).click(
					function ( )
					{
						$( this ).addClass( 'hidden' ) ;
						$( '.close-link' , $( this ).parent( ) ).removeClass( 'hidden' ) ;
						$( '.more' , $( this ).parent( ).parent( ) ).slideDown( 400 ) ;
					}
				) ;
			}
		) ;

		$( '.close-link' ).each(
			function ( )
			{
				$( this ).click(
					function ( )
					{
						$( this ).addClass( 'hidden' ) ;
						$( '.more-link' , $( this ).parent( ) ).removeClass( 'hidden' ) ;
						$( '.more' , $( this ).parent( ).parent( ) ).slideUp( 400 ) ;
					}
				) ;
			}
		) ;

		function cleanUrl ( url )
		{
			if ( url )
			{
				url = url.replace( 'http://' + window.location.host , '' ) ;
				url = url.replace( '#' , '' ) ;
				url = url.replace( /^\/|\/$/g, '' ) ;
			}

			return url ;
		}

		function beforeSlide ( e )
		{
			if ( slider.data( 'flexslider' ).currentSlide != 2 )
			{
				randomTestimonial( ) ;
			}

			update( ) ;
		}

		function afterSlide ( e )
		{
			update( ) ;
		}

		function update ( e )
		{
			// Set slide width and height.
			$( '.slide' ).each(
				function ( )
				{
					var background = $( '.slide-background' , $( this ) ) ;
					background.width( $( window ).width( ) ) ;
					background.height( Math.max( $( window ).height( ) , background.css( 'min-height' ).replace( /[^-\d\.]/g , ' ' ) ) ) ;
				}
			) ;
		}

		function menu ( )
		{
			if ( $( document ).scrollTop( ) < 10 )
			{
				$( 'header > .over' ).addClass( 'fade-hidden' ) ;
			}
			else
			{
				$( 'header > .over' ).removeClass( 'fade-hidden' ) ;
			}
		}

		function poll ( )
		{
			timeout = setTimeout(
				function ( )
				{
					var newState = window.location.pathname.substring( 1 ) ;
					if ( newState != state )
					{
						state = newState ;
						setActive( newState ) ;
						goToByScroll( newState ) ;
					}

					poll( ) ;
				} , 50
			) ;
		}

		function pushState ( page )
		{
			if ( page != undefined && page != state && window.history.pushState )
			{
				window.history.pushState( null , null , 'http://' + location.host + '/' + page ) ;
			}
		}

		function resetActive ( )
		{
			state = 'overview' ;
			setActive( state ) ;
		}

		function setActive ( page )
		{
			if ( isScrolling ) return ;

			$( 'ul#menu-primary-navigation > li' ).each(
				function ( e )
				{
					if ( page == cleanUrl( $( 'a' , $( this ) ).attr( 'href' ) ) )
					{
						var section = $( 'a' , $( this ) ).attr( 'title' ) ;
						document.title = ( section != undefined ? section + ' | ' : '' ) + title ;

						$( this ).addClass( 'active' ) ;
					}
					else
					{
						$( this ).removeClass( 'active' ) ;
					}
				}
			) ;
		}

		function goToByScroll ( page )
		{
			if ( ! canScroll ) return ;

			canScroll = false ;
			isScrolling = true ;

			var section = $( 'section[id="' + page + '"]' ) ;

			if ( section.length )
			{
				if ( section.offset( ) )
				{
					var scrollTo = section.offset( ).top ;

					if ( scrollTo != undefined )
					{
						$( 'html,body' ).animate(
							{ scrollTop : scrollTo } ,
							Math.min( Math.max( Math.abs( scrollTo - $( window ).scrollTop( ) ) / 2 , 1000 ) , 2000 ),
							'easeInOutExpo' ,
							onScrollToComplete
						) ;
					}
					else
					{
						isScrolling = false ;
					}
				}
				else
				{
					resetActive( ) ;
				}
			}
		}

		function onScrollToComplete ( )
		{
			isScrolling = false ;
			setActive( state ) ;
		}

		function randomTestimonial ( )
		{
			var testimonials = [ ] ,
				testimonial = null ,
				li = $( 'ul.testimonials > li' ) ;

			if ( li.length > 1 )
			{
				li.each(
					function ( )
					{
						testimonial = $( this ) ;

						if ( testimonial.css( 'display' ) == 'none' )
						{
							testimonials.push( testimonial ) ;
						}

						testimonial.hide( ) ;
					}
				) ;

				testimonial = testimonials[ Math.floor( Math.random( ) * testimonials.length ) ] ;
			}
			else
			{
				testimonial = li ;
			}

			testimonial.show( ) ;
		}

		function init ( )
		{
			update( ) ;
			menu( ) ;

			$( '.loading-overlay' ).fadeOut( 400 ) ;

			$( 'ul#menu-primary-navigation > li' ).each(
				function ( )
				{
					$( 'a' , $( this ) ).click(
						function ( e )
						{
							$( this ).attr( 'data-toggle' ,  'collapse' ) ;
							$( this ).attr( 'data-target' ,  '.navbar-collapse' ) ;
						}
					) ;
				}
			) ;

			if ( hash && hash != '' && hash != '#/' )
			{
				canScroll = true ;
				pushState( cleanUrl( hash ) ) ;
			}

			poll( ) ;
		}
	}
) ;