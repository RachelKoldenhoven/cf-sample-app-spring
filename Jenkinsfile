pipeline {
    agent { 
        docker { 
            image 'ubuntu:18.04' 
            args '-u root'
        } 
    }
    stages {
        stage('build') {
            steps {
                sh 'apt-get update'
                sh 'apt-get install -y wget sudo gnupg'
                sh 'wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | sudo apt-key add -'
                sh 'echo "deb https://packages.cloudfoundry.org/debian stable main" | sudo tee /etc/apt/sources.list.d/cloudfoundry-cli.list'
                sh 'sudo apt-get update'
                sh 'sudo apt-get install cf-cli'
                sh 'cf login -u $USERNAME -p $PASSWORD -a https://api.run.pivotal.io'
                sh 'cf push'
            }
        }
    }
}
