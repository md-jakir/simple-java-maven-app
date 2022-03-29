pipeline{
    agent any
    stages{
        stage('CloneGitRepo'){
            agent any
            steps{
                git 'https://github.com/md-jakir/simple-java-maven-app.git'
            }
        }
        stage('MavenCompile'){
            agent any
            steps{
                sh 'mvn compile'
            }
        }
        stage('BuildProject'){
            agent any
            steps{
                sh 'mvn clean package'
                sh 'docker build . -t test-app'

            }
        }
        stage('RunProject'){
            agent any
            steps{
                sh 'docker run -d test-app'
            }
        }
    }
}
