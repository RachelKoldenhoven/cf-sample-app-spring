pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'whoami'
                sh 'cf login -u $USERNAME -p $PASSWORD -a https://api.run.pivotal.io'
            }
        }
    }
}