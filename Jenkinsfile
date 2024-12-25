pipeline 
pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'dentowahyu/saklarjs:latest'
        CONTAINER_NAME = 'saklar'
        PORT_MAPPING = '8089:80'  // Adjust the port mapping as needed
    }

    stages {
            stage('Checkout') {
                steps {
                    deleteDir()
                    checkout([$class: 'GitSCM', branches: [[name: 'master']], userRemoteConfigs: [[url: 'https://github.com/dentowahyuu/Saklar-Lampu.git']]])
                }
            }

            stage('Build Docker Image') {
            steps {
                script {
                        docker.build("${DOCKER_IMAGE}",'-f Dockerfile .')
                }
            }
        }

        


        stage('Run Docker Container') {
            steps {
                script {
                    // Run Docker container based on the built image
                    docker.image("${DOCKER_IMAGE}").run("-p ${PORT_MAPPING} --name ${CONTAINER_NAME}")
                }
            }
        }
    }

    
}