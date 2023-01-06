-- para subir o consul em modo dev utiliza-se: consul agent -dev;

-- para subir o consul em modo server utiliza-se: consul agent -server -bootstrap-expect=<número-de-servidores-a-serem-considerados> -node=<hostname> -bind=<ip-do-host> -data-dir=<path-da-pasta-de-dados> -config-dir=<path-da-pasta-de-configurações>;

> Exemplo: consul agent -server -bootstrap-expect=3 -node=consulserver01 -bind=172.20.0.2 -data-dir=/var/lib/consul -config-dir=/etc/consul.d;

-- para subir o consul em modo client utiliza-se: consul agent -node=<hostname> -bind=<ip-do-host> -data-dir=<path-da-pasta-de-dados> -config-dir=<path-da-pasta-de-configurações>;

> Exemplo: consul agent -node=consulclient02 -bind=172.20.0.6 -data-dir=/var/lib/consul -config-dir=/etc/consul.d;

-- para subir o consul a pertir do json de configuração utiliza-se: consul agent -config-dir=<path-da-pasta-do-arquivo-json>;

-- para subir o consul com join automático utiliza-se o parâmetro adicional: -retry-join=<ip-do-consul-server>;

-- para parear dois agentes utiliza-se: consul join <ip-do-agente-remoto>;

-- recarregar as configurações presentes no service.json utiliza-se: consul reload triggered;

-- para listar os nós existentes utiliza-se: consul members;

-- para consultar detalhes do nós utiliza-se: consul catalog nodes -detailed;

-- para consultar serviços por nó utiliza-se: consul catalog nodes -service <nome-do-serviço>;

-- para consultar nós no catálogo do consul utiliza-se: curl localhost:8500/v1/catalog/nodes;

-- para consultar serviços no catálogo do consul utiliza-se: curl localhost:8500/v1/catalog/services;

-- para realizar consultas de nós via DNS utiliza-se: dig @localhost -p 8600 <nome-do-nó>.node.consul;

-- para realizar consultas de nós via DNS, retornando somente os IP, utiliza-se: dig @localhost -p 8600 <nome-do-nó>.node.consul +short;

-- para realizar consultas de serviços ativos via DNS utiliza-se: dig @localhost -p 8600 <nome-do-serviço>.service.consul;

-- para realizar consultas de serviços ativos via DNS, retornando somente os IP, utiliza-se: dig @localhost -p 8600 <nome-do-serviço>.service.consul +short;

-- para realizar consultas de tags de serviços via DNS utiliza-se: dig @localhost -p 8600 <nome-da-tag>.<nome-do-serviço>.service.consul;

-- para realizar consultas de tags de serviços via DNS, retornando somente os IP, utiliza-se: dig @localhost -p 8600 <nome-da-tag>.<nome-do-serviço>.service.consul +short;

-- o registro dos serviços deve ser feito no services.json, bem como as regras de health-checks;

-- para gerar uma chave de criptografia do consul utiliza-se: consul keygen;

-- para acessar a interface gráfica web de administração deve-se habilitar/configurar esta opção no json e acessar via localhost:8500/ui;
