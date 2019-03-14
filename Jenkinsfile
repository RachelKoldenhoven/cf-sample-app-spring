pipeline {
    agent { docker { image 'maven:3.3.3' } }
    stages {
        stage('build') {
            steps {
                sh 'cf login -u $USERNAME -p $PASSWORD -a https://api.run.pivotal.io'
            }
        }
    }
}