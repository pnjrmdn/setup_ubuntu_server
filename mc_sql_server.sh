## install Microsoft SQL

docker run -d --name sql_server -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=pnjrmdn' -e 'MSSQL_USER=pnjrmdn' -e 'MSSQL_PASSWORD=Your_Custom_Password' -p 1433:1433 mcr.microsoft.com/mssql/server:2019-latest


## 
