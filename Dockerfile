FROM mcr.microsoft.com/azure-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT {"/entrypoint.sh"}
