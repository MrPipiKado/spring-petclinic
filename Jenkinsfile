pipeline {
   agent {
     node {
        label 'master'
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
            sh "cd spring-petclinic && mvn compile"
         }  
      }
      stage('Test') {
         steps {
            sh "cd cd spring-petclinic && mvn test"
           }
      }
   }
}
