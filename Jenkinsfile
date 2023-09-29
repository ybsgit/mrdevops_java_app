@Library('shared-library') _ 

pipeline{
    agent any 

    stages{
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
            steps{
                script{
                    mvnTest1()
                }
            }
        }
        stage('Integration testing: mvn')
        {
            script{
                mvnIntTest()
            }
        }
    }
}