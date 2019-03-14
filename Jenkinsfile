pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'cf login -u $USERNAME -p $PASSWORD -a https://api.run.pivotal.io'
            }
        }
    }
}