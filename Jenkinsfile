pipeline {
    agent any

    stages {

        stage('Source Code') {
            steps {
                echo 'Cloning...'
                git branch: 'main', url: 'https://github.com/sowmiya7006/jenkins.git'
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
        echo "Deploying Container..."
        sh '''
        docker stop job-12 || true
        docker rm job-12 || true
        docker run -d --name job-12 job-12
        '''
    }
}

    }
}
