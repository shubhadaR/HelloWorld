pipeline {
    agent any

	

    stages {
        stage('Build') {
            steps {
                bat "javac HelloWorld.java"
		bat "java HelloWorld.java"
		bat "jar -cvmf manifest.mf myjar.jar HelloWorld.class"
            }
        }
	 stage('Build Docker image') {
            steps {
               bat "docker build -t shubhadad/hello ."
		bat "docker run shubhadad/hello"
		bat "docker push shubhadad/hello"
            }
        }
	
    }
}
