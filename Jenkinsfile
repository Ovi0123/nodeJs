// pipeline {
//     agent {
//         docker { image 'node:18.16.0-alpine' }
//     }
//     stages {
//         stage('Test') {
//             steps {
//                 sh 'node --version'
//             }
//         }
//     }
// }
pipeline {
    // agent { dockerfile true}
    // I can not able to run container without a tag that's why doing this way
    agent { dockerfile {
        additionalBuildArgs '-t myjenkinsfirstnewtag'
    }}
    environment{
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'node --version'
                sh 'npm install' 
            }
        }
        stage('RunContainer'){
            steps{
                sh 'docker run -d -p 35974:8081 myjenkinsfirstnewtag'
            }
        }
    }
}
