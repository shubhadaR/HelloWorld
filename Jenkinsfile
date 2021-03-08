pipeline {

	    environment { 

        registry = "https://hub.docker.com/shubhadad" 

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
			dockerImage = docker.build "shubhadad/hello_world1:$BUILD_NUMBER"
                    docker.withRegistry( '', registryCredential ) { 

                       dockerImage.push()


                    }
		
		}
       
        }
	
    }
	stage('Run Image') {
            steps {
                bat "docker run shubhadad/hello_world1:$BUILD_NUMBER"
		bat "docker ps "
		bat "docker ps -a"
		
		
            }
        }
}
}
