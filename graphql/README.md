-- para criar um módulo go utiliza-se: go mod init nome-do-repositório-ou-url;

-- para criar o arquivo de tools do gqlgen utiliza-se: printf '// +build tools\npackage tools\nimport (_ "github.com/99designs/gqlgen"\n _ "github.com/99designs/gqlgen/graphql/introspection")' | gofmt > tools.go

-- para atualizar as dependências do projeto utiliza-se: go mod tidy;

-- para executar o script de criação da aplicação inicial do gqlgen utiliza-se: go run github.com/99designs/gqlgen init

-- para atualizar a aplicação do gqlgen utiliza-se: go run github.com/99designs/gqlgen generate

-- para iniciar o servidor de grapghql utiliza-se: go run server.go
