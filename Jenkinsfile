pipeline {
  agent any
  stages {
    stage ('dockerhub login'){
      steps{
        //sh 'docker login -u akashmukh -p me@akash13'
        withCredentials([usernamePassword(credentialsId: 'dockerhubID', passwordVariable: 'pass', usernameVariable: 'user')]) {
                remote.username= user
                remote.password= pass
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
