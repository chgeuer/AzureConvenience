

My own little bootstrap code ``http://aka.ms/bootstrap`` to get my preferred bits onto a new VM. For details, see my blog article: http://blog.geuer-pollmann.de/blog/2015/02/20/getting-your-favority-tools-onto-your-azure-vm/


```

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "((new-object net.webclient).DownloadFile('https://raw.githubusercontent.com/chgeuer/AzureConvenience/master/AzureConvenience.cmd', 'AzureConvenience.cmd'))" && call AzureConvenience.cmd
```




@powershell -NoProfile -ExecutionPolicy unrestricted -Command "((new-object net.webclient).DownloadFile('https://raw.githubusercontent.com/chgeuer/AzureConvenience/master/AzureConvenience.cmd', 'AzureConvenience.cmd'))" && call AzureConvenience.cmd


