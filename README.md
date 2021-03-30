# Github Actions to Upload to Azure Files
![test](https://github.com/rnakamine/azure-files-upload/workflows/Test/badge.svg)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

This action uses the Azure CLI to upload the selected directory to Azure Files.

## Inputs

|Input|Required|Default|Description|
|---|---|---|---|
|connection_string|Yes|-|The connection string for the storage account.|
|source|Yes|-|The directory to upload files from.|
|destination|Yes|-|The destination of the upload operation.|
|extra_args|No|-|Extra arguments. Can passing flags like `--pattern` or `--destination-path`|

## Example Usage

```yaml
uses: rnakamine/azure-files-upload@v1
with:
  connection_string: ${{ secrets.AZURE_STORAGE_CONNECTION_STRING }}
  source: .
  destination: my-share
```
