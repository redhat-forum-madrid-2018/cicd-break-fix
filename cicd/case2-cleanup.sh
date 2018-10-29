PROJECT=${1:-bad-code2}
oc project $PROJECT
oc delete all -l app=nodejs-mongodb-example
oc delete all -l app=jenkins-ephemeral
oc delete all -l buildconfig=nodejs-sample-pipeline
oc delete bc nodejs-sample-pipeline
oc delete is nodejs-mongodb-example-staging
oc delete project $PROJECT
