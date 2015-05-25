module.exports = function(grunt) {
  "use strict";

  grunt.initConfig({

    srcFiles: [
      "src/**/*.purs",
      "bower_components/purescript-*/src/**/*.purs"
    ],

    dotPsci: ["<%=srcFiles%>"],
    pscMake: ["<%=srcFiles%>"],

    psc: {
      options: {
        modules: 'Graphics.WebGL.Raw',
        main: 'Graphics.WebGL.Raw'
      }
    },

    pscDocs: {
      readme: {
        src: "src/**/*.purs",
        dest: "docs/README.md"
      }
    },

  });

  grunt.loadNpmTasks("grunt-purescript");
  grunt.registerTask("default", ["pscMake", "dotPsci", "pscDocs"]);
};
