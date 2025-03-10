#!/bin/zsh

# == Fulfillment Helm values flags ==
export VALUES_DIR="./helm-values/kube-prometheus-stack"
VALUES_FLAGS="$(./helm-scripts/get_values_files.sh)"

# == Starting ==
echo "Helm release '$KUBE_PROMETHEUS_RELEASE_NAME' inside the namespace '$MONITORING_NAMESPACE_NAME' is started installing..."

# == Command ==
# helm install [RELEASE] [CHART] flags

HELM_COMMAND="
helm install $KUBE_PROMETHEUS_RELEASE_NAME ./helm-charts/kube-prometheus-stack \
  --namespace=$MONITORING_NAMESPACE_NAME \
  --set prometheusWorkspaceId=$PROMETHEUS_WORKSPACE_ID \
  --set iam_api_key_value_generated.secretAccessKey=$PROMETHEUS_SECRET_API_ACCESS_KEY \
  $VALUES_FLAGS
"

echo "$HELM_COMMAND"
eval "$HELM_COMMAND"

# == Finishing ==
kubectl --namespace monitoring get pods -l "release=$KUBE_PROMETHEUS_RELEASE_NAME"
