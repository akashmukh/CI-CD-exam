pipeline {
  agent any
  stages {
    stage ('dockerhub login'){
      steps{
        withCredentials([usernamePassword(credentialsId: 'dockerhubID', passwordVariable: 'password', usernameVariable: 'username')]) {
              sh 'docker login -u $username -p $password'
          }
        }
      }
    stage ('image build'){
      steps{
        sh 'docker build -t my-apache2 .'
      }
    }
    stage('image check'){
      steps{
        sh 'docker images'
      }
    }
    stage('image push'){
      steps{
        sh 'docker tag my-apache2 akashmukh/exam:apache2-v2.0'
        sh 'docker push akashmukh/exam:apache2-v2.0'
      }
    }
  }
 }
