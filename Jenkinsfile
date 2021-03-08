pipeline {

	    environment { 

        registry = "https://hub.docker.com/repository/docker/shubhadad/hello_world1" 

        registryCredential = 'dockerhub_id' 

        dockerImage = '' 

    }	
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
             
		script { 
			dockerImage = docker.build -t "shubhadad/helloworld"
                    docker.withRegistry( '', registryCredential ) { 

                        dockerImage.push() 

                    }
		}
       
        }
	
    }
}
}
