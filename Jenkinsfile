pipeline {
    agent any
    parameters {
        string(name: 'GREETING', defaultValue: 'HELLOOOO!', description: 'The greeting message')
        choice(name: 'BRANCH', choices: ['main', 'dev'], description: 'Branch to build')
        booleanParam(name: 'DEPLOY', defaultValue: false, description: 'Do we deploy?')
    }
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/PeterPorzuczek/TimeRiddle.git', branch: 'master'
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            when {
                expression { params.DEPLOY }
            }
            steps {
                echo 'Deploying..'
            }
        }
    }
}