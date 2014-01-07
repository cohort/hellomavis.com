$( document ).ready(
	function ( )
	{
		var state = window.location.pathname.substring( 1 ).replace( /\//g , '' ) ,
			hash = window.location.hash ,
			isScrolling = false ,
			canScroll = false ,
			timeout = null ;

		$( '.flexslider' ).flexslider( {
			animation : 'slide' ,
			directionNav : false ,
			start : init
		} ) ;

		$( window ).scroll(
			function ( )
			{
				if ( $( document ).scrollTop( ) < 280 )
				{
					$( 'header > .over' ).addClass( 'fade-hidden' ) ;
				}
				else
				{
					$( 'header > .over' ).removeClass( 'fade-hidden' ) ;
				}

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
					email = new RegExp( 'mailto:' ).test( href ) ;

				if ( ! email && ( ! http || ( http && local ) ) )
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
			url = url.replace( 'http://' + window.location.host , '' ) ;
			url = url.replace( '#' , '' ) ;
			url = url.replace( /^\/|\/$/g, '' ) ;

			return url ;
		}

		function update ( e )
		{
			var maxHeight = 0 ,
				extraHeight = $( window ).width( ) > 768 ? 720 : 460 ;

			// Loop through slides and find maximum height.
			$( '.slide' ).each(
				function ( )
				{
					var content = $( '.slide-content' , $( this ) ) ;
					maxHeight = Math.max( maxHeight , content.outerHeight( ) + extraHeight )
				}
			) ;

			// Set slide width and height.
			$( '.slide' ).each(
				function ( )
				{
					var background = $( '.slide-background' , $( this ) ) ;
					background.width( $( window ).width( ) ) ;
					background.height( maxHeight ) ;
				}
			) ;
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
			if ( page != state && window.history.pushState )
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

			if ( section.offset( ) )
			{
				var scrollTo = section.offset( ).top ;

				if ( scrollTo != undefined )
				{
					$( 'html,body' ).animate(
						{ scrollTop : scrollTo } ,
						Math.max( Math.abs( scrollTo - $( window ).scrollTop( ) ) / 2 , 1000 ) ,
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

		function onScrollToComplete ( )
		{
			isScrolling = false ;
			setActive( state ) ;
		}

		function init ( )
		{
			update( ) ;

			// $( 'ul#menu-primary-navigation' ).height( $( window ).height( ) ) ;
			// data-toggle="collapse" data-target=".navbar-collapse"

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