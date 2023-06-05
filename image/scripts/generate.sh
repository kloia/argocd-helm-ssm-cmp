# FIXME: Duplicated from init.sh, there could be a better way
# maybe helm ssm can be just used to output to stdout instead of modifying the file?
if echo "$ARGOCD_APP_PARAMETERS" | jq -cer '.[] | select(.name == "values-file-path").string' >dev/null 2>&1; then
  VALUES_FILE_PATH=$(echo "$ARGOCD_APP_PARAMETERS" | jq -cer '.[] | select(.name == "values-file-path").string')
else
  VALUES_FILE_PATH="values.yaml"
fi

# TODO: Support for multiple values
helm template "$ARGOCD_APP_NAME" . -f $VALUES_FILE_PATH