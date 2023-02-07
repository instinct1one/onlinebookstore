pipeline {
    agent { label "ONL" }
    stages {
        stage ( "cloning" ) {
            steps ( "GIT" ) {
               git url: "https://github.com/instinct1one/onlinebookstore.git",
               branch: "master"
            }
        }
        stage ( "copy_1" ) {
            steps {
               sh "chmod +x settings.sh webapps.sh"
               sh "sh settings.sh"
            }
        }
        stage ( "install" ) {
            steps {
               sh "mvn clean install"
            }
        }
        stage ( "copy_2" ) {
            steps {
               sh "sh webapps.sh"
            }
        }
        stage ( "deploy" ) {
            steps {
               sh "mvn clean deploy"
            }
        }
    }
}
