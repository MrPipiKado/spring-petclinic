properties([pipelineTriggers([githubPush()])])

pipeline {
    environment { 
        registry = "mrpipikado/final_project" 
        registryCredential = 'docker' 
        dockerImage = '' 
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
              git branch: 'main',
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
          script { 
                    dockerImage = docker.build registry + ":latest" 
                }
          }
      }
      stage('Deploy image') { 
            steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                } 
            }
        } 
   }
}
