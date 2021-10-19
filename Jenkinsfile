pipeline {

	agent any 
	
	stages {
	
		stage('Build Application') {
			steps { 
				bat 'mvn clean test'
			}
		}
		
		stage('Pull Request Raised') {
			steps {
				bat 'git checkout master'
				bat 'gh pr create --title "Pull request title" --body "Pull request body"'
			}

		}
		
	
	}


}