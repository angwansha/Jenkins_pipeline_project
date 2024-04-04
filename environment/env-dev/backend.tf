terraform {
  backend "s3" {
    bucket         = "jenkins-pipeline-projectama"
    key            = "env-dev/jenkins.tfstate"
    dynamodb_table = "jenkins_valaxy_project_table"
    region         = "us-east-1"
    profile        = "Ngwansha"
  }
}