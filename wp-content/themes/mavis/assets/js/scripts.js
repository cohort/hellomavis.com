$( document ).ready(
	function ( )
	{
		$( '.flexslider' ).flexslider( {
			animation : 'slide' ,
			directionNav : false
		} ) ;

		$( 'a' ).click(
			function ( e )
			{
				if ( new RegExp( location.host ).test( $( this ).attr( 'href' ) ) )
				{
					e.preventDefault( ) ;
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
	}
) ;