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
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
                sh 'node --version'
                sh 'npm install'
                // sh 'nodemon server.js'
                // sh 'nohup node server.js &'
                // sh 'node server.js' 
            }
        }
        stage('Test'){
            steps{
                sh 'chmod +x -R ${env.WORKSPACE}'
                sh './scripts/test.sh'
            }
        }
        stage('Deliver'){
            steps {
                sh 'chmod +x -R ${env.WORKSPACE}'
                sh './scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './scripts/kill.sh'
            }
        }
    }
}