export INGRESS_GATEWAY=$(oc4 get route -n user1-smcp istio-ingressgateway -o 'jsonpath={.spec.host}')
while :; do curl http://${INGRESS_GATEWAY} ; done
