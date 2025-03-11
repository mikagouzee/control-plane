pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/mikagouzee/ehealth-back.git', branch: 'master'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package -Dmaven.test.skip'
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
