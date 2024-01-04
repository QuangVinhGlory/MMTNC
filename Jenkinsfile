pipeline {
  agent any
  stages {
    
    stage('Checkout source code') {
      steps {
        git branch: 'main',
            url: 'https://github.com/QuangVinhGlory/MMTNC.git'
        sh "ls -la"
      }
    }
    
    stage ('Build and publish Docker image') {
      steps {
        withDockerRegistry(credentialsId: 'Dockerhub', url: 'https://index.docker.io/v1/') {
          bat 'docker build -t 20120068/mmtnc .'
          bat 'docker push 20120068/mmtnc'
        }
      }
    }
  }
}
