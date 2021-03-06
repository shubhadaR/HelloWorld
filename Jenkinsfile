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
		withCredentials([usernamePassword( credentialsId: 'dockerhub_id', usernameVariable: 'USER', passwordVariable: 'PASSWORD')]) {
        def registry_url = "registry.hub.docker.com/"
        bat "docker login -u $USER -p $PASSWORD ${registry_url}"
        docker.withRegistry("http://${registry_url}", "dockerhub_id") {
            // Push your image now
            bat "docker image push shubhadad/helloworld"
            }
        }
	
    }
}
