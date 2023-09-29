@Library('shared-library') _ 

pipeline{
    agent any 

    stages{
        stage('Git Checkout'){
            steps{
                script{
                          gitCheckout(
                            branch: "main"
                            url: "https://github.com/ybsgit/mrdevops_java_app"
                          )
                   }
            }
        }
    }
}