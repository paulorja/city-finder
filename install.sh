# !/bin/bash

docker-compose build
docker-compose run web rails db:create db:migrate db:seed
docker-compose run web gem install rspec
