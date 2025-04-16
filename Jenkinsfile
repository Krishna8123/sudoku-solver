pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                echo 'Cloning repository...'
                git branch: 'main', url: 'https://github.com/Krishna8123/sudoku-solver.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Building Docker image...'
                script {
                    bat 'docker build -t my-nginx-image .'
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                // Insert your test commands here if needed
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying app...'
                script {
                    bat 'docker rm -f my-nginx-container || exit 0'
                    bat 'docker run -d -p 8090:80 --name my-nginx-container my-nginx-image'
                }
            }
        }
    }
}
