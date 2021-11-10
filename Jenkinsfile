
pipeline {
    agent {label 'maven-label'}

    tools {
        maven "M3"
    }

    stages {
        stage('Build') {
            steps {
             //   git branch: 'develop', url: 'https://github.com/vytec-insurance/core-app.git'
                checkout scm
                sh "mvn -Dmaven.test.failure.ignore=true clean package"

                // To run Maven on a Windows agent, use
                // bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }

            post {
                
                success {
                    junit '**/target/surefire-reports/TEST-*.xml'
                    archiveArtifacts 'target/*.jar'
                }
            }
        }
    }
}
