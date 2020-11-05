properties([pipelineTriggers([githubPush()])])
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
   }
}
