# Passo 1: Verifique se o Docker está instalado
docker --version

# Passo 2: Certifique-se de que o serviço Docker está ativo (Linux)
# Ignore este passo no Windows ou Mac
sudo systemctl start docker

# Passo 3: Baixe e execute a imagem oficial do Nginx
docker run --name nginx-test -d -p 8080:80 nginx

# Passo 4: Verifique se o contêiner está rodando
docker ps

# Passo 5: Teste acessando o Nginx no navegador ou com curl
curl http://localhost:8080

# Passo 6: Verifique os logs do contêiner para confirmar a atividade
docker logs nginx-test

# Passo 7: Opcionalmente, acesse o terminal do contêiner
docker exec -it nginx-test bash

# Passo 8: Para parar e remover o contêiner e a imagem
docker stop nginx-test
docker rm nginx-test
docker rmi nginx
