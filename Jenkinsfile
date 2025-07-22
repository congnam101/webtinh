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
                    sh 'docker build -t webtinh:latest .'
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh 'docker run -d -p 9090:80 --name webtinh webtinh:latest'
                }
            }
        }
    }
}
