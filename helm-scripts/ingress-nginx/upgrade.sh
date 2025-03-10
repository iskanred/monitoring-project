#!/bin/zsh

echo "Helm release '$INGRESS_CONTROLLER_RELEASE_NAME' inside the namespace '$MONITORING_NAMESPACE_NAME' is started upgrading..."

# helm install [RELEASE] [CHART] flags

helm upgrade "$INGRESS_CONTROLLER_RELEASE_NAME" ./helm-charts/ingress-nginx \
  --namespace="$MONITORING_NAMESPACE_NAME" \
  --values ./helm-values/ingress-nginx/*

kubectl --namespace monitoring get pods -l "release=$INGRESS_CONTROLLER_RELEASE_NAME"
