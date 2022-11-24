# GNU/Linux Ubuntu Docker Image

Docker Image para desenvolvimento, testes e estudos em ambientes Linux

## Instruções de Uso

### Montando a imagem

Certifique-se de estar no mesmo diretório onde esta o Dockerfile e execute:

```bash
docker build --tag joshuawebdev/ubuntu .
```

### Criando e Executando o Container

Após fazer o build da imagem, crie e execute o container com o comando a seguir

```bash
docker run -it --name ubuntu joshuawebdev/ubuntu
```

| **Se desejar, pode alterar o nome do container (definido após a opção --name) para outro nome**

Após sair do container, é possível acessá-lo novamente digitando:

```bash
docker exec -it ubuntu bash
```

| **Se você alterou o nome do container no comando anterior, substitua ubuntu pela nome do container que você criou. O mesmo vale para os comando a seguir**

Caso o container não esteja sendo executado é neccessário digitar o comando a seguir para acessá-lo:

```bash
docker container start ubuntu
```

E em seguida

```bash
docker exec -it ubuntu bash
```

## Personalizando a Imagem

### Alterando a versão da Imagem

Você pode alterar a versão da imagem alterando a tag. Exemplo: caso queira uttilizar o Ubuntu 16.04, altere o argumento TAG_NAME conforme exemplo abaixo:

```bash
ARG TAG_NAME=16.04
```

Ou pode usar o codenome da versão, por exemplo, o codenome da versão 16.04 é Xenial.

```bash
ARG TAG_NAME=xenial
```

| **Para saber mais sobre os tipos de tags suportadas acesse https://hub.docker.com/_/ubuntu/tags**

### Alterando o usuário

Por padrão, está definido no Dockerfile que será criado um usuário chamado joshua e um diretório com mesmo nome no container, porém, se desejar é possível alterar o nome do usuário e, consequentemente, o nome do diretório padrão, alterando o argumento USER. Exemplo:

```bash
ARG USER=johndoe
```