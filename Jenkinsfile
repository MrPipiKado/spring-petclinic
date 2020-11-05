pipeline {
   triggers {
    pollSCM('H/2 * * * *')
  }
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
   }
}
