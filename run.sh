# GitUrl="https://github.com/guoxiangke/lyaudio.git"

# cd ./public-html
# if [ -d .git ]; then
#     sudo git checkout .
#     sudo git fetch
#     sudo git pull
#   sudo git pull origin $GitBranch
# else
#   cd ../
#   rm ./public-html -rf
#   git clone $GitUrl ./public-html

# fi;

# cd ../
docker build -t guoxiangke/docker_bbn  --no-cache  .
docker rm -vf docker_bbn
docker run -d -P --name docker_bbn  --restart=always guoxiangke/docker_bbn
