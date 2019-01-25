# Passo 1 -> definir imagem base
FROM node:10-alpine

# Passo 2 -> copiar arquivos para dentro do container
ADD . /src

# Passo 3 -> definir onde os comandos serão executados
WORKDIR /src

# Passo 4 -> instalar dependências globais do projeto
RUN npm i -g typescript

# Passo 5 -> restaurar as dependências do projeto
RUN npm install

# Passo 6 -> compilar o projeto
RUN npm run build

# Passo 7 -> Rodar o projeto (CMD -> pode ser substituido na execução)
CMD npm start
