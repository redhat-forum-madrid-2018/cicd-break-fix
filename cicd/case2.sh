PROJECT=${1:-bad-code2}
oc new-project $PROJECT
oc project $PROJECT
oc create -f nodejs-sample-pipeline-broken.yaml 
