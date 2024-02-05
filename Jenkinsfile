pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'mysprinfpetclinic:latest'
        CONTAINER_NAME = 'mysprinfpetclinic'
        WAR_FILE_NAME = 'petclinic.war'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh './mvnw clean package -DskipTests=true'
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    // Build Docker image
                    sh "docker build -t ${DOCKER_IMAGE} . --load"
                }
            }
        }
    }
    triggers {
        // Poll the Github repository every 5 minutes
        pollSCM '*/5 * * * *'
    }
}
