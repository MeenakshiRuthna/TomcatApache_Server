pipeline {
    agent any
    tools{
        jdk 'jdk21'
        maven 'maven3'
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'Feature2', url: 'https://github.com/MeenakshiRuthna/TomcatApache_Server.git'
            }
        }
        stage('Compile') {
            steps {
                sh "mvn clean compile"
            }
        }
        stage('Build') {
            steps {
                sh "mvn clean package -DskipTests=true"
            }
        }
       
