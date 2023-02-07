pipeline {
    agent { label "ONL" }
    stages {
        stage ( "cloning" ) {
            steps ( "GIT" ) {
               git_url: "https://github.com/instinct1one/onlinebookstore.git",
               branch: "master"
            }
        }
        stage ( "copy_1" ) {
            steps {
               sh "chmod +x copy_settings_&_tomcat.sh"
               sh "sh copy_settings_&_tomcat.sh"
            }
        }
        stage ( "install" ) {
            steps {
               sh "mvn clean install"
            }
        }
        stage ( "copy_1" ) {
            steps {
               sh "chmod +x copy_to_webapps.sh"
               sh "sh copy_to_webapps.sh"
            }
        }
        stage ( "install" ) {
            steps {
               sh "mvn clean deploy"
            }
        }
    }
}
