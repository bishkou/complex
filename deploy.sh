docker build -t chedyhm/multi-client -f ./client/Dockerfile .client
docker build -t chedyhm/multi-server -f ./server/Dockerfile .server
docker build -t chedyhm/multi-worker -f ./worker/Dockerfile .worker
docker push chedyhm/multi-client
docker push chedyhm/multi-server
docker push chedyhm/multi-worker
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=chedyhm/multi-server
