resource "helm_release" "this" {
  name       = "prometheus-community"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "prometheus-community"
  namespace  = "prometheus"
}