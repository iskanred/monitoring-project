# monitoring-project
> Innopolis University DevOps project with configuring monitoring of the K8S cluster inside Yandex Cloud.

## 📝 Project Description

Our project configures comprehensive monitoring of an infrastructure inside
the Kubernetes cluster in the Yandex Cloud.

### ⚙️ Tools Used

#### Configuration
- [Kubernetes](https://kubernetes.io/): Container orchestration platform for deploying, scaling, and managing applications.
- [Yandex Cloud](https://yandex.cloud/en): Cloud platform providing managed Kubernetes services and other infrastructure solutions.
    - Yandex Managed K8S
    - Yandex Managed Prometheus (including custom `kube-prometheus-stack` helm chart)
    - Yandex Load Balancer (including custom `ingress-nginx` helm chart)
- [Helm](https://helm.sh/):  Package manager for Kubernetes to automate deployments.

#### Tools
- [Prometheus](https://prometheus.io/): Collects and stores time-series data for monitoring.
- [Grafana](https://grafana.com/): Visualization tool for building dashboards from Prometheus metrics.
- [Telegram](https://telegram.org/): Used for real-time alerts and notifications.  
- [kube-prometheus-stack](https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack): Helm chart provided by Yandex Cloud for seamless integration with Yandex Managed Prometheus.
- [ingress-nginx](https://kubernetes.github.io/ingress-nginx/): Used for managing access to services within the Kubernetes cluster.

### 📦 Architecture

insert picture

## 📕 Runbook

on Iskander

## 📧 Contacts

| Name             | E-mail                         |
|------------------|--------------------------------|
| Iskander Nafikov | i.nafikov@innopolis.university |
| Mohamad Bahja    | m.bahja@innopolis.university   |
| Jacob Acor       | j.acor@innopolis.university    |
