# definindo a imagem base
FROM consul:1.10

# definindo a pasta de trabalho a ser criada e focada no acesso
# WORKDIR /usr/src/app

# instalando o bind-tools
RUN apk -U add bind-tools

# criando as pastas necessárias
RUN mkdir /etc/consul.d && mkdir /var/lib/consul

# ENV DOCKERIZE_VERSION v0.6.1
# RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    # && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    # && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

# expondo a porta para acesso de outros containers
# EXPOSE 3000