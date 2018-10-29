PROJECT=${1:-bad-code3}
oc new-project $PROJECT
oc project $PROJECT
oc new-app jenkins-ephemeral
oc create -f nodejs-sample-pipeline-broken.yaml 
oc delete sa jenkins
oc rollout latest jenkins
