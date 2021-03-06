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
               bat "docker build -t shubhadad/helloworld ."
		bat "docker run shubhadad/helloworld"
		bat "docker image push shubhadad/helloworld"
            }
        }
	
    }
}
