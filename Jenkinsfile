pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/congnam101/webtinh'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("webtinh:latest")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    dockerImage.run("-d -p 8080:80")
                }
            }
        }
    }
}
