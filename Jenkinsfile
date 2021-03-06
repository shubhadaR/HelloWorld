pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "javac HelloWorld.java"
		sh "java HelloWorld.java"
		sh "jar -cvmf manifest.mf myjar.jar HelloWorld.class"
            }
        }
    }
}