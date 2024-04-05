Write-Host "Uploading system prompts"
az storage container create --account-name ${env:AZURE_STORAGE_ACCOUNT_NAME} --name "system-prompt" --only-show-errors
az storage azcopy blob upload -c system-prompt --account-name ${env:AZURE_STORAGE_ACCOUNT_NAME} -s "../SystemPrompts/*" --recursive --only-show-errors

az storage container create --account-name ${env:AZURE_STORAGE_ACCOUNT_NAME} --name "memory-source" --only-show-errors
az storage azcopy blob upload -c memory-source --account-name ${env:AZURE_STORAGE_ACCOUNT_NAME} -s "../MemorySources/*.json" --recursive --only-show-errors

az storage container create --account-name ${env:AZURE_STORAGE_ACCOUNT_NAME} --name "product-policy" --only-show-errors
az storage azcopy blob upload -c product-policy --account-name ${env:AZURE_STORAGE_ACCOUNT_NAME} -s "../MemorySources/*.txt" --recursive --only-show-errors
