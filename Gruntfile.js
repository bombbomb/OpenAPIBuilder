module.exports = function(grunt) {
    require('load-grunt-tasks')(grunt); // npm install --save-dev load-grunt-tasks

    grunt.initConfig({
        shell: {
            multiple: {
                command: [
                    'java -jar build/swagger-codegen-cli.jar generate  -i https://dev.api.bombbomb.com/v2/spec  -l javascript  -o build/nodejs -c config/nodejs.json',
                    'sh build/nodejs/git_push.sh --force'
                ].join('&&')
            }
        }
    });


    grunt.registerTask('default', ['shell']);
};