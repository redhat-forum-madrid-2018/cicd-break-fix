PROJECT=${1:-bad-code}
oc project $PROJECT
oc delete all -l buildconfig=nodejs-sample-pipeline
oc delete all -l app=jenkins-new
oc delete bc/nodejs-sample-pipeline
oc delete project $PROJECT
