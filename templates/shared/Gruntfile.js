'use strict';

module.exports = function (grunt) {

  grunt.initConfig({
    watch: {
      options: {
	livereload: 9001
      },
      css: {
	files: ['sass/*.scss'],
	tasks: ['compass:watch']
      }
    },

    compass: {
      options: {
	config: 'config.rb',
	bundleExec: true
      },
      watch: {
	environment: 'development'
      },
      build: {
	environment: 'production'
      }
    }
  });

  grunt.event.on('watch', function(action, filepath) {
    grunt.config(['compass:watch'], filepath);
  });

  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-compass');
  // grunt.loadNpmTasks('grunt-contrib-jshint');

  grunt.registerTask('build', [
    'compass:build'
  ]);
}