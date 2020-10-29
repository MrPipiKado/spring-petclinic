pipeline {
   agent {
     node {
        label 'slave'
     }
   }

   tools {
      maven "Maven"   
   }

   stages {  
      stage('Clone'){
          steps{  
              git branch: 'test',
                credentialsId: 'GItHub',
                url: 'git@github.com:MrPipiKado/spring-petclinic.git'
          }
      }
      stage('Build') {
         steps {
            sh "mvn compile"
         }  
      }
      stage('Test') {
         steps {
            sh "mvn test"
           }
      }
      stage('Package') {
         steps {
           sh "mvn package"
          }
      }
      stage('build docker image') {
         steps {
           sh "docker build -t final:${BUILD_NUMBER} ."
           sh "docker tag final:${BUILD_NUMBER} mrpipikado/final:latest"
          }
      }
   }
}
