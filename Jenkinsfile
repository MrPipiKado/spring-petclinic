pipeline {
   agent slave

   tools {
      maven "Maven"   
   }

   stages {  
      stage('Clone'){
          steps{  
              git credentialsId: 'GitHub', url: 'git@github.com:MrPipiKado/spring-petclinic.git'
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
