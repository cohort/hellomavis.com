/*global module:false*/
module.exports = function ( grunt )
{
	// Project configuration.
	grunt.initConfig( 
		{
			// Metadata.
			pkg : grunt.file.readJSON( 'package.json' ) ,
			banner : '/*! <%= pkg.title || pkg.name %> - v<%= pkg.version %> - ' +
				'<%= grunt.template.today("yyyy-mm-dd") %>\n' +
				'<%= pkg.homepage ? "* " + pkg.homepage + "\\n" : "" %>' +
				'* Copyright (c) <%= grunt.template.today("yyyy") %> <%= pkg.author.name %>;' +
				' Licensed <%= _.pluck(pkg.licenses, "type").join(", ") %> */\n',
			// Task configuration.
			compass : {
				dist : {
					options : {
						config : 'compass/config.rb' ,
						force : true
					}
				}
			} ,
			uglify : {
				options : {
					compress : true ,
					beautify : false ,
					mangle : true ,
					banner : '<%= banner %>'
				} ,
				dist : {
					files : [
						{ src : 'assets/js/scripts.js' , dest : 'assets/js/scripts.min.js' } ,
						{ src : 'assets/js/plugins/flexslider/jquery.flexslider.js' , dest : 'assets/js/plugins/flexslider/jquery.flexslider-min.js' }
					]
				}
			} ,
			watch : {
				sass : {
					files : [ 'compass/sass/**/*.scss' ] ,
					tasks : [ 'compass:dist' ] ,
					options : {
						atBegin : true
					}
				} ,
				js : {
					files : [ 
						'assets/js/scripts.js' ,
						'assets/js/plugins/flexslider/jquery.flexslider.js'
					] ,
					tasks : [ 'uglify:dist' ] ,
					options : {
						atBegin : true
					}
				}
			}
		}
	) ;

	// These plugins provide necessary tasks.
	require( 'matchdep' ).filterDev( 'grunt-* ').forEach( grunt.loadNpmTasks ) ;

	// Default task.
	grunt.registerTask( 'default' , 'watch' ) ;
} ;
