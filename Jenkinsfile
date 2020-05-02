pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -T 8 -DskipTests clean package javadoc:jar'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
    }
	post {
        always {
            archiveArtifacts artifacts: 'singles/**/target/fastutil-*.jar', fingerprint: true
        }
    }
}