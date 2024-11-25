# Passo 1: Verifique se o Docker está instalado e funcionando
docker --version

# Passo 2: Confirme se o serviço do Docker está ativo (no Linux)
# (Ignore este passo se estiver usando Windows ou Mac)
sudo systemctl status docker

# Passo 3: Baixe e execute a imagem oficial do Docker "hello-world"
docker run hello-world

# Passo 4: Liste os contêineres para verificar a execução do hello-world
docker ps -a

# Passo 5: Opcionalmente, remova o contêiner criado após o teste
docker rm $(docker ps -aq)

# Passo 6: Opcionalmente, remova a imagem do hello-world para liberar espaço
docker rmi hello-world
