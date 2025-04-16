pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                echo 'Cloning repository...'
                // Clone your repo (e.g., git checkout)
                git 'https://github.com/Krishna8123/sudoku-solver.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Building Docker image...'
                script {
                    // Build the Docker image from your Dockerfile
                    sh 'docker build -t my-nginx-image .'
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                // Include your test steps here, e.g., running unit tests
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying app...'
                script {
                    // Ensure no old container is running
                    sh 'docker rm -f my-nginx-container || true'
                    // Deploy the new container
                    sh 'docker run -d -p 8090:80 --name my-nginx-container my-nginx-image'
                }
            }
        }
    }
}
