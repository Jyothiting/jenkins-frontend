pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git 'https://github.com/jyothithing/jenkins-frontend.git'
            }
        }

        stage('Give Permission') {
            steps {
                sh 'chmod +x deploy.sh'
            }
        }

        stage('Deploy Application') {
            steps {
                sh './deploy.sh'
            }
        }

    }
}
