@Library('shared-library') _ 

pipeline{
    agent any 
    parameters{
        choice(name: 'action', choices: ['create', 'delete'],desciption: 'Choose create or destroy')

    }
    stages{
      when { expression{ param.action == 'create'} }  
        stage('Git Checkout'){
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
               when{ expression{ param.action == 'create'}}  
            steps{
                script{
                    mvnTest1()
                }
            }
        }
        stage('Integration testing: mvn')
        { 
               when{ expression{ param.action == 'create'}}  
            steps
            {
            script{
                mvnIntTest()
            }
            }
        }
    }
}