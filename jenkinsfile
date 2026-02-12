pipeline {
    agent any

    stages {

        stage('Source Code') {
            steps {
                echo 'Cloning...'
                git branch: 'main', url: 'https://github.com/Marvel-k23/jenkins.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker Image...'
                sh 'docker build -t job-12 .'
            }
        }

        stage('Deploy Container') {
            steps {
                echo 'Deploying Container...'
                sh 'docker stop job-12'
                sh 'docker rm job-12'
                sh 'docker run job-12'
            }
        }
    }
}
