pipeline{
    agent any 

    stages{
        stage('Git Checkout'){
            steps{
                script{
                git branch: 'main' : 'https://github.com/ybsgit/mrdevops_java_app'
                }
            }
        }
    }
}