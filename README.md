# README

The docker file sets the default RACK_ENV=development

To run in production, rails requires the "SECRET_KEY_BASE" to be set in the environment.

You can generate this with `$ rails secret`

Then before running docker compose, set your environment variables

export SECRET_KEY_BASE=<secret_key_base_value>
export RACK_ENV=production

To build the image run `$ docker-compose build`

To run the application run `$ docker-compose up`

To run in detach mode run `$ docker-compose up -d`

On first up, you'll need to migrate the database with

`$ docker-compose run web rails db:migrate`

If you have trouble with this, you can also enter the container and run the migration.

`$ docker exec -it railsannotationserver_web_1 bash`

`$ bin/rails db:migrate`
