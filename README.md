# educational-bank
Implementation of basic financial bank workflows for young future savers to get the banking experience.


## Docker build

docker build -t rails-toolbox --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) -f Dockerfile.rails .

echo $GID
echo $UID

https://dev.to/itnext/setting-up-ruby-on-rails-with-docker-and-mysql-3mpc

docker-compose run app rails new . --force --database=mysql --skip-bundle
