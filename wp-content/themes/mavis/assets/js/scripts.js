$( document ).ready(
	function ( )
	{
		var state = window.location.pathname.substring( 1 ).replace( /\//g , '' ) ,
			isScrolling = false ,
			canScroll = false ,
			timeout = null ;

		$( '.flexslider' ).flexslider( {
			animation : 'slide' ,
			directionNav : false ,
			start : update
		} ) ;

		$( 'a' ).click(
			function ( e )
			{
				// if ( new RegExp( location.host ).test( $( this ).attr( 'href' ) ) )
				// {
				// }

				e.preventDefault( ) ;
				canScroll = true ;
				pushState( $( this ).attr( 'href' ) ) ;
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
			page = page.replace( /\//g , '' ) ;

			if ( page != state && window.history.pushState )
			{
				window.history.pushState( null , null , page ) ;
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

			// TODO
		}

		function goToByScroll ( page )
		{
			if ( ! canScroll ) return ;

			canScroll = false ;
			isScrolling = true ;

			var scrollTo = $( 'section[id="' + page + '"]' ).offset( ).top ;

			if ( scrollTo != undefined )
			{
				$( 'html' ).animate(
					{ scrollTop : scrollTo } ,
					Math.max( Math.abs( scrollTo - $( window ).scrollTop( ) ) / 2 , 1000 ) ,
					onScrollToComplete
				) ;
			}
			else
			{
				isScrolling = false ;
			}
		}

		function onScrollToComplete ( )
		{
			isScrolling = false ;
			setActive( state ) ;
		}		

		$( window ).resize( update ) ;

		$( window ).scroll(
			function ( )
			{
				if ( isScrolling ) return ;

				// TODO
				// var page = $( ".slide:in-viewport:first" ).attr( "data-slide" ) ;
				// pushState( page ) ;
			}
		) ;

		if ( state && state != '' )
		{
			setActive( state ) ;
			$( window ).scrollTop( $( 'section[id="' + state + '"]' ).offset( ).top ) ;
		}
		else
		{
			resetActive( ) ;
			$( window ).scrollTop( 0 ) ;
		}

		update( ) ;
		poll( ) ;
	}
) ;