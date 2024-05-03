# DataSnap
 Exemplo de conexão simples com DataSnap.
 
### ⚡️ Conexão: Use os componentes abaixo com as propriedades informadas.
1. SQLConnection: <br/>
Driver: Firebird <br/>
LoginPrompt: False <br/>

2. SQLDataSet: <br/>
SQLConnection: SQLConnection <br/>
CommandText: 'Select * from ...' <br/>

3. DataSetProvider: <br/>
DataSet: SQLDataSet <br/>

4. ClientDataSet: <br/>
ProviderNane: DataSetProvider <br/>

5. DataSource: <br/>
DataSet: ClientDataSet
#

### ⚡️ Com o comando abaixo será atualizado as informações no Banco de Dados após você efetuar o "post". 
```Delphi
procedure TFrmPrincipal.ClientDataSetAfterPost(DataSet: TDataSet);
begin
  ClientDataSet.ApplyUpdates(-1);
end;
```
<img align="Grud" alt="redis.windows.conf" height="200" width="400" src="https://github.com/amancio10/Ex-DataSnap/assets/48102777/647c3e01-7d0b-4a31-8918-51fcfdfd856d">
