module.exports = function(grunt) {
  "use strict";

  grunt.initConfig({

    srcFiles: [
      "src/**/*.purs",
      "bower_components/purescript-*/src/**/*.purs"
    ],

    dotPsci: ["<%=srcFiles%>"],

    psc: {
      options: {
        modules: 'Graphics.WebGL.Raw',
        main: 'Graphics.WebGL.Raw',
        dest: 'dist'
      }
    },

    pscDocs: {
      readme: {
        src: "src/**/*.purs",
        dest: "docs/README.md"
      }
    },

    pscMake: {
      all: {
        src: ["<%=srcFiles%>"],
        dest: "dist/purescript"
      }
    }
  });

  grunt.loadNpmTasks("grunt-purescript");
  grunt.registerTask("default", ["pscMake", "dotPsci", "pscDocs"]);
};
