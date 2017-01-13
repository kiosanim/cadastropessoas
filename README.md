#Serviço REST criado para POG API GW 
The project is generated by [LoopBack](http://loopback.io).

#Precisa de um BD Postgres e uma tabela conforme abaixo:

create table pessoa(
id serial,
uid varchar(50),
nome varchar(50),
obs varchar(255),
constraint pk_pessoa primary key(id))

#Para instalar as dependências do node

npm install

Para Rodar

npm start

#Api Explorer

http://0.0.0.0:3000/explorer

#Para compilar a imagem: 
docker build --build-arg PROXY="http://HOST_DO_PROXY:3128" -t apigw-rest-svc:latest .

#Para executar o container:
docker run -p 3000:3000 -e PG_HOST=NOME_HOST -e PG_PORT=5432 -e PG_DBNAME=NOME_BD -e PG_USER=USER_BD -e PG_PWD=PWD --entrypoint="/usr/src/app/start.sh" apigw-rest-svc:latest
