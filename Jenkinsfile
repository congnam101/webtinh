pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/congnam101/webtinh'
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
                    dockerImage.run("-d -p 9090:80")
                }
            }
        }
    }
}

