# docker build -t guoxiangke/docker_bbn  --no-cache  .
# docker rm -vf docker_bbn
# docker run -d -P --name docker_bbn  --restart=always guoxiangke/docker_bbn
docker-compose -p bbn -f ./docker-compose.yml up -d  --build --remove-orphans --force-recreate