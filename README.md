# Github Actions to Upload to Azure Files

![test](https://github.com/rnakamine/azure-files-upload/workflows/test/badge.svg)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

This action uses the Azure CLI to upload the selected directory to Azure Files.

[Azure Files documentation \| Microsoft Docs](https://docs.microsoft.com/en-us/azure/storage/files/)

## Inputs

|Input|Required|Default|Description|
|---|---|---|---|
|connection_string|Yes|-|The connection string for the storage account.|
|source|Yes|-|The directory to upload files from.|
|destination|Yes|-|The destination of the upload operation.|
|extra_args|No|-|Extra arguments. Can passing flags like `--pattern` or `--destination-path`. [Optional Parameters](https://docs.microsoft.com/en-us/cli/azure/storage/file?view=azure-cli-latest#az_storage_file_upload_batch-optional-parameters)|

## Example Usage

```yaml
uses: rnakamine/azure-files-upload@v1.0.0
with:
  connection_string: ${{ secrets.AZURE_STORAGE_CONNECTION_STRING }}
  source: .
  destination: my-share
```
