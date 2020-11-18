MSI=$(az aks show -n clu-gitops -g rg-gitops-demo | jq .identityProfile.kubeletidentity.objectId -r)
az keyvault set-policy --name gebakv --object-id $MSI --secret-permissions get
