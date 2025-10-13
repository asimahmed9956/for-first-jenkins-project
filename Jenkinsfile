
pipeline {
  agent none
  stages {
    stage('Build Backend') {
      agent {
        docker { image 'maven:3.8.1-jdk-11' }
      }
      steps {
        sh 'echo Building Backend...'
      }
    }

    stage('Build Frontend') {
      agent {
        docker { image 'node:16-alpine' }
      }
      steps {
        sh 'echo Building Frontend...'
      }
    }

    stage('Setup Database') {
      agent {
        docker { image 'mysql:8' }
      }
      environment {
        MYSQL_ROOT_PASSWORD = 'root'
        MYSQL_DATABASE = 'sampledb'
      }
      steps {
        sh 'echo Setting up MySQL Database...'
      }
    }
  }
}
