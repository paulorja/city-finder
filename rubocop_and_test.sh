# !/bin/bash 

docker-compose run web bash -c "rubocop && rspec"
