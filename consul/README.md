-- para subir o consul em modo dev utiliza-se: consul agent -dev;

-- para subir o consul em modo server utiliza-se: consul agent -server -bootstrap-expect=<número-de-servidores-a-serem-considerados> -node=<hostname> -bind=<ip-do-host> -data-dir=<path-da-pasta-de-dados> -config-dir=<path-da-pasta-de-configurações>;
>Exemplo: consul agent -server -bootstrap-expect=3 -node=consulserver01 -bind=172.25.0.2 -data-dir=/var/lib/consul -config-dir=/etc/consul.d;

-- para parear dois agentes utiliza-se: consul join <ip-do-agente-remoto>;

-- para listar os nós existentes utiliza-se: consul members;

-- para o catálogo do consul utiliza-se: curl localhost:8500/v1/catalog/nodes;

-- para realizar consultas de nós via DNS utiliza-se: dig @localhost -p 8600 <nome-do-nó>.node.consul;

-- para realizar consultas de nós via DNS, retornando somente os IP, utiliza-se: dig @localhost -p 8600 <nome-do-nó>.node.consul +short;
