module.exports = function(grunt) {

  var pkg = require('./package.json');

  // Project configuration.
  grunt.initConfig({
  });

  // Default task(s).
  grunt.registerTask('default', function() {
    grunt.file.write("./dist/" + pkg.version + '/touch.txt', new Date());
  });
};