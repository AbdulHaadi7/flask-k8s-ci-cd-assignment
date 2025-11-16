pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t flask-app:latest .'
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                script {
                    sh 'kubectl apply -f kubernetes/deployment.yaml'
                    sh 'kubectl apply -f kubernetes/service.yaml'
                }
            }
        }
        stage('Verify Deployment') {
            steps {
                script {
                    sh 'kubectl rollout status deployment/flask-app'
                    sh 'kubectl get pods'
                    sh 'kubectl get services'
                }
            }
        }
    }
}
