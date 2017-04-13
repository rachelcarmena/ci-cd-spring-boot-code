node {
   stage('Update') { 
      git 'https://github.com/rachelcarmena/ci-cd-spring-boot-code.git'
   }
   stage('Build') {
      sh "mvn clean package"
   }
   stage('Unit test') {
      sh "mvn test"
   }
   stage('Integration test') {
      sh "mvn verify"
   }
   stage('Register') {
      junit '**/target/surefire-reports/TEST-*.xml'
      junit '**/target/failsafe-reports/TEST-*.xml'
      archive 'target/*.war'
      //def REPO_URL = "your.ecr.domain.amazonws.com/ci-cd-lab:latest"
      //sh "aws ecr get-login --region eu-west-1"
      
      sh "docker build -t ci-cd-lab ."
      //sh "docker tag ci-cd-lab:latest ${REPO_URL}"
      
      //sh "docker push ${REPO_URL}"
      //docker.withRegistry("https://your.ecr.domain.amazonws.com", "ecr:a-credential-id") {
      //    docker.image("ci-cd-lab").push()
      //}
   }
}
