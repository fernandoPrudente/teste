pipeline {
    agent { docker { image 'node:8.1' } }
    stages {
        stage('build') {
            steps {
                sh 'npm --version'
            }
        }
    }
}