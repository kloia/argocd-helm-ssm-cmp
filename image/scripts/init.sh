echo "Initializing..."

# FIXME: Does not test for multiple "values-file-path" parameters existing
if echo "$ARGOCD_APP_PARAMETERS" | jq -cer '.[] | select(.name == "values-file-path").string' >dev/null 2>&1; then
  VALUES_FILE_PATH=$(echo "$ARGOCD_APP_PARAMETERS" | jq -cer '.[] | select(.name == "values-file-path").string')
  echo "Values file explicitly defined as: $ARGOCD_APP_PARAMETERS"
else
  VALUES_FILE_PATH="values.yaml"
  echo "Using default values file $VALUES_FILE_PATH"
fi

helm ssm -f $VALUES_FILE_PATH
