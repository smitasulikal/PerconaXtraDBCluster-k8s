  pipeline {
    agent {
      node {
        label "master"
      }
    }

    stages {
      stage('fetch_latest_code') {
        steps {
          git credentialsId: '2324e9fa-9f80-40ae-86ab-33c6ff237da8', url: 'https://github.com/smitasulikal/terraformJenkins'
        }
      }

      stage('TF Init&Plan') {
        steps {
          sh 'terraform init'
          sh 'terraform plan'
        }
      }

      stage('Approval') {
        steps {
          script {
            def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
          }
        }
      }

      stage('TF Apply') {
        steps {
          sh 'terraform apply --auto-approve -input=false'
        }
      }

      stage('Destroy') {
         steps {
         sh "terraform destroy --auto-approve -input=false"
       }
      }
    }
}
