# Trybe EKS Rollback
Esta GitHub Action é utilizada para fazer rollback de aplicações em Elastic Kubernetes Service (EKS).

```yaml
- name: Rollback Application
  uses: betrybe/trybe-eks-rollback@main
  with:
    clusterName: ${{ secrets.EKS_CLUSTER_STAGING }}  # obrigatório
    awsRegion: ${{ secrets.EKS_REGION }}  # obrigatório
    timeout: "120s"  # opcional
```
