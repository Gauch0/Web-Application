pipeline {
    agent any
    tools{
        maven "MAVEN3"
        jdk "OracleJDK8"
    }

    environment {
        SNAP_REPO = 'webapp-snapshot'
        NEXUS_USER = 'admin'
        NEXUS_PASS = 'admin123'
        RELEASE_REPO = 'webapp-release'
        CENTRAL_REPO = 'webapp-maven-central'
        NEXUSIP = '172.31.2.199'
        NEXUSPORT = '8081'
        NEXUS_GRP_REPO = 'webapp-maven-group'
        NEXUS_LOGIN = 'nexuslogin'
    }


    stages {
        stage('Build'){
            steps {
                sh 'mvn -s settings.xml -DskipTest install'
            }
            post {
                success {
                    echo "Now Archiving."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }

        stage('Test'){
            steps{
                sh 'mvn test'
            }
        }

        stage('Checkstyle Analysis'){
            steps{
                sh 'mvn checkstyle:checkstyle'
            }
        }        
    }




}