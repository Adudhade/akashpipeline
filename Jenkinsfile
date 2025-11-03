pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main' 'https://github.com/Adudhade/akashpipeline.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t mysecondimage .'
            }
        }
        stage('Run Container') {
            steps {
                bat 'docker run --rm mysecondimage'
            }
        }
    }
}
