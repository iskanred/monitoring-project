#!/bin/zsh

COMPILED_CHART_FILE_NAME="ingress-nginx-compiled-chart.yaml"

echo "Helm release '$INGRESS_CONTROLLER_RELEASE_NAME' inside the namespace '$MONITORING_NAMESPACE_NAME' is started installing..."

# helm template [RELEASE] [CHART] flags

helm template "$INGRESS_CONTROLLER_RELEASE_NAME" ./helm-charts/ingress-nginx \
  --namespace="$MONITORING_NAMESPACE_NAME" \
  --values ./helm-values/ingress-nginx/* \
  > "$COMPILED_CHART_FILE_NAME"

echo "Helm release '$INGRESS_CONTROLLER_RELEASE_NAME' inside the namespace '$MONITORING_NAMESPACE_NAME' was templated to the file '$COMPILED_CHART_FILE_NAME'"
