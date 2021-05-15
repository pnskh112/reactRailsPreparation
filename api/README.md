# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# USAGE

```bash
$ docker-compose run api rails new . --force --no-deps --database=postgresql --api
$ docker-compose build
$ docker-compose run --rm front sh -c "npm install -g create-react-app && create-react-app react-sample"
$ docker-compose up
$ docker-compose run api rake db:create
$ docker-compose run api rake db:migrate
```
