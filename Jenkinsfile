@Library('shared-library') _ 

pipeline{
    agent any 
    parameters{
      choice(name: 'action', choices: 'create\ndelete', description: 'Choose create/Destroy')
      string(name: 'ImageName',description: 'Name of docker build',defaultValue: 'javapp')
      string(name: 'ImageTag',description: 'Tag of docker build',defaultValue: 'javapp')
      string(name: 'AppName',description: 'name of application',defaultValue: 'web927')
    }
    stages{
      
        stage('Git Checkout'){
            when { expression{ params.action == 'create'} }  
            steps{
                script{
                          gitCheckout(
                            branch: "main",
                            url: "https://github.com/ybsgit/mrdevops_java_app"
                          )
                   }
            }
        }
        stage('Unit testing: MVN'){
               when{ expression{ params.action == 'create'}}  
            steps{
                script{
                    mvnTest1()
                }
            }
        }
        stage('Integration testing: mvn')
        { 
               when{ expression{ params.action == 'create'}}  
            steps
            {
            script{
                mvnIntTest()
            }
            }
        }
        stage('Static code analysis: sonar')
        {
            steps{
                script{
                    sonarAnalysis('sonar')
                }
            }
        }
        stage('Wait for quality gate'){
              steps{
                script{
                    qualityGate('sonar')
                }
              }
        }
        stage('Build: Maven'){
            steps{
                script{
                    mvnBuild1() 
                }
            }
        }
        stage('Docker Build')
        {
            steps{
                dockerBuild1("${params.ImageName}","${params.ImageTag}","${params.AppName}")
            }
        }
        stage('Docker image scan')
        {
            steps{
                scanImage("${params.ImageName}","${params.ImageTag}","${params.AppName}")
            }
            
        }
        stage('Push Image to Docker Hub')
        {
            steps{
                pushImage("${params.ImageName}","${params.ImageTag}","${params.AppName}")
            }
        }
    }
}