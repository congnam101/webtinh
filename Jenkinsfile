pipeline {
    agent any

    stages {
        stage('Build & Deploy') {
            steps {
                script {
                    // Dừng và xóa container cũ nếu có
                    sh 'docker rm -f web_app || true'
                    sh 'docker-compose down || true'

                    // Build image mới
                    sh 'docker-compose build'

                    // Khởi động lại container
                    sh 'docker-compose up -d'
                }
            }
        }

        stage('Check Site') {
            steps {
                sh 'curl -I http://localhost:9090 || true'
            }
        }
    }
}
