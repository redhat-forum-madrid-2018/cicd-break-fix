PROJECT=${1:-bad-code}
oc new-project $PROJECT
oc project $PROJECT
oc create -f bad-jenkins.yaml
oc expose svc jenkins
oc create -f nodejs-sample-pipeline.yaml 
