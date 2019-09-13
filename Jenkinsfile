node {
 def app
 stage('checkout'){
  checkout scm
 }
 stage('build image') {
  app = docker.build("rajkumarm1989/my-project")
 }
 stage('push  image') {
 docker.withRegistry('https://cloud.docker.com','docker-hub-credentials'){
  app.push("${env.BUILD_NUMBER}")
  app.push("latest")
 }
 }
}
