/**
 * grunt
 * CoffeeScript example
 */
module.exports = function(grunt){

  grunt.initConfig({
    coffee: {
      compileMain: {
        files: [ 'coffee/main.coffee' ],
        dest: 'js/main.js'
      }
    },
    compass : {
		dev: {
			src : './scss',
			dest : './css',
			linecomments : true,
			forcecompile : true,
			debugsass : true
		}
	},

    watch: {
      main: {
        files: 'coffee/main.coffee',
        tasks: 'coffee:compileMain ok'
      },
      compass : {
			files : ['scss/*.scss'],
			tasks : ['compass:dev']
		}
    }
  });

  grunt.loadNpmTasks('grunt-compass');
  grunt.loadTasks('tasks');
  grunt.registerTask('default', 'coffee ok');

};