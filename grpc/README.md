para criar um módulo go utiliza-se: go mod init nome-do-repositório-ou-url;

para atualizar as dependências do projeto uriliza-se: go mod tidy;

para criar os arquivos do serviço a partir do proto utiliza-se: protoc --go_out=. --go-grpc_out=. caminho-do-proto;

alguns comandos do cliente evans:
    - conectar na porta 50051: evans -t repl;
    - selecionar serviço: service nome-do-serviço;
    - iniciar a chamada: call nome-do-recurso
    - para encerrar o stream de requests/responses aperta ctrl+d;
    - encerrar o cliente: exit;



