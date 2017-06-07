	pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		echo 'trigger'
		sh 'docker-compose -d up '	
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying.... by Aboubakr'
            }
        }
    }
} 
