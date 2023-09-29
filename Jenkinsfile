@Library('shared-library') _ 

pipeline{
    agent any 
    parameters{
      choice(name: 'action', choices: 'create\ndelete', description: 'Choose create/Destroy')
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
    }
}