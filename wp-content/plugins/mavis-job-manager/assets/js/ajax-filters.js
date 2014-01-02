jQuery( document ).ready(
	function ( $ )
	{
		$( '.job_listings' ).on( 'update_results' ,
			function ( event , page , append )
			{
				var form = $( this ).find( '.job_filters' ) ;
				var selected = $( '#search_types option:selected' , form ).val( ) ;

				$( ':input[name="filter_job_type[]"]' , form ).each(
					function ( )
					{	
						$( this ).prop( 'checked' , selected == '0' || $( this ).attr( 'id' ) == 'job_type_' + selected ) ;
					}
				) ;
			}
		) ;

		$( '#search_types' ).change(
			function ( )
			{
				var target = $( this ).closest( 'div.job_listings' ) ;

				target.trigger( 'update_results' , [ 1 , false ] ) ;
			}
		).change( ) ;
	}
) ;