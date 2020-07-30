pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
	
        stage('Build') {
           
		   steps {
                 sh 'mvn -B -DskipTests clean package' 
				 }
        }
        stage('Test') {

            steps {
                sh 'mvn test'
            }
        }
        stage('Migrate') { 
          
            steps {
               sh 'mvn flyway:migrate'
                }
        }
		 post {
			always {
				 sh '''
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