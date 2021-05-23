# USAGE
```
<!-- $ docker-compose run api rails new . --force --no-deps --database=postgresql --api -->
$ docker-compose run api rails new uber-eats-like --force --no-deps --database=postgresql --api
$ docker-compose build
$ docker-compose run --rm front sh -c "cd frontend/ ; npm install -g create-react-app && create-react-app frontend"
$ docker-compose up
$ docker-compose run api rake db:create
$ docker-compose run api rake db:migrate
```
