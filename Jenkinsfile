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
				bat 'git checkout integration'
				bat 'C:\\Users\\PavanN\\Downloads\\gh_2.1.0_windows_386\\bin\\gh pr create --title "Hello This is my first PR" --body "First Jenkins PR"'
			}

		}
		
	
	}


}