./stop-en-remove-container.sh
docker image build --no-cache -t opdr7image:v1 .
docker container run -dt -p81:80 --name opdr7container opdr7image:v1
