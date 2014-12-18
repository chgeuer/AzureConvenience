
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/chgeuer/AzureConvenience/master/AzureConvenience.cmd', 'AzureConvenience.cmd')" && call AzureConvenience.cmd
