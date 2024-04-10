pipeline {
    agent any
    tools{
        maven 'maven'
        // Add the Docker tool
        //docker 'docker'
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

        stage('Docker Build and Push') {
            //steps {
                //script {
                    // Login to Docker Hub
                    //docker.withRegistry('https://registry.hub.docker.com', 'dckr_pat_LPM9AKWaCb_0QjXtkpHJZKiN9QI') {
                        // Build the Docker image using the Dockerfile in the root directory
                        //def appImage = docker.build("examen-devops:${env.BUILD_ID}", '.')
                        // Push the Docker image to Docker Hub
                        //appImage.push()
                    //}
                //}
            //}
        }


        stage('SonarQube Analysis') {
            steps {
                script {
                    def scannerHome = tool 'SonarScanner'
                    withSonarQubeEnv('Sonar-Server') {
                        sh "${scannerHome}/bin/sonar-scanner"
                    }
                }
            }
        }
    }
}
