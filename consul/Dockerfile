# definindo a imagem base
FROM consul:1.10

# criando as pastas necessárias
RUN mkdir /etc/consul.d && mkdir /var/lib/consul

# instalando o bind-tools
RUN apk -U add bind-tools

# instalando o tcpdump
RUN apk add tcpdump