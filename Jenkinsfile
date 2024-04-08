pipeline {
    agent any
    tools{
        maven 'maven'
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn -version'
                // Clean the project
                sh 'mvn clean'

                // Compile the project
                sh 'mvn compile'
            }
        }

        stage('Test') {
            steps {
                // Run unit tests
                sh 'mvn test'
            }
        }

        stage('Package') {
            steps {
                // Package the project
                sh 'mvn package'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                script {
                    def scannerHome = tool 'SonarScanner'
                    withSonarQubeEnv('SonarQube') {
                        sh "${scannerHome}/bin/sonar-scanner"
                    }
                }
            }
        }
    }
}
