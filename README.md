# Helm SSM Plugin for ArgoCD

An ArgoCD plugin for running [Helm SSM](https://github.com/codacy/helm-ssm) on `values.yaml` before deployment.

> ⚠️ WARNING: This plugin is a **work-in-progress** and not entirely documented 

## Project Progress:

- [ ] PoC
  - [ ] init script
  - [ ] generate script
  - [ ] essential parameters
- [ ] Helm Functionality Coverage
  - [ ] Remote Helm Charts
  - [ ] Credentials?
  - [ ] ArgoCD Application inlined values
  - [ ] `helm template`
    - [ ] `--create-namespace`, may not be necessary
    - [ ] `--include-crds`
    - [ ] multiple `--values`
- [ ] Documentation
  - [ ] Plugin registration
    - [ ] with Kustomize
    - [ ] with Helm
  - [ ] AWS SSM connection
    - [ ] AWS EKS
    - [ ] External
  - [ ] Example usage and manifests
- [ ] Tests
- [ ] Plugin Versioning and CI/CD
  - [ ] Image binaries version bumps (debian, helm, jq etc.)
  - [ ] Helm SSM version bumps
  - [ ] Plugin spec updates
- [ ] Ready to use Kustomize Component for plugin registration
