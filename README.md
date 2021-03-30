# Github Actions to Upload to Azure Files
This action uses the Azure CLI to upload the selected directory to Azure Files.

## Inputs

### `connection_string`

**Required** The connection string for the storage account.

### `source`

**Required** The directory to upload files from.

### `destination`

**Required** The destination of the upload operation.

### `extra_args`

Extra arguments. Can passing flags like `--pattern` or `--destination-path`

## Example Usage

```
uses: rnakamine/azure-files-upload@v1
with:
  connection_string: ${{ secrets.AZURE_STORAGE_CONNECTION_STRING }}
  source: .
  destination: my-share
```
