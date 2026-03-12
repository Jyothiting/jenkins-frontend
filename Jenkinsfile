pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git 'https://github.com/jyothithing/jenkins-frontend.git'
            }
        }

        stage('Prepare Files') {
            steps {
                sh 'chmod +x deploy.sh'
            }
        }

        stage('Deploy Application') {
            steps {
                sh '''
                sudo rm -rf /var/www/html/*
                sudo cp -r * /var/www/html/
                sudo systemctl restart nginx
                '''
            }
        }

    }
}
