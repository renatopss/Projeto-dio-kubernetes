echo " Criando as Imagens..."

docker build - t kiitachi/projeto-backend:1.0 back/.
docker build - t kiitachi/projeto-database:1.0 db/.

echo "realizando o push das imagens..."

docker push kiitachi/projeto-back:1.0
docker push kiitachi/projeto-db:1.0

echo " Criando serviços no cluster kubernetes..."

kubectl apply -f ./services.yml

echo "Criando os deployments ..."

kubectl apply -f ./deplyment.yml
