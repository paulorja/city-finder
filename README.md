# CITY FINDER

The api is running on:
heroku-url

## Dependencies
* docker
* docker-compose

## Install
```shell
./install.sh
```

## Start
```shell
./start.sh
```

## Rubocop && Tests
```shell
./rubocop_and_test.sh
```

## Rails commands
```
docker-compose run web rails db:migrate
docker-compose run web rails g model city
docker-compose run web rails console
```
