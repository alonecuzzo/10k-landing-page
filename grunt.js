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
    watch: {
      main: {
        files: 'coffee/main.coffee',
        tasks: 'coffee:compileMain ok'
      }
    }
  });

  grunt.loadTasks('tasks');
  grunt.registerTask('default', 'coffee ok');

};