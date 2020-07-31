pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
	
        stage('Build') {
           
		   steps {
                 bat 'mvn -B -DskipTests clean package' 
				 }
        }
        stage('Test') {

            steps {
                bat 'mvn test'
            }
        }
        stage('Migrate') { 
          
            steps {
               bat 'mvn flyway:migrate'
                }
        
		 post {
			always {
				 bat '''
                    echo "This will be always executed"
                    mvn flyway:info
                '''
			}
			success {
				echo 'I succeeeded!'
			}
			unstable {
				echo 'I am unstable :/'
			}
			failure {
				echo 'I failed :('
			}
			changed {
				echo 'Things were different before...'
			}
		 }
    }
    }
}
